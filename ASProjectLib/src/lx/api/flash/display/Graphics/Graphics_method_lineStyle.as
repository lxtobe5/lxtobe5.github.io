package lx.api.flash.display.Graphics
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_lineStyle extends Output
	{
		override public function run():void
		{
			//测试pixelHinting
			var roundRect1:Sprite = new Sprite();
			roundRect1.graphics.lineStyle(1,0,1,false);
			roundRect1.graphics.drawRoundRect(0,0,50,50,10,10);
			roundRect1.graphics.endFill();
			roundRect1.x = 10;
			tracePattern(roundRect1);
			
			var roundRect2:Sprite = new Sprite();
			roundRect2.graphics.lineStyle(1,0,1,true);
			roundRect2.graphics.drawRoundRect(0,0,50,50,10,10);
			roundRect2.graphics.endFill();
			roundRect2.x = 70;
			tracePattern(roundRect2);
			
			//测试LineScaleMode
			var circle1:Sprite = new Sprite();
			circle1.graphics.lineStyle(8,0,1,false,LineScaleMode.NORMAL);
			circle1.graphics.drawCircle(0,0,15);
			circle1.graphics.endFill();
			circle1.x = 25;
			circle1.y = 120;
			circle1.scaleY = 4;
			tracePattern(circle1);
			
			var circle2:Sprite = new Sprite();
			circle2.graphics.lineStyle(8,0,1,false,LineScaleMode.NONE);
			circle2.graphics.drawCircle(0,0,15);
			circle2.graphics.endFill();
			circle2.x = 90;
			circle2.y = 120;
			circle2.scaleY = 4;
			tracePattern(circle2);
			
			//测试CapsStyle
			
			var line1:Sprite = new Sprite();
			line1.graphics.lineStyle(30,0,1,false,LineScaleMode.NORMAL,CapsStyle.NONE);
			line1.graphics.moveTo(10,250);
			line1.graphics.lineTo(110,250);
			tracePattern(line1);
			
			var line2:Sprite = new Sprite();
			line2.graphics.lineStyle(30,0,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND);
			line2.graphics.moveTo(10,290);
			line2.graphics.lineTo(110,290);
			tracePattern(line2);
			
			var line3:Sprite = new Sprite();
			line3.graphics.lineStyle(30,0,1,false,LineScaleMode.NORMAL,CapsStyle.SQUARE);
			line3.graphics.moveTo(10,330);
			line3.graphics.lineTo(110,330);
			tracePattern(line3);
			
			//JointStyle
			var joint1:Sprite = new Sprite();
			joint1.graphics.lineStyle(8,0,1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.BEVEL);
			joint1.graphics.moveTo(10,370);
			joint1.graphics.lineTo(60,370);
			joint1.graphics.lineTo(30,400);
			tracePattern(joint1);
			
			var joint2:Sprite = new Sprite();
			joint2.graphics.lineStyle(8,0,1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.MITER);
			joint2.graphics.moveTo(10,410);
			joint2.graphics.lineTo(60,410);
			joint2.graphics.lineTo(30,440);
			tracePattern(joint2);
			
			var joint3:Sprite = new Sprite();
			joint3.graphics.lineStyle(8,0,1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND);
			joint3.graphics.moveTo(10,450);
			joint3.graphics.lineTo(60,450);
			joint3.graphics.lineTo(30,480);
			tracePattern(joint3);
		}
	}
}
/************************************************************************************************
 lineStyle	()	方法	 
public function lineStyle(thickness:Number = NaN, color:uint = 0, alpha:Number = 1.0, pixelHinting:Boolean = false, scaleMode:String = "normal", caps:String = null, joints:String = null, miterLimit:Number = 3):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

指定一种线条样式以用于随后对 lineTo() 或 drawCircle() 等 Graphics 方法的调用。线条样式仍然有效，直到您使用不同的参数调用 lineGradientStyle() 方法、lineBitmapStyle() 方法或 lineStyle() 方法。

可以在绘制路径的中间调用 lineStyle() 方法以为路径中的不同线段指定不同的样式。

注意：调用 clear() 方法会将线条样式设置回 undefined。

注意：Flash Lite 4 仅支持前 3 个参数（thickness、color 和 alpha）。

参数
	thickness:Number (default = NaN) — 一个整数，以点为单位表示线条的粗细；有效值为 0 到 255。如果未指定数字，或者未定义该参数，则不绘制线条。如果传递的值小于 0，则默认值为 0。值 0 表示极细的粗细；最大粗细为 255。如果传递的值大于 255，则默认值为 255。
 
	color:uint (default = 0) — 线条的十六进制颜色值（例如，红色为 0xFF0000，蓝色为 0x0000FF 等）。如果未指明值，则默认值为 0x000000（黑色）。可选。
 
	alpha:Number (default = 1.0) — 表示线条颜色的 Alpha 值的数字；有效值为 0 到 1。如果未指明值，则默认值为 1（纯色）。如果值小于 0，则默认值为 0。如果值大于 1，则默认值为 1。
 
	pixelHinting:Boolean (default = false) — （在 Flash Lite 4 中不受支持）布尔型值，指定是否提示笔触采用完整像素。它同时影响曲线锚点的位置以及线条笔触大小本身。在 pixelHinting 设置为 true 的情况下，线条宽度会调整到完整像素宽度。在 pixelHinting 设置为 false 的情况下，对于曲线和直线可能会出现脱节。例如，下面的插图显示了 Flash Player 或 Adobe AIR 如何呈现两个相同的圆角矩形，不同之处是 lineStyle() 方法中使用的 pixelHinting 参数的设置不同（图像已放大 200% 以强调差异）：

pixelHinting 为 false，pixelHinting 为 true

如果未提供值，则线条不使用像素提示。
 
	scaleMode:String (default = "normal") — (在 Flash Lite 4 中不支持）LineScaleMode 类的值，用于指定要使用的比例模式：

    LineScaleMode.NORMAL -- 在缩放对象时总是缩放线条的粗细（默认值）。
    LineScaleMode.NONE -- 从不缩放线条粗细。
    LineScaleMode.VERTICAL -- 如果仅 垂直缩放对象，则不缩放线条粗细。例如，考虑下面的圆形，它们是用一个像素的线条绘制的，每个圆的 scaleMode 参数都被设置为 LineScaleMode.VERTICAL。左边的圆仅在垂直方向上缩放，而右边的圆则同时在垂直和水平方向上缩放：

    一个在垂直方向缩放的圆和一个在垂直和水平方向同时缩放的圆。
    LineScaleMode.HORIZONTAL -- 如果仅 水平缩放对象，则不缩放线条粗细。例如，考虑下面的圆形，它们是用一个像素的线条绘制的，每个圆的 scaleMode 参数都被设置为 LineScaleMode.HORIZONTAL。左边的圆仅在水平方向上缩放，而右边的圆则同时在垂直和水平方向上缩放：

    一个在水平方向缩放的圆和一个在水平和垂直方向同时缩放的圆。

 
	caps:String (default = null) — (在 Flash Lite 4 中不支持）用于指定线条末端处端点类型的 CapsStyle 类的值。有效值为：CapsStyle.NONE、CapsStyle.ROUND 和 CapsStyle.SQUARE。如果未表示值，则 Flash 使用圆头端点。

例如，以下图示显示了不同的 capsStyle 设置。对于每种设置，插图显示了一条粗细为 30 的蓝色线条（应用 capsStyle 的线条），以及重叠于其上的粗细为 1 的黑色线条（未应用 capsStyle 的线条）：

NONE、ROUND 和 SQUARE
 
	joints:String (default = null) — (在 Flash Lite 4 中不支持）JointStyle 类的值，指定用于拐角的连接外观的类型。有效值为：JointStyle.BEVEL、JointStyle.MITER 和 JointStyle.ROUND。如果未表示值，则 Flash 使用圆角连接。

例如，以下图示显示了不同的 joints 设置。对于每种设置，插图显示了一条粗细为 30 的带拐角的蓝色线条（应用 jointStyle 的线条），以及重叠于其上的粗细为 1 的带拐角的黑色线条（未应用 jointStyle 的线条）：

MITER、ROUND 和 BEVEL

注意：对于设置为 JointStyle.MITER 的 joints，您可以使用 miterLimit 参数限制尖角的长度。
 
	miterLimit:Number (default = 3) — (在 Flash Lite 4 中不支持）用于表示剪切斜接的极限值的数字。有效值的范围是 1 到 255（超出该范围的值将舍入为 1 或 255）。此值只可用于 jointStyle 设置为 "miter" 的情况下。miterLimit 值表示向外延伸的尖角可以超出角边相交所形成的结合点的长度。此值表示为线条 thickness 的因子。例如，miterLimit 因子为 2.5 且 thickness 为 10 像素时，尖角将在 25 像素处切断。

例如，请考虑下列带拐角的线条，每个线条都以 thickness 20 进行绘制，但它们的 miterLimit 分别设置为 1、2 和 4。重叠在其上的黑色参考线条显示了结合处的联结点：

miterLimit 设置为 1、2 和 4 的线条

请注意，对于给定的 miterLimit 值，会有一个被切断的尖角的特定最大角度。下表列出了部分示例：
miterLimit 值：	小于此角度将被切断：
1.414	90 度
2	60 度
4	30 度
8	15 度
 ************************************************************************************************/