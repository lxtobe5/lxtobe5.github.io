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
	public class BitmapData_method_getColorBoundsRect extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(80, 40, false, 0xFFFFFF);
			var rectangle:Rectangle = new Rectangle(10, 0, 80, 20);
			bitmapdata.fillRect(rectangle, 0xFF0000);
			
			var maskColor:uint = 0xFFFFFF; 
			var color:uint = 0xFF0000;  
			var redBounds:Rectangle = bitmapdata.getColorBoundsRect(maskColor, color, true);
			traceString(redBounds);
			//			(x=10, y=0, w=70, h=20)
			
			var notRedBounds:Rectangle = bitmapdata.getColorBoundsRect(maskColor, color, false);
			traceString(notRedBounds);
			//			(x=0, y=0, w=80, h=40)
			
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
		}
	}
}
/************************************************************************************************
 getColorBoundsRect()	方法	 
 public function getColorBoundsRect(mask:uint, color:uint, findColor:Boolean = true):Rectangle
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 确定矩形区域是将位图图像中指定颜色的所有像素完全包括起来（如果将 findColor 参数设置为 true），还是将不包括指定颜色的所有像素完全包括起来（如果将 findColor 参数设置为 false）。
 例如，如果有一个源图像并且想要确定包含非零 Alpha 通道的图像矩形，请传递 {mask: 0xFF000000, color: 0x00000000} 作为参数。如果 findColor 参数设置为 true，则会在整个图像中搜索其 (value & mask) == color 的像素范围（其中 value 是像素的颜色值）。如果 findColor 参数设置为 false，则在整个图像中搜索以下像素的范围，这些像素满足条件 (value & mask) != color（其中 value 是像素的颜色值）。要确定图像周围的空白区域，请传递 {mask: 0xFFFFFFFF, color: 0xFFFFFFFF} 以查找非空白像素的范围。
 参数
 mask:uint — 一个十六进制值，指定要考虑的 ARGB 颜色的位。通过使用 & (bitwise AND) 运算符，将颜色值与此十六进制值合并。
 color:uint — 一个十六进制值，指定要匹配（如果 findColor 设置为 true）或不 匹配（如果 findColor 设置为 false）的 ARGB 颜色。
 findColor:Boolean (default = true) — 如果该值设置为 true，则返回图像中颜色值的范围。如果该值设置为 false，则返回图像中不存在此颜色的范围。
 返回
 Rectangle — 指定颜色的图像区域。
 ************************************************************************************************/