package lx.api.flash.display.Graphics
{
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_drawCircle extends Output
	{
		override public function run():void
		{
			var circle1:Sprite = new Sprite();
			circle1.graphics.lineStyle(1);
			circle1.graphics.drawCircle(0,0,50);
			circle1.graphics.endFill();
			tracePattern(circle1);
			
			var circle2:Sprite = new Sprite();
			circle2.graphics.lineStyle(1,0xff0000);
			circle2.graphics.drawCircle(50,50,50);
			circle2.graphics.endFill();
			tracePattern(circle2);
		}
	}
}
/************************************************************************************************
 drawCircle	()	方法	 
public function drawCircle(x:Number, y:Number, radius:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

绘制一个圆。在调用 drawCircle() 方法之前，通过调用 linestyle()、lineGradientStyle()、beginFill()、beginGradientFill() 或 beginBitmapFill() 方法来设置线条样式或/和填充。

参数
	x:Number — 圆心相对于父显示对象注册点的 x 位置（以像素为单位）。
 
	y:Number — 相对于父显示对象注册点的圆心的 y 位置（以像素为单位）。
 
	radius:Number — 圆的半径（以像素为单位）。 
 ************************************************************************************************/