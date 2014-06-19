package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.BlendMode;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_draw extends Output
	{
		override public function run():void
		{
			var textField:TextField = new TextField();
			textField.text = 'hello world';
			
			var bitmapdata:BitmapData = new BitmapData(60,16,false,0xffcc00);
			bitmapdata.draw(textField);
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			
			bitmapdata = new BitmapData(60,16,false,0xff1100);
			bitmapdata.draw(textField);
			bitmapdata.draw(textField);
			bitmapdata.draw(textField);
			bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			bitmap.y = 30;
			//			加重描绘文字
			
			var rad:Number = Math.PI/4; //弧度为单位的角度
			bitmapdata = new BitmapData(100,50,false,0xff11ee);
			var matrix:Matrix = new Matrix(1,0,0,1.5,0,0);
			textField.autoSize = TextFieldAutoSize.LEFT;
			bitmapdata.draw(textField,matrix);
			bitmap = new Bitmap(bitmapdata);
			bitmap.transform.matrix = new Matrix(Math.cos(rad),Math.sin(rad),-Math.sin(rad),Math.cos(rad),100,0);
			tracePattern(bitmap);
			
			bitmapdata = new BitmapData(100,30,false,0);
			textField.textColor = 0xff0000;
			matrix = new Matrix(1,0,0,1.5,0,0);
			var colorTransform:ColorTransform = new ColorTransform(1,1,1,1,1,0,255); //改变文字原来的颜色
			bitmapdata.draw(textField,matrix,colorTransform);
			bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			bitmap.x = 200;
			
			bitmapdata = new BitmapData(100,30,false,0xeeeeee);
			textField.textColor = 0xff0000;
			matrix = new Matrix(1,0,0,1.5,0,0);
			colorTransform = new ColorTransform(1,1,1,1,1,0,0,255); //改变文字原来的颜色
			bitmapdata.draw(textField,matrix,colorTransform,BlendMode.DIFFERENCE); //文字得到更明亮的颜色
			bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			bitmap.x = 310;
			
			bitmapdata = new BitmapData(100,30,false,0x666666);
			textField.textColor = 0xff0000;
			matrix = new Matrix(1,0,0,1.5,0,0);
			var rectangle:Rectangle = new Rectangle(0,0,50,50);
			colorTransform = new ColorTransform(1,1,1,1,1,0,0,255); //改变文字原来的颜色
			bitmapdata.draw(textField,matrix,colorTransform,BlendMode.INVERT,rectangle); //文字超出区域以外的部分被截掉
			bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			bitmap.y = 90;
			
			bitmapdata = new BitmapData(100,80,false,0x999999);
			textField.textColor = 0xff0000;
			matrix = new Matrix(1,0,0,3,0,0);
			rectangle = new Rectangle(0,0,100,50);
			colorTransform = new ColorTransform(1,1,1,1,1,0,0,255); //改变文字原来的颜色
			bitmapdata.draw(textField,matrix,colorTransform,BlendMode.ADD,rectangle,true); //文字平滑
			bitmap = new Bitmap(bitmapdata);
			tracePattern(bitmap);
			bitmap.x = 150;
			bitmap.y = 90;
		}
	}
}
/************************************************************************************************
 draw()	方法	 
 public function draw(source:IBitmapDrawable, matrix:Matrix = null, colorTransform:flash.geom:ColorTransform = null, blendMode:String = null, clipRect:Rectangle = null, smoothing:Boolean = false):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 使用 Flash 运行时矢量渲染器在位图图像上绘制 source 显示对象。可以指定 matrix、colorTransform、blendMode 和目标 clipRect 参数来控制呈现的执行方式。您可以根据需要指定是否应在缩放时对位图进行平滑处理（这只适用于源对象是 BitmapData 对象的情况）。
 注意：drawWithQuality() 方法与 draw() 方法非常相似，但不使用 Stage.quality 属性确定矢量呈现的品质，您需要为 drawWithQuality() 方法指定 quality 参数。
 此方法与如何在创作工具界面中使用对象的标准矢量渲染器来绘制对像直接对应。
 源显示对象不对此调用使用其任何已应用的转换。它会被视为存在于库或文件中，没有矩阵转换、没有颜色转换，也没有混合模式。要使用对象自己的 transform 属性来绘制显示对象（如影片剪辑），可以将其 transform 属性对象复制到使用 BitmapData 对象的 Bitmap 对象的 transform 属性。
 在 Flash Player 9.0.115.0 及更高版本和 Adobe AIR 中，通过 RTMP 支持此方法。在 Flash Media Server 上，可以在服务器端脚本中控制对流的访问。有关详细信息，请参阅 Server-Side ActionScript Language Reference for Adobe Flash Media Server《Adobe Flash Media Server 服务器端 ActionScript 语言参考》）中的 Client.audioSampleAccess 和 Client.videoSampleAccess。
 如果 source 对象和其所有子对象（如果是 Sprite 或 MovieClip 对象）与调用方不来自同一个域，或者不在调用方可通过调用 Security.allowDomain() 方法访问的内容中，则调用 draw() 将引发 SecurityError 异常。此限制不适用于应用程序安全沙箱中的 AIR 内容。
 对于使用所加载的位图图像作为 source 也有一些限制。如果所加载的图像来自与调用方相同的域，则调用 draw() 方法成功。此外，图像服务器上的跨域策略文件可以向调用 draw() 方法的 SWF 内容的域授予权限。在这种情况下，必须设置 LoaderContext 对象的 checkPolicyFile 属性，并在调用用于加载图像的 Loader 对象的 load() 方法时使用 LoaderContext 对象作为 context 参数。这些限制不适用于应用程序安全沙箱中的 AIR 内容。
 在 Windows 中，draw() 方法无法在 Adobe AIR 的 HTMLLoader 对象中捕获嵌入 HTML 页的 SWF 内容。
 draw() 方法无法捕获 Adobe AIR 中的 PDF 内容。也无法捕获 Adobe AIR 中 wmode 属性设置为“window”的 HTML 中嵌入的 SWF 内容。
 参数
 source:IBitmapDrawable — 要绘制到 BitmapData 对象的显示对象或 BitmapData 对象。（DisplayObject 和 BitmapData 类实现 IBitmapDrawable 接口。）
 matrix:Matrix (default = null) — 一个 Matrix 对象，用于缩放、旋转位图或转换位图的坐标。如果不想将矩阵转换应用于图像，请将此参数设置为恒等矩阵（使用默认 new Matrix() 构造函数创建），或传递 null 值。
 colorTransform:flash.geom:ColorTransform (default = null) — 一个 ColorTransform 对象，用于调整位图的颜色值。如果没有提供任何对象，则不会转换位图图像的颜色。如果必须传递此参数但又不想转换图像，请将此参数设置为使用默认 new ColorTransform() 构造函数创建的 ColorTransform 对象。
 blendMode:String (default = null) — 来自 flash.display.BlendMode 类的一个字符串值，指定要应用于所生成位图的混合模式。
 clipRect:Rectangle (default = null) — 一个 Rectangle 对象，定义要绘制的源对象的区域。 如果不提供此值，则不会进行剪裁，并且将绘制整个源对象。
 smoothing:Boolean (default = false) — 一个布尔值，用于确定因在 matrix 参数中指定缩放或旋转而对 BitmapData 对象进行缩放或旋转以后，是否对该对象进行平滑处理。smoothing 参数只有在 source 参数是 BitmapData 对象时才适用。在将 smoothing 设置为 false 的情况下，经过旋转或缩放的 BitmapData 图像可能会显得像素化或带有锯齿。例如，下面两个图像的 source 参数使用同一个 BitmapData 对象，但对左侧的图像，smoothing 参数设置为 true，对右侧的图像，该参数设置为 false：
 两个图像：左边的图像经过平滑处理，右边的图像未经过平滑处理。
 在将 smoothing 设置为 true 的情况下绘制位图要比在将 smoothing 设置为 false 的情况下执行相同操作更为缓慢。
 引发
 ArgumentError — source 参数不是 BitmapData 或 DisplayObject 对象。
 SecurityError — source 对象及其所有子对象（如果是 Sprite 或 MovieClip 对象）与调用方不来自同一个域，或者不在调用方可通过调用 Security.allowDomain() 方法访问的内容中。此限制不适用于应用程序安全沙箱中的 AIR 内容。
 ArgumentError — 源为空或不是有效的 IBitmapDrawable 对象。 
 ************************************************************************************************/