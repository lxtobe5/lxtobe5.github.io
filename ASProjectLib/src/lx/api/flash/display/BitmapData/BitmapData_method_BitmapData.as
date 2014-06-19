package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_BitmapData extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(100,100,false,0);
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			//			transparent设为false，fillColor设为0（相当于0x00000000）
			
			bitmapdata = new BitmapData(100,100,true,0);
			bitmap = new Bitmap(bitmapdata);
			bitmap.x = 100;
			tracePattern(bitmap);
			//			transparent设为true，fillColor设为0（相当于0x00000000），透明通道为00，全透明
			
			bitmapdata = new BitmapData(100,100,true,0xff000000);
			bitmap = new Bitmap(bitmapdata);
			bitmap.x = 200;
			tracePattern(bitmap);
			//			transparent设为true，fillColor设为0xff000000，透明通道为ff，全不透明
		}
		
	}
}
/************************************************************************************************
 BitmapData()	构造函数
 public function BitmapData(width:int, height:int, transparent:Boolean = true, fillColor:uint = 0xFFFFFFFF)
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 创建一个具有指定的宽度和高度的 BitmapData 对象。如果为 fillColor 参数指定一个值，则位图中的每个像素都将设置为该颜色。
 默认情况下，将位图创建为透明位图，除非您为 transparent 参数传递值 false。创建了不透明位图后，将无法将其更改为透明位图。不透明位图中的每个像素仅使用 24 位的颜色通道信息。如果将位图定义为透明，则每个像素将使用 32 位的颜色通道信息，其中包括 Alpha 透明度通道。
 在 AIR 1.5 和 Flash Player 10 中，BitmapData 对象的最大宽度或高度为 8,191 像素，并且像素总数不能超过 16,777,215 像素。（因此，如果 BitmapData 对象的宽度为 8,191 像素，则其高度只能为 2,048 像素。）在 Flash Player 9 及早期版本和 AIR 1.1 及早期版本中，高度最大为 2,880 像素，宽度最大为 2,880 像素。如果指定的宽度值或高度值大于 2880，则不会创建新实例。
 参数
 width:int — 位图图像的宽度，以像素为单位。
 height:int — 位图图像的高度，以像素为单位。
 transparent:Boolean (default = true) — 指定位图图像是否支持每个像素具有不同的透明度。默认值为 true（透明）。要创建完全透明的位图，请将 transparent 参数的值设置为 true，将 fillColor 参数的值设置为 0x00000000（或设置为 0）。将 transparent 属性设置为 false 可以略微提升呈现性能。
 fillColor:uint (default = 0xFFFFFFFF) — 用于填充位图图像区域的 32 位 ARGB 颜色值。默认值为 0xFFFFFFFF（纯白色）。
 引发
 ArgumentError — 宽度和/或高度超过最大尺寸。 
 ************************************************************************************************/