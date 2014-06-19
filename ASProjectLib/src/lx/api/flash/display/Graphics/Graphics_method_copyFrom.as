package lx.api.flash.display.Graphics
{
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_copyFrom extends Output
	{
		override public function run():void
		{
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(0,1);
			sprite.graphics.drawRect(0,0,100,100);
			sprite.graphics.endFill();
			
			var copy:Sprite = new Sprite();
			copy.graphics.copyFrom(sprite.graphics);
			tracePattern(copy);
		}
	}
}
/************************************************************************************************
 copyFrom	()	方法	 
public function copyFrom(sourceGraphics:Graphics):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 10, AIR 1.5, Flash Lite 4

将源 Graphics 对象中的所有绘图命令复制到执行调用的 Graphics 对象中。

参数
	sourceGraphics:Graphics — 从中复制绘图命令的 Graphics 对象。 
 ************************************************************************************************/