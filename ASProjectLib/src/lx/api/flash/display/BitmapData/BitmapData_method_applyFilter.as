package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.filters.BlurFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_applyFilter extends Output
	{
		private var bitmapdata:BitmapData;
		private var filter:BlurFilter;
		private var rectangle:Rectangle;
		private var point:Point;
		private var bitmap:Bitmap;
		
		override public function run():void
		{
			bitmapdata = new BitmapData(100,100,false,0);
			filter = new BlurFilter();
			rectangle = new Rectangle(0,0,100,100);
			bitmapdata.fillRect(rectangle,0xffcc00);
			point = new Point(0,0);
			bitmapdata.applyFilter(bitmapdata,rectangle,point,filter);
			bitmap = new Bitmap(bitmapdata);
			bitmap.x = 0;
			bitmap.y = 100;
			tracePattern(bitmap);
			
			bitmapdata = new BitmapData(100,100,false,0);
			filter = new BlurFilter();
			rectangle = new Rectangle(20,20,60,60);
			bitmapdata.fillRect(rectangle,0xffcc00);
			//			在(20,20)的位置画一个60x60的方块
			point = new Point(0,0);
			bitmapdata.applyFilter(bitmapdata,rectangle,point,filter);
			bitmap = new Bitmap(bitmapdata);
			bitmap.x = 150;
			bitmap.y = 100;
			tracePattern(bitmap);
			//			加了滤镜的图像在point(0,0)点
		}
		
	}
}
/************************************************************************************************
 applyFilter()	方法
 public function applyFilter(sourceBitmapData:BitmapData, sourceRect:Rectangle, destPoint:Point, filter:BitmapFilter):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0
 取得一个源图像和一个滤镜对象，并生成过滤的图像。
 此方法依赖于内置滤镜对象的行为，这些对象确定受输入源矩形影响的目标矩形。
 应用滤镜后，结果图像可能会大于输入图像。例如，如果使用 BlurFilter 类来模糊源矩形 (50,50,100,100)，并且目标点为 (10,10)，则在目标图像中更改的区域将会由于该模糊处理而大于 (10,10,60,60)。这会在 applyFilter() 调用过程中在内部发生。
 如果 sourceBitmapData 参数的 sourceRect 参数是内部区域，如 200 x 200 图像中的 (50,50,100,100)，则滤镜会使用 sourceRect 参数外部的源像素来生成目标矩形。
 如果 BitmapData 对象和指定为 sourceBitmapData 参数的对象是同一对象，应用程序将使用该对象的临时副本来执行滤镜。为了获得最佳性能，请避免这种情况。
 参数
 sourceBitmapData:BitmapData — 要使用的输入位图图像。源图像可以是另一个 BitmapData 对象，也可以引用当前 BitmapData 实例。
 sourceRect:Rectangle — 定义要用作输入的源图像区域的矩形。
 destPoint:Point — 目标图像（当前 BitmapData 实例）中与源矩形的左上角对应的点。
 filter:BitmapFilter — 用于执行过滤操作的滤镜对象。每种滤镜都有某些要求，如下所示：
 BlurFilter — 此滤镜可使用不透明或透明的源图像和目标图像。如果这两种图像的格式不匹配，则在过滤过程中生成的源图像副本将与目标图像的格式匹配。
 BevelFilter、DropShadowFilter、GlowFilter、ChromeFilter — 这些滤镜的目标图像必须是透明图像。调用 DropShadowFilter 或 GlowFilter 会创建包含投影或发光的 Alpha 通道数据的图像。它不会在目标图像上创建投影。如果将这些滤镜中的任何滤镜用于不透明的目标图像，将会引发异常.
 ConvolutionFilter — 此滤镜可使用不透明或透明的源图像和目标图像。
 ColorMatrixFilter — 此滤镜可使用不透明或透明的源图像和目标图像。
 DisplacementMapFilter — 此滤镜可使用不透明或透明的源图像和目标图像，但源图像和目标图像的格式必须相同。
 引发
 TypeError — sourceBitmapData、sourceRect、destPoint 或滤镜为空。
 IllegalOperationError — BitmapData 对象的透明度与滤镜操作不兼容。 
 ************************************************************************************************/