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
	public class BitmapData_method_floodFill extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(40, 40, false, 0x0000FF00);
			var rectangle:Rectangle = new Rectangle(0, 0, 20, 20);
			bitmapdata.fillRect(rectangle, 0x000000FF);
			bitmapdata.floodFill(20, 0, 0x00FF0000);  //在x=20，y=0的地方填充红色
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			
			bitmapdata = new BitmapData(40, 40, false, 0x0000FF00);
			rectangle = new Rectangle(0, 0, 20, 20);
			bitmapdata.fillRect(rectangle, 0x000000FF);
			bitmapdata.floodFill(0, 0, 0x00FF0000);  //在x=0，y=0的地方填充红色，蓝色区域被填充为红色
			bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			bitmap.x = 50;
		}
	}
}
/************************************************************************************************
 floodFill()	方法	 
 public function floodFill(x:int, y:int, color:uint):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 对图像执行倾倒填充操作，从 (x, y) 坐标开始，填充一种特定的颜色。floodFill() 方法类似于各种绘图程序中的“颜料桶”工具。该颜色是包含 Alpha 信息和颜色信息的 ARGB 颜色。
 参数
 x:int — 图像的 x 坐标。
 y:int — 图像的 y 坐标。
 color:uint — 要用作填充色的 ARGB 颜色。 
 ************************************************************************************************/