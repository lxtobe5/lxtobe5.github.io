package lx.api.flash.display.BitmapData
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_hitTest extends Output
	{
		override public function run():void
		{
			var point:Point = new Point(0,0);
			
			/********************************  TOP  fillColor的alpha<ff  color=0  ********************************/
			var bitmapdata:BitmapData = new BitmapData(100,100,true,0xde000000);
			
			traceString(bitmapdata.hitTest(point,0xdd,point));
			//			true  0xdd < 0xde  firstAlphaThreshold小于fillColor的alpha
			
			traceString(bitmapdata.hitTest(point,0xde,point));
			//			false  0xde = 0xde  firstAlphaThreshold等于fillColor的alpha
			
			traceString(bitmapdata.hitTest(point,0xdf,point));
			//			false  0xdf > 0xde  firstAlphaThreshold大于fillColor的alpha
			/********************************  BOTTOM  fillColor的alpha<ff  color=0  ********************************/
			
			/********************************  TOP  fillColor的alpha<ff  color>0  ********************************/
			bitmapdata = new BitmapData(100,100,true,0xde000001);
			
			traceString(bitmapdata.hitTest(point,0xdd,point));
			//			true  0xdd < 0xde  firstAlphaThreshold小于fillColor的alpha
			
			traceString(bitmapdata.hitTest(point,0xde,point));
			//			true  0xde = 0xde  firstAlphaThreshold等于fillColor的alpha  但颜色值大于0
			
			traceString(bitmapdata.hitTest(point,0xdf,point));
			//			false  0xdf > 0xde  firstAlphaThreshold大于fillColor的alpha
			/********************************  BOTTOM  fillColor的alpha<ff  color>0  ********************************/
			
			/********************************  TOP  fillColor的alpha=ff  color=0  ********************************/
			bitmapdata = new BitmapData(100,100,true,0xff000000);
			
			traceString(bitmapdata.hitTest(point,0xee,point));
			//			true  0xee < 0xff  firstAlphaThreshold小于fillColor的alpha
			
			traceString(bitmapdata.hitTest(point,0xff,point));
			//			false  0xff = 0xff  firstAlphaThreshold等于fillColor的alpha
			/********************************  BOTTOM  fillColor的alpha=ff  color=0  ********************************/
			
			/********************************  TOP  fillColor的alpha=ff  color>0  ********************************/
			bitmapdata = new BitmapData(100,100,true,0xff000001);
			
			traceString(bitmapdata.hitTest(point,0xee,point));
			//			true  0xee < 0xff  firstAlphaThreshold小于fillColor的alpha
			
			traceString(bitmapdata.hitTest(point,0xff,point));
			//			true  0xff = 0xff  firstAlphaThreshold等于fillColor的alpha  但颜色值大于0
			/********************************  BOTTOM  fillColor的alpha=ff  color>0  ********************************/
			
			/********************************  TOP  fillColor的alpha=0  color=0  ********************************/
			bitmapdata = new BitmapData(100,100,true,0x00000000);
			
			traceString(bitmapdata.hitTest(point,0xee,point));
			//			false
			
			traceString(bitmapdata.hitTest(point,0x00,point));
			//			false
			/********************************  BOTTOM  fillColor的alpha=0  color=0  ********************************/
			
			/********************************  TOP  fillColor的alpha=0  color>0  ********************************/
			bitmapdata = new BitmapData(100,100,true,0x00000001);
			
			traceString(bitmapdata.hitTest(point,0xee,point));
			//			false
			
			traceString(bitmapdata.hitTest(point,0x00,point));
			//			false
			/********************************  BOTTOM  fillColor的alpha=0  color>0  ********************************/
			
			/********************************  TOP  fillColor的alpha=0xff  color>0  secondObject=Point  ********************************/
			var pt:Point = new Point(80,80);
			bitmapdata = new BitmapData(100,100,true,0xff000001);
			traceString(bitmapdata.hitTest(point,0x00,pt));
			//			true
			
			pt = new Point(101,101);
			traceString(bitmapdata.hitTest(point,0x00,pt));
			//			false  pt的位置超出bitmapdata
			/********************************  BOTTOM  fillColor的alpha=0xff  color>0  secondObject=Point  ********************************/
			
			/********************************  TOP  fillColor的alpha=0xff  color>0  secondObject=Rectangle  ********************************/
			var rectangle:Rectangle = new Rectangle(50,50,100,100);
			bitmapdata = new BitmapData(100,100,true,0xff000001);
			traceString(bitmapdata.hitTest(point,0xff,rectangle));
			//			true
			/********************************  BOTTOM  fillColor的alpha=0xff  color>0  secondObject=Rectangle  ********************************/
			
			var bmd:BitmapData = new BitmapData(50,50,true,0xee100000);
			pt = new Point(10,10);
			bitmapdata = new BitmapData(100,100,true,0xff000001);
			traceString(bitmapdata.hitTest(point,0xff,bmd,pt,0xee));
			//			true  0xff=0xff  0xee=0xee  color>0
			
			traceString(bitmapdata.hitTest(point,0xff,bmd,pt,0xff));
			//			false  0xff=0xff  0xff>0xee
		}
	}
}
/************************************************************************************************
 hitTest()	方法	 
 public function hitTest(firstPoint:Point, firstAlphaThreshold:uint, secondObject:Object, secondBitmapDataPoint:Point = null, secondAlphaThreshold:uint = 1):Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 在一个位图图像与一个点、矩形或其他位图图像之间执行像素级的点击检测。根据定义，点击区域是指一个不透明像素或两个重叠的不透明像素上的点或矩形的重叠部分。在执行点击测试时，将不会考虑两个对象中任何一个对象的拉伸、旋转或其他变形。
 如果某个图像是不透明图像，则此方法会将其视为完全不透明的矩形。两个图像必须是透明图像才能执行判断透明度的像素级点击测试。当您在测试两个透明图像时，Alpha 阈值参数将控制哪些 Alpha 通道值（从 0 到 255）将被视为是不透明的。
 参数
 firstPoint:Point — 任意坐标空间中 BitmapData 图像的左上角的位置。在定义 secondBitmapPoint 参数时，使用了相同的坐标空间。
 firstAlphaThreshold:uint — 最小的 Alpha 通道值，此点击测试将其视为不透明的。
 secondObject:Object — 一个 Rectangle、Point、Bitmap 或 BitmapData 对象。
 secondBitmapDataPoint:Point (default = null) — 一个点，用于定义第二个 BitmapData 对象中的一个像素位置。仅当 secondObject 的值是 BitmapData 对象时使用此参数。
 secondAlphaThreshold:uint (default = 1) — 最小的 Alpha 通道值，它在第二个 BitmapData 对象中被视为不透明的。仅当 secondObject 的值是 BitmapData 对象，并且这两个 BitmapData 对象都为透明时使用此参数。
 返回
 Boolean — 如果发生点击，则值为 true；否则为 false。
 引发
 ArgumentError — secondObject 参数不是 Point、Rectangle、Bitmap 或 BitmapData 对象。
 TypeError — firstPoint 为空。 
 ************************************************************************************************/