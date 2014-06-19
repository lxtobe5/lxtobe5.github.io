package lx.api.flash.display.Graphics
{
	import flash.display.Shape;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_drawRoundRect extends Output
	{
		override public function run():void
		{
			var child:Shape = new Shape();
			child.graphics.beginFill(0xfff000);
			child.graphics.lineStyle(1, 0);
			child.graphics.drawRoundRect(0, 0, 100, 100, 5);
			child.graphics.endFill();
			tracePattern(child);
			child.x = child.y = 50;
		}
	}
}
/************************************************************************************************
 drawRoundRect	()	方法	 
public function drawRoundRect(x:Number, y:Number, width:Number, height:Number, ellipseWidth:Number, ellipseHeight:Number = NaN):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

绘制一个圆角矩形。在调用 drawRoundRect() 方法之前，通过调用 linestyle()、lineGradientStyle()、beginFill()、beginGradientFill() 或 beginBitmapFill() 方法来设置线条样式或/和填充。

参数
	x:Number — 一个表示相对于父显示对象注册点的水平位置的数字（以像素为单位）。
 
	y:Number — 一个表示相对于父显示对象注册点的垂直位置的数字（以像素为单位）。
 
	width:Number — 圆角矩形的宽度（以像素为单位）。
 
	height:Number — 圆角矩形的高度（以像素为单位）。
 
	ellipseWidth:Number — 用于绘制圆角的椭圆的宽度（以像素为单位）。
 
	ellipseHeight:Number (default = NaN) — 用于绘制圆角的椭圆的高度（以像素为单位）。（可选）如果未指定值，则默认值与为 ellipseWidth 参数提供的值相匹配。


引发
	ArgumentError — 如果 width、height、ellipseWidth 或 ellipseHeight 参数不是数值 (Number.NaN)。 
 ************************************************************************************************/