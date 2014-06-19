package lx.api.flash.display.Graphics
{
	import flash.display.Shape;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_endFill extends Output
	{
		override public function run():void
		{
			var endFill:Shape = new Shape();
			
			endFill.graphics.beginFill(0x00FF00);
			endFill.graphics.moveTo(250, 0);
			endFill.graphics.curveTo(300, 0, 300, 50);
			endFill.graphics.curveTo(300, 100, 250, 100);
			endFill.graphics.curveTo(200, 100, 200, 50);
			endFill.graphics.endFill();
			endFill.graphics.beginFill(0xff00ff);
			endFill.graphics.curveTo(0,0,100,100);
			endFill.graphics.curveTo(0,100,50,100);
			
			tracePattern(endFill);
			
			var nonEndFill:Shape = new Shape();
			
			nonEndFill.graphics.beginFill(0x00FFFF);
			nonEndFill.graphics.moveTo(250, 0);
			nonEndFill.graphics.curveTo(300, 0, 300, 50);
			nonEndFill.graphics.curveTo(300, 100, 250, 100);
			nonEndFill.graphics.curveTo(200, 100, 200, 50);
			endFill.graphics.beginFill(0xff00ff);
			endFill.graphics.curveTo(0,0,100,100);
			endFill.graphics.curveTo(0,100,50,100);
			
			nonEndFill.y = 200;
			tracePattern(nonEndFill);
		}
	}
}
/************************************************************************************************
 endFill	()	方法	 
public function endFill():void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

对从上一次调用 beginFill()、beginGradientFill() 或 beginBitmapFill() 方法之后添加的直线和曲线应用填充。Flash 使用的是对 beginFill()、beginGradientFill() 或 beginBitmapFill() 方法的先前调用中指定的填充。如果当前绘图位置不等于 moveTo() 方法中指定的上一个位置，而且定义了填充，则用线条闭合该路径，然后进行填充。 
 ************************************************************************************************/