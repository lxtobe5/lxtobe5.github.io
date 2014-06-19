package lx.api.flash.display.Graphics
{
	import flash.display.GraphicsGradientFill;
	import flash.display.GraphicsPath;
	import flash.display.GraphicsPathCommand;
	import flash.display.GraphicsSolidFill;
	import flash.display.GraphicsStroke;
	import flash.display.IGraphicsData;
	import flash.display.Sprite;
	import flash.geom.Matrix;

	public class Graphics_method_drawGraphicsData extends Output
	{
		override public function run():void
		{
			// establish the fill properties
			var myFill:GraphicsGradientFill = new GraphicsGradientFill();
			myFill.colors = [0xEEFFEE, 0x0000FF];
			myFill.matrix = new Matrix();
			myFill.matrix.createGradientBox(100, 100, 0);
			
			// establish the stroke properties
			var myStroke:GraphicsStroke = new GraphicsStroke(2);
			myStroke.fill = new GraphicsSolidFill(0x000000);
			
			// establish the path properties
			var pathCommands:Vector.<int> = new Vector.<int>(5, true);
			pathCommands[0] = GraphicsPathCommand.MOVE_TO;
			pathCommands[1] = GraphicsPathCommand.LINE_TO;
			pathCommands[2] = GraphicsPathCommand.LINE_TO;
			pathCommands[3] = GraphicsPathCommand.LINE_TO;
			pathCommands[4] = GraphicsPathCommand.LINE_TO;
			
			var pathCoordinates:Vector.<Number> = new Vector.<Number>(10, true);
			pathCoordinates[0] = 10;
			pathCoordinates[1] = 10;
			pathCoordinates[2] = 10;
			pathCoordinates[3] = 100;
			pathCoordinates[4] = 100;
			pathCoordinates[5] = 100;
			pathCoordinates[6] = 100;
			pathCoordinates[7] = 10;
			pathCoordinates[8] = 10;
			pathCoordinates[9] = 10;
			
			var myPath:GraphicsPath = new GraphicsPath(pathCommands, pathCoordinates);
			
			// populate the IGraphicsData Vector array
			var myDrawing:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3, true);
			myDrawing[0] = myFill;
			myDrawing[1] = myStroke;
			myDrawing[2] = myPath;
			
			// render the drawing
			var sprite:Sprite = new Sprite();
			sprite.graphics.drawGraphicsData(myDrawing);
			tracePattern(sprite);
		}
	}
}
/************************************************************************************************
 drawGraphicsData	()	方法	 
public function drawGraphicsData(graphicsData:Vector.<IGraphicsData>):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 10, AIR 1.5

提交一系列 IGraphicsData 实例来进行绘图。此方法接受一个包含对象（包括路径、填充和笔触）的矢量，这些对象实现 IGraphicsData 接口。包含 IGraphicsData 实例的矢量可以引用形状的一部分，或引用一组完整定义的复杂数据以呈现完整的形状。

图形路径可以包含其他图形路径。如果 graphicsData 矢量包括路径，则在此操作期间将呈现该路径及其所有子路径。

参数
	graphicsData:Vector.<IGraphicsData> — 一个包含图形对象的矢量，其中的每个对象都必须实现 IGraphicsData 接口。 
 ************************************************************************************************/