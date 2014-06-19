package lx.api.flash.display.Graphics
{
	import flash.display.CapsStyle;
	import flash.display.LineScaleMode;
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_moveTo extends Output
	{
		override public function run():void
		{
			var sprite:Sprite = new Sprite();
			sprite.graphics.lineStyle(3, 0x990000, 0.25, false, 
				LineScaleMode.NONE, CapsStyle.SQUARE);
			
			sprite.graphics.moveTo(10, 20);
			sprite.graphics.lineTo(20, 20);
			sprite.graphics.moveTo(30, 20);
			sprite.graphics.lineTo(50, 20);
			sprite.graphics.moveTo(60, 20);
			sprite.graphics.lineTo(80, 20);
			sprite.graphics.moveTo(90, 20);
			sprite.graphics.lineTo(110, 20);            
			sprite.graphics.moveTo(120, 20);
			sprite.graphics.lineTo(130, 20);  
			tracePattern(sprite);
		}
	}
}
/************************************************************************************************
 moveTo	()	方法	 
public function moveTo(x:Number, y:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

将当前绘图位置移动到 (x, y)。如果缺少任何一个参数，则此方法将失败，并且当前绘图位置不改变。

参数
	x:Number — 一个表示相对于父显示对象注册点的水平位置的数字（以像素为单位）。
 
	y:Number — 一个表示相对于父显示对象注册点的垂直位置的数字（以像素为单位）。 
 ************************************************************************************************/