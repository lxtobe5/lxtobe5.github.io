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
	public class BitmapData_method_copyPixelsToByteArray extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(100,100,false);
			var rectangle:Rectangle = new Rectangle(0,0,1,1);
			var byteArray:ByteArray = new ByteArray();
			bitmapdata.copyPixelsToByteArray(rectangle,byteArray);
			traceString(byteArray);
			traceString(byteArray.length);
			//			ÿÿÿÿ 4
		}
	}
}
/************************************************************************************************
 copyPixelsToByteArray()	方法	 
 public function copyPixelsToByteArray(rect:Rectangle, data:ByteArray):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 11.4, AIR 3.4
 根据像素数据的矩形区域填充一个字节数组。从 ByteArray 的 position 索引开始，此方法为每个像素将一个无符号整数（32 位未经相乘的像素值）写入字节数组。如果需要，字节数组的大小将增大到必要的字节数以容纳所有像素数据。
 参数
 rect:Rectangle — 当前 BitmapData 对象中的一个矩形区域
 data:ByteArray — 目标 ByteArray 对象
 引发
 TypeError — 如果 rect 参数为 null 或 data 参数为 null
 ************************************************************************************************/