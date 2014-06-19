package lx.api.flash.display.BitmapData
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_getPixels extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(80, 40, true);
			
			var rectangle:Rectangle = new Rectangle(0, 0, bitmapdata.width, bitmapdata.height);
			var byteArray:ByteArray = bitmapdata.getPixels(rectangle);
			traceString(byteArray.length);
			//			12800
		}
	}
}
/************************************************************************************************
 getPixels()	方法	 
 public function getPixels(rect:Rectangle):ByteArray
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 从像素数据的矩形区域生成一个字节数组。为每个像素将一个无符号整数（32 位未经相乘的像素值）写入字节数组。
 参数
 rect:Rectangle — 当前 BitmapData 对象中的一个矩形区域。
 返回
 ByteArray — 表示给定矩形中的像素的 ByteArray。
 引发
 TypeError — 矩形是空的。 
 ************************************************************************************************/