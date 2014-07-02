package components.DataGridExtend
{
	import flash.display.DisplayObject;
	import flash.geom.Point;
	import flash.utils.ByteArray;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.core.DragSource;
	import mx.core.IFactory;
	import mx.core.IFlexDisplayObject;
	import mx.events.DragEvent;
	import mx.managers.DragManager;
	
	import spark.components.DataGrid;
	import spark.components.Group;
	import spark.components.gridClasses.CellPosition;
	import spark.components.gridClasses.GridColumn;
	import spark.components.gridClasses.IGridItemRenderer;
	import spark.events.GridEvent;
	
	import components.DataGridExtend.skins.ColumnDropIndicator;
	import components.DataGridExtend.skins.RowDropIndicator;
	
	public class DataGridExtend extends DataGrid
	{
		public function DataGridExtend()
		{
			super();
			dataProvider = new ArrayCollection();
			addEventListener(GridEvent.GRID_MOUSE_DRAG, startDragDrop);
		}
		
		//可接受拖拽数据的DataGridExtend对象集合
		public var acceptList:Vector.<DataGridExtend> = new Vector.<DataGridExtend>();
		
		private var dropIndex:int;
		
		private var dropIndicators:DisplayObject;
		
		private var _dragEnabled:Boolean = false;
		
		[Inspectable(defaultValue="false")]
		
		override public function get dragEnabled():Boolean
		{
			return _dragEnabled;
		}
		
		/**
		 * 得到数据索引
		 * @return 
		 * 
		 */		
		public function get dataIndex():int
		{
			//选中目录时，添加新行在选中行的下一行，没有选中目录时，默认添加在最后一行
			return selectedIndex<0 ? dataProvider.length : selectedIndex+1;
		}
		
		override public function set dragEnabled(value:Boolean):void
		{
			if (value == _dragEnabled)
				return;
			_dragEnabled = value;
			if(_dragEnabled)
			{
				addEventListener(DragEvent.DRAG_COMPLETE, dragCompleteHandler);	
			}
			else
			{
				removeEventListener(DragEvent.DRAG_COMPLETE, dragCompleteHandler);	
			}
		}
		
		private var _dragMoveEnabled:Boolean = false;
		
		[Inspectable(defaultValue="false")]
		
		override public function get dragMoveEnabled():Boolean
		{
			return _dragMoveEnabled;
		}
		
		override public function set dragMoveEnabled(value:Boolean):void
		{
			_dragMoveEnabled = value;
		}
		
		private var _dropEnabled:Boolean = false;
		
		[Inspectable(defaultValue="false")]
		
		override public function get dropEnabled():Boolean
		{
			return _dropEnabled;
		}
		
		override public function set dropEnabled(value:Boolean):void
		{
			if (value == _dropEnabled)
				return;
			_dropEnabled = value;
			if(_dropEnabled)
				addEventListener(DragEvent.DRAG_ENTER, dragEnterHandler);
			else
				removeEventListener(DragEvent.DRAG_ENTER, dragEnterHandler);
		}
		
		private var _draggableColumns:Boolean = false;
		
		[Inspectable(defaultValue="false")]
		
		override public function get draggableColumns():Boolean
		{
			return _draggableColumns;
		}
		
		override public function set draggableColumns(value:Boolean):void
		{
			_draggableColumns = value;
		}
		
		private var _dragSelect:Object;
		private function startDragDrop(event:GridEvent):void
		{
			if (DragManager.isDragging)
				return;
			
			if (event.rowIndex == -1 && event.itemRenderer)
			{
				// dragging headers
				startColumnDragDrop(event);
			}else{
				_dragSelect = selectedItem;
				startRowDragDrop(event);
			}
		}
		
		private var dragColumn:GridColumn;
		
		protected function startColumnDragDrop(event:GridEvent):void
		{
			if(!(draggableColumns))
			{
				return;
			}
			
			dragColumn = event.column;
			var ds:DragSource = new DragSource();
			ds.addData(dragColumn, "spark.components.gridClasses.GridColumn");
			var factory:IFactory = dragColumn.headerRenderer;
			if (!factory)
				factory = columnHeaderGroup.headerRenderer;
			var renderer:IGridItemRenderer = IGridItemRenderer(factory.newInstance());
			renderer.visible = true;
			renderer.column = dragColumn;
			renderer.label = dragColumn.headerText;
			var currentRenderer:IGridItemRenderer = columnHeaderGroup.getHeaderRendererAt(event.columnIndex);
			renderer.width = currentRenderer.width;
			renderer.height = currentRenderer.height;
			renderer.x = currentRenderer.x;
			renderer.y = currentRenderer.y;
			renderer.prepare(false);
			DragManager.doDrag(this, ds, event, renderer as IFlexDisplayObject);
			renderer.owner = this;
			columnHeaderGroup.addEventListener(DragEvent.DRAG_ENTER, columnDragEnterHandler)
			columnHeaderGroup.addEventListener(DragEvent.DRAG_COMPLETE, columnDragCompleteHandler);
		}
		
		protected function columnDragEnterHandler(event:DragEvent):void
		{
			if (event.dragSource.hasFormat("spark.components.gridClasses.GridColumn"))
			{
				columnHeaderGroup.addEventListener(DragEvent.DRAG_OVER, columnDragOverHandler);
				columnHeaderGroup.addEventListener(DragEvent.DRAG_EXIT, columnDragExitHandler);
				columnHeaderGroup.addEventListener(DragEvent.DRAG_DROP, columnDragDropHandler);
				showColumnDropFeedback(event);
				DragManager.acceptDragDrop(columnHeaderGroup);
			}
		}
		
		protected function columnDragOverHandler(event:DragEvent):void
		{
			if (event.dragSource.hasFormat("spark.components.gridClasses.GridColumn"))
			{
				showColumnDropFeedback(event);
				DragManager.acceptDragDrop(columnHeaderGroup);
			}
		}
		
		protected function columnDragExitHandler(event:DragEvent):void
		{
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_OVER, columnDragOverHandler);
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_EXIT, columnDragExitHandler);
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_DROP, columnDragDropHandler);
			cleanUpDropIndicator();
		}
		
		private function columnDragDropHandler(event:DragEvent):void
		{
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_OVER, columnDragOverHandler);
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_EXIT, columnDragExitHandler);
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_DROP, columnDragDropHandler);
			dropColumn(event);
		}
		
		private function columnDragCompleteHandler(event:DragEvent):void
		{
			columnHeaderGroup.removeEventListener(DragEvent.DRAG_ENTER, columnDragEnterHandler);
			cleanUpDropIndicator();
		}
		
		
		private function dropColumn(event:DragEvent):void
		{
			if (dropIndex != dragColumn.columnIndex)
			{
				var oldIndex:int = dragColumn.columnIndex;
				columns.removeItemAt(dragColumn.columnIndex);
				if (dropIndex > oldIndex)
					dropIndex--;
				columns.addItemAt(dragColumn, dropIndex);
			}
			cleanUpDropIndicator();
		}
		
		
		private function showColumnDropFeedback(event:DragEvent):void
		{
			var pt:Point = new Point(event.stageX, event.stageY);
			pt = columnHeaderGroup.globalToLocal(pt);
			var newDropIndex:int = columnHeaderGroup.getHeaderIndexAt(pt.x, pt.y);
			if (newDropIndex != -1)
			{
				var renderer:IGridItemRenderer = columnHeaderGroup.getHeaderRendererAt(newDropIndex);
				if (!dropIndicators)
				{
					dropIndicators = new ColumnDropIndicator();
					dropIndicators.height = renderer.height;
					columnHeaderGroup.overlay.addDisplayObject(dropIndicators);
				}
				if (pt.x < renderer.x + renderer.width / 2)
					dropIndicators.x = renderer.x - dropIndicators.width / 2; 
				else
				{
					dropIndicators.x = renderer.x + renderer.width - dropIndicators.width / 2;
					newDropIndex++;
				}
				dropIndex = newDropIndex;
			}
			else
			{
				cleanUpDropIndicator();
			}
		}
		
		/**
		 *  @private
		 */
		private function copySelectedItemsForDragDrop():Vector.<Object>
		{
			// Copy the vector so that we don't modify the original
			// since selectedIndices returns a reference.
			var draggedIndices:Vector.<int> = selectedIndices.slice(0, selectedIndices.length);
			var result:Vector.<Object> = new Vector.<Object>(draggedIndices.length);
			
			// Sort in the order of the data source
			draggedIndices.sort(compareValues);
			
			// Copy the items
			var count:int = draggedIndices.length;
			for (var i:int = 0; i < count; i++)
				result[i] = dataProvider.getItemAt(draggedIndices[i]);  
			return result;
		}
		
		protected function startRowDragDrop(event:GridEvent):void
		{
			if(!dragEnabled)
				return;
			
			var newIndex:int = event.rowIndex;
			
			var ds:DragSource = new DragSource();
			ds.addHandler(copySelectedItemsForDragDrop, "itemsByIndex");
			
			// Calculate the index of the focus item within the vector
			// of ordered items returned for the "itemsByIndex" format.
			var caretIndex:int = 0;
			var draggedIndices:Vector.<int> = selectedIndices;
			var count:int = draggedIndices.length;
			for (var i:int = 0; i < count; i++)
			{
				if (newIndex > draggedIndices[i])
					caretIndex++;
			}
			ds.addData(caretIndex, "caretIndex");
			
			var proxy:Group = new Group();
			proxy.width = grid.width;
			DragManager.doDrag(this, ds, event, proxy as IFlexDisplayObject, 
				0, -rowHeight, 0.5, dragMoveEnabled);
			
			const visibleColumnIndices:Vector.<int> = grid.getVisibleColumnIndices();
			count = visibleColumnIndices.length;
			const visibleRowIndices:Vector.<int> = grid.getVisibleRowIndices();
			//for scrolled renderers
			var rIndex:int = grid.getVisibleRowIndices().indexOf(newIndex);
			for (i = 0; i < count; i++)
			{
				var currentRenderer:IGridItemRenderer = grid.getItemRendererAt(newIndex, visibleColumnIndices[i]);
				var factory:IFactory = columns.getItemAt(i).itemRenderer;
				if (!factory)
					factory = itemRenderer;
				var renderer:IGridItemRenderer = IGridItemRenderer(factory.newInstance());
				renderer.visible = true;
				if(currentRenderer)
				{
					renderer.column = currentRenderer.column;
					renderer.rowIndex = currentRenderer.rowIndex;
					renderer.label = currentRenderer.label;
					renderer.x = currentRenderer.x;
					renderer.y = rIndex  * rowHeight;
					renderer.width = currentRenderer.width;
					renderer.height = currentRenderer.height;
					renderer.prepare(false);
					proxy.addElement(renderer);
					renderer.owner = this;
				}
			}
			proxy.height = renderer.height;
			
		}
		
		override protected function dragEnterHandler(event:DragEvent):void
		{
			if (event.dragSource.hasFormat("itemsByIndex"))
			{
				grid.addEventListener(DragEvent.DRAG_OVER, rowDragOverHandler);
				grid.addEventListener(DragEvent.DRAG_EXIT, rowDragExitHandler);
				grid.addEventListener(DragEvent.DRAG_DROP, rowDragDropHandler);
				showRowDropFeedback(event);
				DragManager.acceptDragDrop(grid);
			}
		}
		
		protected function rowDragOverHandler(event:DragEvent):void
		{
			if (event.dragSource.hasFormat("itemsByIndex"))
			{
				showRowDropFeedback(event);
				DragManager.acceptDragDrop(grid);
			}
		}
		
		protected function rowDragExitHandler(event:DragEvent):void
		{
			grid.removeEventListener(DragEvent.DRAG_OVER, columnDragOverHandler);
			grid.removeEventListener(DragEvent.DRAG_EXIT, columnDragExitHandler);
			grid.removeEventListener(DragEvent.DRAG_DROP, columnDragDropHandler);
			cleanUpRowDropIndicator();
			if(_dragSelect)
			{
				selectedIndex = dataProvider.getItemIndex(_dragSelect);
				dispatchEvent(new DragEvent(DragEvent.DRAG_DROP));
			}
		}
		
		protected function rowDragDropHandler(event:DragEvent):void
		{
			grid.removeEventListener(DragEvent.DRAG_OVER, columnDragOverHandler);
			grid.removeEventListener(DragEvent.DRAG_EXIT, columnDragExitHandler);
			grid.removeEventListener(DragEvent.DRAG_DROP, columnDragDropHandler);
			cleanUpRowDropIndicator();
			var index:int = acceptList.indexOf(event.dragInitiator as DataGridExtend);
			if(index==-1)
			{
				
				if(event.dragInitiator!=this)
					return;
			}
			
			if(_dragSelect)
			{
				selectedIndex = dataProvider.getItemIndex(_dragSelect);
				dispatchEvent(new DragEvent(DragEvent.DRAG_DROP));
			}
			dropRow(event);
		}
		
		override protected function dragCompleteHandler(event:DragEvent):void
		{
			if (event.isDefaultPrevented())
				return;
			// Remove the dragged items only if they were drag moved to
			// a different list. If the items were drag moved to this
			// list, the reordering was already handles in the 
			// DragEvent.DRAG_DROP listener.
			if (event.action != DragManager.MOVE || 
				event.relatedObject == this)
				return;
			
			// Clear the selection, but remember which items were moved
			var movedIndices:Vector.<int> = selectedIndices;
			selectedIndices = new Vector.<int>();
			validateProperties();
			// Remove the moved items
			movedIndices.sort(compareValues);
			var count:int = movedIndices.length;
			for (var i:int = count - 1; i >= 0; i--)
			{
				dataProvider.removeItemAt(movedIndices[i]);
			}  
			dropIndex = 0;
		}
		
		private function showRowDropFeedback(event:DragEvent):void
		{
			DragManager.showFeedback(event.ctrlKey ? DragManager.COPY : DragManager.MOVE);
			var pt:Point = new Point(event.stageX, event.stageY);
			pt = grid.globalToLocal(pt);
			var pos:CellPosition = grid.getCellAt(pt.x, pt.y);
			var newDropIndex:int = pos ? pos.rowIndex : - 1;
			if (newDropIndex != -1)
			{
				var renderer:IGridItemRenderer = grid.getItemRendererAt(pos.rowIndex, pos.columnIndex);
				if (!dropIndicators)
				{
					dropIndicators = new RowDropIndicator();
					dropIndicators.width = width;
					grid.overlay.addDisplayObject(dropIndicators);
				}
				if (pt.y < renderer.y + renderer.height / 2)
					dropIndicators.y = renderer.y - dropIndicators.height / 2; 
				else
				{
					dropIndicators.y = renderer.y + renderer.height - dropIndicators.height / 2;
					newDropIndex++;
				}
				dropIndex = newDropIndex;
			}
			else
			{
				cleanUpRowDropIndicator();
			}
		}
		
		private function dropRow(event:DragEvent):void
		{
			if(event.dragSource.hasFormat("itemsByIndex"))
			{
				var data:Vector.<Object> = event.dragSource.dataForFormat("itemsByIndex") as Vector.<Object>;
				var count:int = data.length;
				var i:int;
				
				if (event.dragInitiator == this)
				{
					for (i = 0; i < count; i++)
					{
						var index:int = dataProvider.getItemIndex(data[i]);
						dataProvider.removeItemAt(index);
						if (index < dropIndex)
							dropIndex--;
					}
				}
				
				if(dataProvider == null)
				{
					dataProvider = new ArrayList();
				}
				
				for (i = 0; i < count; i++)
				{
					dropIndex = dataProviderLength<dropIndex ? dataProviderLength : dropIndex;
					var object:Object = clone(data[i]);
					dataProvider.addItemAt(object, dropIndex++);
				}
			}
			cleanUpRowDropIndicator();
		}
		
		private function clone(object:Object):Object
		{
			var ba:ByteArray=new ByteArray();
			ba.writeObject(object);
			ba.position=0;
			
			return ba.readObject();;
		}
		
		private function cleanUpDropIndicator():void
		{
			if (dropIndicators)
			{
				dropIndex == -1;
				if( columnHeaderGroup.overlay.numDisplayObjects > 0)
				{
					columnHeaderGroup.overlay.removeDisplayObject(dropIndicators);
					dropIndicators = null;
				}
			}
		}
		
		private function cleanUpRowDropIndicator():void
		{
			if (dropIndicators)
			{
				dropIndex == -1;
				if(grid.overlay.numDisplayObjects > 0)
				{
					grid.overlay.removeDisplayObject(dropIndicators);
					dropIndicators = null;
				}
			}
		}
		
		/**
		 *  @private
		 *  Used to sort the selected indices during drag and drop operations.
		 */
		private function compareValues(a:int, b:int):int
		{
			return a - b;
		} 
	}
}