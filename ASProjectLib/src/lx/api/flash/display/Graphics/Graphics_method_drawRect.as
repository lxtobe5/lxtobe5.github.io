package lx.api.flash.display.Graphics
{
	import flash.display.MovieClip;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_drawRect extends Output
	{
		override public function run():void
		{
			var movieClip:MovieClip = new MovieClip();
			movieClip.graphics.beginFill(0xFF0000);
			movieClip.graphics.drawRect(0, 0, 100, 80);
			movieClip.graphics.endFill();
			movieClip.x = 10;
			movieClip.y = 10;
			tracePattern(movieClip);
		}
	}
}
/************************************************************************************************
 drawRect	()	方法	 
public function drawRect(x:Number, y:Number, width:Number, height:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

绘制一个矩形。在调用 drawRect() 方法之前，通过调用 linestyle()、lineGradientStyle()、beginFill()、beginGradientFill() 或 beginBitmapFill() 方法来设置线条样式或/和填充。

参数
	x:Number — 一个表示相对于父显示对象注册点的水平位置的数字（以像素为单位）。
 
	y:Number — 一个表示相对于父显示对象注册点的垂直位置的数字（以像素为单位）。
 
	width:Number — 矩形的宽度（以像素为单位）。
 
	height:Number — 矩形的高度（以像素为单位）。


引发
	ArgumentError — 如果 width 或 height 参数不是数值 (Number.NaN)。 
 ************************************************************************************************/