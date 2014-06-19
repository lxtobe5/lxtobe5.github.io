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
	public class BitmapData_method_getPixel32 extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(80,40,true,0xFFFF0000);
			bitmapdata.fillRect(new Rectangle(10,0,20,20),0xFF00FF00);
			
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			
			var pixelValue:uint;
			
			pixelValue = bitmapdata.getPixel32(0,0);
			traceString(pixelValue.toString(16));
			//			ffff0000
			
			pixelValue = bitmapdata.getPixel32(11,0);
			traceString(pixelValue.toString(16));
			//			ff00ff00
			
			pixelValue = bitmapdata.getPixel32(100,0);
			traceString(pixelValue.toString(16));
			//			0   超出区域返回0
		}
	}
}
/************************************************************************************************
 getPixel32()	方法	 
 public function getPixel32(x:int, y:int):uint
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 返回一个 ARGB 颜色值，它包含 Alpha 通道数据和 RGB 数据。此方法与 getPixel() 方法类似，后者返回没有 Alpha 通道数据的 RGB 颜色。
 BitmapData 对象中的所有像素都作为预乘颜色值进行存储。预乘图像像素具有已经与 Alpha 数据相乘的红色、绿色和蓝色通道值。例如，如果 Alpha 值为 0，则 RGB 通道的值也为 0，与它们未经过相乘的值无关。这种丢失数据的情况可能会在执行操作时导致一些问题。所有 BitmapData 方法都采用并返回未经过相乘的值。内部像素表示形式在其作为值返回之前从经过预乘的形式转换为未经过相乘的形式。在设置操作过程中，设置原始图像像素之前，像素值是经过预乘的。
 参数
 x:int — 像素的 x 位置。
 y:int — 像素的 y 位置。
 返回
 uint — 一个表示 ARGB 像素值的数字。如果 (x, y) 坐标在图像范围以外，则返回 0。 
 ************************************************************************************************/