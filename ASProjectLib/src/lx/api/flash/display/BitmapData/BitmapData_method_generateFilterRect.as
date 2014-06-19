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
	public class BitmapData_method_generateFilterRect extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(100, 100, false, 0xFFCC00);
			var rectangle:Rectangle = new Rectangle(20, 20, 50, 40);
			bitmapdata.fillRect(rectangle, 0xFF0000);
			
			var point:Point = new Point(20, 20);
			var filter:BlurFilter = new BlurFilter(8,8);
			
			traceString(bitmapdata.generateFilterRect(rectangle, filter));
			//			(x=16, y=16, w=58, h=48)  滤镜将要占据的区域
			
			bitmapdata.applyFilter(bitmapdata, rectangle, point, filter);
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
		}
	}
}
/************************************************************************************************
 generateFilterRect()	方法	 
 public function generateFilterRect(sourceRect:Rectangle, filter:BitmapFilter):Rectangle
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0
 已知 BitmapData 对象、源矩形和滤镜对象，确定 applyFilter() 方法调用所影响的目标矩形。
 例如，模糊滤镜影响的区域通常比原始图像大。由一个默认 BlurFilter 实例过滤的 100 x 200 像素图像，其中 blurX = blurY = 4 将生成一个目标矩形 (-2,-2,104,204)。generateFilterRect() 方法使您可以提前了解到此目标矩形的大小，以便能够在执行滤镜操作之前相应地调整目标图像的大小。
 有些滤镜会基于源图像大小裁剪其目标矩形。例如，一个内部 DropShadow 不会生成比其源图像大的结果。在此 API 中，BitmapData 对象用作源范围而不是源 rect 参数。
 参数
 sourceRect:Rectangle — 一个矩形，它定义要用作输入的源图像的区域。
 filter:BitmapFilter — 一个滤镜对象，用于计算目标矩形。
 返回
 Rectangle — 一个目标矩形，它是使用图像、sourceRect 参数和滤镜计算得到的。
 引发
 TypeError — sourceRect 或滤镜为空。 
 ************************************************************************************************/