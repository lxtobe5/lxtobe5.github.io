package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_copyPixels extends Output
	{
		override public function run():void
		{
			var bmd1:BitmapData = new BitmapData(40, 40, false, 0x000000FF);
			var bmd2:BitmapData = new BitmapData(80, 40, false, 0x0000CC44);
			
			var rect:Rectangle = new Rectangle(0, 0, 30, 20);
			var pt:Point = new Point(10, 10);
			bmd2.copyPixels(bmd1, rect, pt);
			
			var bm1:Bitmap = new Bitmap(bmd1);
			tracePattern(bm1);
			var bm2:Bitmap = new Bitmap(bmd2);
			tracePattern(bm2);
			bm2.x = 50;
		}
	}
}
/************************************************************************************************
 copyPixels()	方法	 
 public function copyPixels(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, alphaBitmapData:BitmapData = null, alphaPoint:Point = null, mergeAlpha:Boolean = false):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 为没有拉伸、旋转或色彩效果的图像之间的像素处理提供一个快速例程。此方法在目标 BitmapData 对象的目标点将源图像的矩形区域复制为同样大小的矩形区域。
 如果包括 alphaBitmap 参数和 alphaPoint 参数，则可以将另一个图像用作源图像的 Alpha 源。如果源图像具有 Alpha 数据，则这两组 Alpha 数据都用于将源图像中的像素组合到目标图像中。alphaPoint 参数是 Alpha 图像中与源矩形左上角对应的点。源图像和 Alpha 图像交叉区域之外的任何像素都不会被复制到目标图像。
 mergeAlpha 属性控制在将透明图像复制到另一透明图像时是否使用 Alpha 通道。要复制含有 Alpha 通道数据的像素，请将 mergeAlpha 属性设置为 true。默认情况下，mergeAlpha 属性为 false。
 参数
 sourceBitmapData:BitmapData — 要从中复制像素的输入位图图像。源图像可以是另一个 BitmapData 实例，也可以指当前 BitmapData 实例。
 sourceRect:Rectangle — 定义要用作输入的源图像区域的矩形。
 destPoint:Point — 目标点，它表示将在其中放置新像素的矩形区域的左上角。
 alphaBitmapData:BitmapData (default = null) — 第二个 Alpha BitmapData 对象源。
 alphaPoint:Point (default = null) — Alpha BitmapData 对象源中与 sourceRect 参数的左上角对应的点。
 mergeAlpha:Boolean (default = false) — 要使用 Alpha 通道，请将该值设置为 true。要复制不含 Alpha 通道的像素，请将该值设置为 false。
 引发
 TypeError — sourceBitmapData、sourceRect 和 destPoint 为空。 
 ************************************************************************************************/