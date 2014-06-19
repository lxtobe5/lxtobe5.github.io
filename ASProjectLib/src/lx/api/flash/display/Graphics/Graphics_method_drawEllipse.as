package lx.api.flash.display.Graphics
{
	import flash.display.Shape;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_drawEllipse extends Output
	{
		public static const SMALL:uint = 0;
		public static const MEDIUM:uint = 1;
		public static const LARGE:uint = 2;
		
		override public function run():void
		{
			drawEgg(SMALL, 0, 100);
			drawEgg(MEDIUM, 100, 60);
			drawEgg(LARGE, 250, 35);  
		}
		
		public function drawEgg(eggSize:uint, x:Number, y:Number):void  {
			
			var myEgg:Shape = new Shape();
			
			myEgg.graphics.beginFill(0xFFFFFF);
			myEgg.graphics.lineStyle(1);
			
			switch(eggSize) {
				case SMALL:
					myEgg.graphics.drawEllipse(x, y, 60, 70);
					break;
				case MEDIUM:
					myEgg.graphics.drawEllipse(x, y, 120, 150);    
					break;
				case LARGE:
					myEgg.graphics.drawEllipse(x, y, 150, 200);
					break;
				default:
					traceString ("Wrong size! There is no egg.");
					break;            
			}
			
			myEgg.graphics.endFill();
			
			tracePattern(myEgg);
		}
	}
}
/************************************************************************************************
 drawEllipse	()	方法	 
public function drawEllipse(x:Number, y:Number, width:Number, height:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

绘制一个椭圆。在调用 drawEllipse() 方法之前，通过调用 linestyle()、lineGradientStyle()、beginFill()、beginGradientFill() 或 beginBitmapFill() 方法来设置线条样式或/和填充。

参数
	x:Number — 椭圆边框左上角相对于父显示对象注册点的 x 位置（以像素为单位）。
 
	y:Number — 椭圆边框左上角相对于父显示对象注册点的 y 位置（以像素为单位）。
 
	width:Number — 椭圆的宽度（以像素为单位）。
 
	height:Number — 椭圆的高度（以像素为单位）。 
 ************************************************************************************************/