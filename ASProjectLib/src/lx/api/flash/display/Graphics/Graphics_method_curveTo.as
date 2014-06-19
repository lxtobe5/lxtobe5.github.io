package lx.api.flash.display.Graphics
{
	import flash.display.Shape;
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_curveTo extends Output
	{
		override public function run():void
		{
			var roundObject:Shape = new Shape();
			
			roundObject.graphics.beginFill(0x00FF00);
			roundObject.graphics.moveTo(250, 0);
			roundObject.graphics.curveTo(300, 0, 300, 50);
			roundObject.graphics.curveTo(300, 100, 250, 100);
			roundObject.graphics.curveTo(200, 100, 200, 50);
			roundObject.graphics.curveTo(200, 0, 250, 0);
			roundObject.graphics.endFill();
			
			tracePattern(roundObject);
			
			tracePattern(getRedRect(300,0));
			tracePattern(getRedRect(300,100));
			tracePattern(getRedRect(200,100));
			tracePattern(getRedRect(200,0));
			
			tracePattern(getBlueRect(300,50));
			tracePattern(getBlueRect(250,100));
			tracePattern(getBlueRect(200,50));
			tracePattern(getBlueRect(250,0));
			
			/**
			 * 绘制两条 1 个像素粗的曲线，并将两条曲线之间的区域填充为白色。moveTo() 方法用于将当前绘制位置
			 * 放在坐标 (100, 100) 上。第一条曲线将绘制位置移到 (100, 200)，这是其目标点。第二条曲线将该位置
			 * 恢复为开始位置 (100, 100)，这是其目标点。水平控制点决定了不同的曲线大小。
			 * */
			var newMoon:Shape = new Shape();
			
			newMoon.graphics.lineStyle(1, 0);
			newMoon.graphics.beginFill(0xFFFFFF);
			newMoon.graphics.moveTo(100, 100); 
			newMoon.graphics.curveTo(30, 150, 100, 200);    
			newMoon.graphics.curveTo(50, 150, 100, 100);
			newMoon.graphics.endFill();
			
			tracePattern(newMoon);
			
			tracePattern(getRedRect(30,150));
			tracePattern(getRedRect(50,150));
			
			tracePattern(getBlueRect(100,200));
			tracePattern(getBlueRect(100,100));
		}
		
		private function getRedRect(x:Number,y:Number):Sprite
		{
			var rect:Sprite = new Sprite();
			rect.graphics.lineStyle(1,0xff0000);
			rect.graphics.drawRect(0,0,4,4);
			rect.graphics.endFill();
			rect.x = x-2;
			rect.y = y-2;
			return rect;
		}
		
		private function getBlueRect(x:Number,y:Number):Sprite
		{
			var rect:Sprite = new Sprite();
			rect.graphics.lineStyle(1,0x0000ff);
			rect.graphics.drawRect(0,0,4,4);
			rect.graphics.endFill();
			rect.x = x-2;
			rect.y = y-2;
			return rect;
		}
	}
}
/************************************************************************************************
 curveTo	()	方法	 
public function curveTo(controlX:Number, controlY:Number, anchorX:Number, anchorY:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

使用当前线条样式和由 (controlX, controlY) 指定的控制点绘制一条从当前绘图位置开始到 (anchorX, anchorY) 结束的二次贝塞尔曲线。当前绘图位置随后设置为 (anchorX, anchorY)。如果正在其中绘制的影片剪辑包含用 Flash 绘图工具创建的内容，则调用 curveTo() 方法将在该内容下面进行绘制。如果在调用 moveTo() 方法之前调用了 curveTo() 方法，则当前绘图位置的默认值为 (0, 0)。如果缺少任何一个参数，则此方法将失败，并且当前绘图位置不改变。

绘制的曲线是二次贝塞尔曲线。二次贝塞尔曲线包含两个锚点和一个控制点。该曲线内插这两个锚点，并向控制点弯曲。

quadratic bezier

参数
	controlX:Number — 一个数字，指定控制点相对于父显示对象注册点的水平位置。
 
	controlY:Number — 一个数字，指定控制点相对于父显示对象注册点的垂直位置。
 
	anchorX:Number — 一个数字，指定下一个锚点相对于父显示对象注册点的水平位置。
 
	anchorY:Number — 一个数字，指定下一个锚点相对于父显示对象注册点的垂直位置。 
 ************************************************************************************************/