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
	public class BitmapData_method_getPixel extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(80,40,false,0xFF0000);
			bitmapdata.fillRect(new Rectangle(10,0,20,20),0x00FF00);
			
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			
			var pixelValue:uint;
			
			pixelValue = bitmapdata.getPixel(0,0);
			traceString(pixelValue.toString(16));
			//			ff0000
			
			pixelValue = bitmapdata.getPixel(11,0);
			traceString(pixelValue.toString(16));
			//			ff00
			
			pixelValue = bitmapdata.getPixel(100,0);
			traceString(pixelValue.toString(16));
			//			0   超出区域返回0
		}
	}
}
/************************************************************************************************
 getPixel()	方法
 public function getPixel(x:int, y:int):uint
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 返回一个整数，它表示 BitmapData 对象中在某个特定点 (x, y) 处的 RGB 像素值。getPixel() 方法将返回一个未经过相乘的像素值。没有返回任何 Alpha 信息。
 BitmapData 对象中的所有像素都作为预乘颜色值进行存储。预乘图像像素具有已经与 Alpha 数据相乘的红色、绿色和蓝色通道值。例如，如果 Alpha 值为 0，则 RGB 通道的值也为 0，与它们未经过相乘的值无关。这种丢失数据的情况可能会在执行操作时导致一些问题。所有 BitmapData 方法都采用并返回未经过相乘的值。内部像素表示形式在其作为值返回之前从经过预乘的形式转换为未经过相乘的形式。在设置操作过程中，设置原始图像像素之前，像素值是经过预乘的。
 参数
 x:int — 像素的 x 位置。
 y:int — 像素的 y 位置。
 返回
 uint — 一个表示 RGB 像素值的数字。如果 (x, y) 坐标在图像范围以外，则该方法返回 0。
 ************************************************************************************************/
