package components.DataGridCheckBox
{
	import flash.utils.Dictionary;
	
	import mx.events.CollectionEvent;
	import mx.events.FlexEvent;
	
	import components.DataGridCheckBox.skins.CheckBoxHeaderItemRenderer;
	import components.DataGridExtend.DataGridExtend;
	
	/**
	 * Header带有checkbox的DataGrid
	 * 1.点击Header的checkbox可以全选
	 * 2.调用removeSelected可以删除checkbox选中的项
	 * @author Liuxin
	 * 
	 */	
	public class DataGridCheckBox extends DataGridExtend
	{
		private const Status:String = "CheckBoxStatus";
		private var _checkboxStatusMap:Dictionary = new Dictionary();
		private var _headerItemRenderer:CheckBoxHeaderItemRenderer;
		
		public function DataGridCheckBox()
		{
			this.addEventListener(FlexEvent.CREATION_COMPLETE,onCreationComplete);
		}
		
		private function onCreationComplete(e:FlexEvent):void
		{
			this.removeEventListener(FlexEvent.CREATION_COMPLETE,onCreationComplete);
			this.dataProvider.addEventListener(CollectionEvent.COLLECTION_CHANGE,onCollectionChange);
		}
		
		private function onCollectionChange(e:CollectionEvent):void
		{
			//全部删除时，总开关关闭
			if(!this.dataProvider.length && _headerItemRenderer.checkbox.selected)
				_headerItemRenderer.checkbox.selected = false;
		}
		
		/**
		 * 初始化时，引用HeaderItemRenderer
		 * @param headerItemRenderer
		 * 
		 */		
		public function initHeaderItemRenderer(headerItemRenderer:CheckBoxHeaderItemRenderer):void
		{
			_headerItemRenderer = headerItemRenderer;
		}
		
		/**
		 * 点击
		 * @param isSelectAll
		 * 
		 */		
		public function selectSwitch(isSelectAll:Boolean):void
		{
			var data:Object;
			for (var i:int = 0; i < this.dataProvider.length; i++) 
			{
				data = this.dataProvider[i];
				data[Status] = isSelectAll;
				this.dataProvider.setItemAt(data,i);
			}
		}
		
		/**
		 * 得到CheckBox的选择状态
		 * @param key
		 * @return 
		 * 
		 */		
		public function getCheckBoxStatus(key:Object):Boolean
		{
			//如果不存在映射，添加默认状态为false
			if(!(key in _checkboxStatusMap))
				_checkboxStatusMap[key] = false;
			return _checkboxStatusMap[key];
		}
		
		/**
		 * 改变状态
		 * @param data
		 * @param status
		 * 
		 */		
		public function changeCheckBoxStatus(data:Object,status:Boolean):void
		{
			var index:int = this.dataProvider.getItemIndex(data);
			data[Status] = status;
			this.dataProvider.setItemAt(data,index);
			//取消Header的checkbox全选状态
			if(_headerItemRenderer.checkbox.selected && !status)
			{
				_headerItemRenderer.checkbox.selected = false;
			}else{
				var isAllSelect:Boolean = true;
				var obj:Object;
				for (var i:int = 0; i < this.dataProvider.length; i++) 
				{
					obj = this.dataProvider[i];
					//如果有没有选中的
					if(!obj[Status])
					{
						isAllSelect = false;
						break;
					}
				}
				if(isAllSelect)
					_headerItemRenderer.checkbox.selected = true;
			}
		}
		
		/**
		 * 代替dataprovider的addItemAt方法
		 * @param data
		 * @param index
		 * 
		 */		
		public function addDataAt(data:Object,index:int):void
		{
			//注入属性
			data[Status] = _headerItemRenderer.checkbox.selected;
			this.dataProvider.addItemAt(data,index);
		}
		
		/**
		 * 代替dataprovider的getItemAt方法
		 * @param index
		 * @return 
		 * 
		 */		
		public function getDataAt(index:int):Object
		{
			var obj:Object = this.dataProvider.getItemAt(index);
			//删除属性
			if(obj.hasOwnProperty(Status))
				delete obj[Status];
			return obj;
		}
		
		/**
		 * 得到所有的选中的数据
		 * @return 
		 * 
		 */		
		public function getSelected():Array
		{
			var arg:Array = [];
			for (var i:int = 0; i < this.dataProvider.length; i++) 
			{
				if(this.dataProvider.getItemAt(i).CheckBoxStatus)
				{
					arg.push(this.dataProvider.getItemAt(i));
				}
			}
			return arg;
		}
		
		/**
		 * 删除选中的记录(dataProvider和CheckBoxItemRenderer)
		 * 
		 */		
		public function removeSelected():void
		{
			var obj:Object;
			for (var i:int = 0; i < this.dataProvider.length; i++) 
			{
				obj = this.dataProvider[i];
				if(obj[Status])
				{
					this.dataProvider.removeItemAt(i);
					i--;
				}
			}
		}
	}
}