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
	public class BitmapData_method_merge extends Output
	{
		override public function run():void
		{
			var bmd1:BitmapData = new BitmapData(100, 80, true, 0xFF00FF00);
			var bmd2:BitmapData = new BitmapData(100, 80, true, 0xFFFF0000);
			var rect:Rectangle = new Rectangle(0, 0, 20, 20);
			var pt:Point = new Point(20, 20);
			var mult:uint = 0xFF; // 100% 
			bmd1.merge(bmd2, rect, pt, mult, mult, mult, mult);
			
			var bm1:Bitmap = new Bitmap(bmd1);
			tracePattern(bm1);
			var bm2:Bitmap = new Bitmap(bmd2);
			tracePattern(bm2);
			bm2.x = 110;
		}
	}
}
/************************************************************************************************
 merge()	方法	 
 public function merge(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, redMultiplier:uint, greenMultiplier:uint, blueMultiplier:uint, alphaMultiplier:uint):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 对每个通道执行从源图像向目标图像的混合。对于每个通道和每个像素，将基于源和目标像素的通道值来计算新值。例如，在红色通道中，新值是按如下方式计算的（其中 redSrc 是源图像中像素的红色通道值，而 redDest 是目标图像中对应像素的红色通道值）：
 new redDest = [(redSrc * redMultiplier) + (redDest * (256 - redMultiplier))] / 256;
 redMultiplier、greenMultiplier、blueMultiplier 和 alphaMultiplier 值是用于每个颜色通道的乘数。应使用从 0 到 0x100 (256) 的十六进制值范围，其中 0 指定在结果中使用来自目标的完整值，0x100 指定使用来自源的完整值，介于两者之间的数字指定使用混合值 （如 0x80 表示 50%）。
 参数
 sourceBitmapData:BitmapData — 要使用的输入位图图像。源图像可以是另一个 BitmapData 对象，也可以引用当前 BitmapData 对象。
 sourceRect:Rectangle — 定义要用作输入的源图像区域的矩形。
 destPoint:Point — 目标图像（当前 BitmapData 实例）中与源矩形的左上角对应的点。
 redMultiplier:uint — 一个要与红色通道值相乘的十六进制 uint 值。
 greenMultiplier:uint — 一个要与绿色通道值相乘的十六进制 uint 值。
 blueMultiplier:uint — 一个要与蓝色通道值相乘的十六进制 uint 值。
 alphaMultiplier:uint — 一个要与 Alpha 透明度值相乘的十六进制 uint 值。
 引发
 TypeError — sourceBitmapData、sourceRect 或 destPoint 为空。
 ************************************************************************************************/