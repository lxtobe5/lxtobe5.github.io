package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_fillRect extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(40, 40, false, 0x0000FF00);
			
			var rectangle:Rectangle = new Rectangle(10, 10, 20, 20);
			bitmapdata.fillRect(rectangle, 0x0000FF);
			
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
		}
	}
}
/************************************************************************************************
 fillRect()	方法	 
 public function fillRect(rect:Rectangle, color:uint):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 使用指定的 ARGB 颜色填充一个矩形像素区域。
 参数
 rect:Rectangle — 要填充的矩形区域。
 color:uint — 用于填充区域的 ARGB 颜色值。通常以十六进制格式指定 ARGB 颜色；例如，0xFF336699。
 引发
 TypeError — 矩形是空的。 
 ************************************************************************************************/