package lx.api.flash.display.Graphics
{
	import flash.display.DisplayObject;
	import flash.display.Shape;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_beginFill extends Output
	{
		private var size:uint         = 80;
		private var bgColor:uint      = 0xFFCC00;
		private var borderColor:uint  = 0x666666;
		private var borderSize:uint   = 0;
		private var cornerRadius:uint = 9;
		private var gutter:uint       = 5;
		
		override public function run():void
		{
			doDrawCircle();
			doDrawRoundRect();
			doDrawRect();
			refreshLayout();
		}
		
		private function refreshLayout():void {
			var ln:uint = drawArea.numChildren;
			var child:DisplayObject;
			var lastChild:DisplayObject = drawArea.getChildAt(0);
			lastChild.x = gutter;
			lastChild.y = gutter;
			for (var i:uint = 1; i < ln; i++) {
				child = drawArea.getChildAt(i);
				child.x = gutter + lastChild.x + lastChild.width;
				child.y = gutter;
				lastChild = child;
			}
		}
		
		private function doDrawCircle():void {
			var child:Shape = new Shape();
			var halfSize:uint = Math.round(size / 2);
			child.graphics.beginFill(bgColor);
			child.graphics.lineStyle(borderSize, borderColor);
			child.graphics.drawCircle(halfSize, halfSize, halfSize);
			child.graphics.endFill();
			tracePattern(child);
		}
		
		private function doDrawRoundRect():void {
			var child:Shape = new Shape();
			child.graphics.beginFill(bgColor);
			child.graphics.lineStyle(borderSize, borderColor);
			child.graphics.drawRoundRect(0, 0, size, size, cornerRadius);
			child.graphics.endFill();
			tracePattern(child);
		}
		
		private function doDrawRect():void {
			var child:Shape = new Shape();
			child.graphics.beginFill(bgColor);
			child.graphics.lineStyle(borderSize, borderColor);
			child.graphics.drawRect(0, 0, size, size);
			child.graphics.endFill();
			tracePattern(child);
		}
	}
}
/************************************************************************************************
 beginFill	()	方法	 
public function beginFill(color:uint, alpha:Number = 1.0):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

指定一种简单的单一颜色填充，在绘制时该填充将在随后对其他 Graphics 方法（如 lineTo() 或 drawCircle()）的调用中使用。该填充将保持有效，直到您调用 beginFill()、beginBitmapFill()、beginGradientFill() 或 beginShaderFill() 方法。调用 clear() 方法会清除填充。

只要绘制 3 个或更多个点，或者调用 endFill() 方法时，应用程序就会呈现填充。

参数
	color:uint — 填充的颜色 (0xRRGGBB)。
 
	alpha:Number (default = 1.0) — 填充的 Alpha 值（从 0.0 到 1.0）。 
 ************************************************************************************************/