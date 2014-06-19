package lx.api.flash.display.BitmapData
{
	import flash.display.BitmapData;
	import flash.display.JPEGEncoderOptions;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_encode extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(640,480,false,0x00FF00);
			var byteArray:ByteArray = new ByteArray();
			bitmapdata.encode(new Rectangle(0,0,640,480), new JPEGEncoderOptions(), byteArray);
			traceString(byteArray.length);
			//			5429
		}
	}
}
/************************************************************************************************
 encode()	方法	 
 public function encode(rect:Rectangle, compressor:Object, byteArray:ByteArray = null):ByteArray
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 11.3, AIR 3.3
 使用选定的压缩程序算法压缩此 BitmapData 对象，并返回一个新 ByteArray 对象。或者，向指定 ByteArray 写入结果数据。compressor 参数指定编码算法，可以是 PNGEncoderOptions、JPEGEncoderOptions 或 JPEGXREncoderOptions。
 参数
 rect:Rectangle — 要压缩的 BitmapData 对象的区域。
 compressor:Object — 要使用的压缩程序类型。有效值为：flash.display.PNGEncoderOptions、flash.display.JPEGEncoderOptions 和 flash.display.JPEGXREncoderOptions。
 byteArray:ByteArray (default = null) — 保存编码图像的输出 ByteArray。
 返回
 ByteArray — 包含编码图像的 ByteArray。 
 ************************************************************************************************/