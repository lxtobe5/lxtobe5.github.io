package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.BitmapDataChannel;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_copyChannel extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(100,80,false,0x00FF0000);
			var rectangle:Rectangle = new Rectangle(0,0,20,20);
			var point:Point = new Point(10,10);
			bitmapdata.copyChannel(bitmapdata,rectangle,point,BitmapDataChannel.GREEN,BitmapDataChannel.RED);
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
		}
	}
}
/************************************************************************************************
 copyChannel()	方法
 public function copyChannel(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, sourceChannel:uint, destChannel:uint):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 将数据从另一个 BitmapData 对象或当前 BitmapData 对象的一个通道传输到当前 BitmapData 对象的某个通道中。目标 BitmapData 对象的其他通道中的所有数据都将被保留。
 源通道值和目标通道值可以是下列值之一：
 BitmapDataChannel.RED
 BitmapDataChannel.GREEN
 BitmapDataChannel.BLUE
 BitmapDataChannel.ALPHA
 参数
 sourceBitmapData:BitmapData — 要使用的输入位图图像。源图像可以是另一个 BitmapData 对象，也可以指当前 BitmapData 对象。
 sourceRect:Rectangle — 源 Rectangle 对象。若只想复制位图内较小区域中的通道数据，请指定一个小于 BitmapData 对象整体大小的源矩形。
 destPoint:Point — 目标 Point 对象，它表示将要在其中放置新通道数据的矩形区域的左上角。若只想将通道数据从目标图像中的一个区域复制到其他区域，请指定一个 (0,0) 以外的点。
 sourceChannel:uint — 源通道。使用来自 BitmapDataChannel 类（BitmapDataChannel.RED、BitmapDataChannel.BLUE、BitmapDataChannel.GREEN、BitmapDataChannel.ALPHA）的值。
 destChannel:uint — 目标通道。使用来自 BitmapDataChannel 类（BitmapDataChannel.RED、BitmapDataChannel.BLUE、BitmapDataChannel.GREEN、BitmapDataChannel.ALPHA）的值。
 引发
 TypeError — sourceBitmapData、sourceRect 或 destPoint 为空。
 ************************************************************************************************/
