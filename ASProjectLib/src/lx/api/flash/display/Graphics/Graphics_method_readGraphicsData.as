package lx.api.flash.display.Graphics
{
	import flash.display.GraphicsPathCommand;
	import flash.display.IGraphicsData;
	import flash.display.Shape;
	import flash.events.MouseEvent;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_readGraphicsData extends Output
	{
		private var original:Shape;
		private var copy:Shape;
		
		override public function run():void
		{
			original = new Shape();
			original.x = 50;
			original.y = 100;
			tracePattern(original);
			
			drawSquare();
			
			copy = new Shape();
			copy.x = 250;
			copy.y = 100;
			tracePattern(copy);
			
			/*
			使用 readGraphicsData() 方法来检索显示对象的矢量图形内容。然后在用户用鼠标单击舞台时，将该内容重新绘制到舞台上的另一个对象中。
			请注意，尽管原来的矢量内容是用 drawGraphicsData() 方法绘制的，但由 readGraphicsData() 方法检索出的矢量数据对象并不与传递到
			drawGraphicsData() 方法中的矢量数据对象完全匹配。例如，结果数据包括 GraphicsSolidFill 和 GraphicsEndFill 命令，这两个命令是隐含的，
			并不实际存在于原来的图形数据中。
			*/
			drawArea.addEventListener(MouseEvent.CLICK, drawCopyOnClick);
		}
		
		override public function dispose():void
		{
			drawArea.removeEventListener(MouseEvent.CLICK, drawCopyOnClick);
		}
		
		private function drawCopyOnClick(event:MouseEvent):void
		{
			// reset
			copy.graphics.clear();
			
			// Sample the vector data. Move the original to 0,0
			// before sampling so that the coordinates match the 
			// relative coordinates of the original.
			var xPos:Number = original.x;
			var yPos:Number = original.y;
			original.x = 0;
			original.y = 0;
			var result:Vector.<IGraphicsData> = original.graphics.readGraphicsData(false);
			original.x = xPos;
			original.y = yPos;
			
			// re-draw
			copy.graphics.drawGraphicsData(result);
		}
		
		private function drawSquare():void
		{
			var squareCommands:Vector.<int> = new Vector.<int>(5, true);
			
			squareCommands[0] = GraphicsPathCommand.MOVE_TO;
			squareCommands[1] = GraphicsPathCommand.LINE_TO;
			squareCommands[2] = GraphicsPathCommand.LINE_TO;
			squareCommands[3] = GraphicsPathCommand.LINE_TO;
			
			var squareCoordinates:Vector.<Number> = new Vector.<Number>(8, true);
			squareCoordinates[0] = 0;
			squareCoordinates[1] = 0; 
			squareCoordinates[2] = 50; 
			squareCoordinates[3] = 0; 
			squareCoordinates[4] = 50; 
			squareCoordinates[5] = 50; 
			squareCoordinates[6] = 0; 
			squareCoordinates[7] = 50; 
			
			original.graphics.beginFill(0x003366);
			original.graphics.drawPath(squareCommands, squareCoordinates);
		}
	}
}
/************************************************************************************************
 readGraphicsData	()	方法	 
public function readGraphicsData(recurse:Boolean = true):Vector.<IGraphicsData>

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 11.6, AIR 3.6

查询 Sprite 或 Shape 对象（也可以是其子对象）的矢量图形内容。结果是一个由 IGraphicsData 对象构成的矢量。转换是在进行查询之前应用到显示对象的，因此返回路径全部在同一坐标空间中。结果数据集中的坐标是相对于舞台的，而不是相对于进行采样的显示对象。

结果包括以下类型的对象，并具有指定限制：

    GraphicsSolidFill
    GraphicsGradientFill
        渐变填充的所有属性由 readGraphicsData() 返回。
        返回的矩阵接近输入矩阵，但不完全等同。
    GraphicsEndFill
    GraphicsBitmapFill
        返回的矩阵接近输入矩阵，但不完全等同。
        repeat 始终为 true。
        smooth 始终为 false。
    GraphicsStroke
        支持 thickness。
        如前所述，fill 支持 GraphicsSolidFill、GraphicsGradientFill 及 GraphicsBitmapFill
        所有其他属性均有默认值。
    GraphicsPath
        仅支持 MOVE_TO、CURVE_TO 和 LINE_TO 命令。

无法表示以下可视元素和转换，因此它们不会包括在结果中：

    屏蔽
    文本，但有一个例外：用消除锯齿类型“动画消除锯齿”定义的静态文本将作为矢量图形呈现，因此包括在结果中。
    着色器填充
    混合模式
    9 切片缩放
    三角形（用 drawTriangles() 方法创建）
    不透明的背景
    scrollrect 设置
    2.5D 转换
    非可见对象（其 visible 属性为 false 的对象）

参数
	recurse:Boolean (default = true) — 运行时是否还应查询当前显示对象的子对象。执行递归查询会花费更多的时间和内存。查询结果将以单一的拼合结果集返回，不会按显示对象分隔开。

返回
	Vector.<IGraphicsData> — 由 IGraphicsData 对象构成的矢量，表示相关显示对象的矢量图形内容 
 ************************************************************************************************/