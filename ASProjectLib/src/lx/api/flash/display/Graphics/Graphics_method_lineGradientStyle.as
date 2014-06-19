package lx.api.flash.display.Graphics
{
	import flash.display.GradientType;
	import flash.display.Shape;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_lineGradientStyle extends Output
	{
		override public function run():void
		{
			var myShape:Shape = new Shape();
			var gradientBoxMatrix:Matrix = new Matrix();
			
			gradientBoxMatrix.createGradientBox(200, 40, 0, 0, 0);  
			
			myShape.graphics.lineStyle(5);
			
			myShape.graphics.lineGradientStyle(GradientType.LINEAR, [0xFF0000,
				0x00FF00, 0x0000FF], [1, 1, 1], [0, 128, 255], gradientBoxMatrix);
			
			myShape.graphics.drawRect(0, 0, 200, 40);
			myShape.graphics.drawCircle(100, 120, 50);  
			
			tracePattern(myShape);
		}
	}
}
/************************************************************************************************
 lineGradientStyle	()	方法	 
public function lineGradientStyle(type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9

指定一种渐变，用于绘制线条时的笔触。

渐变线条样式将用于随后对 lineTo() 或 drawCircle() 等 Graphics 方法的调用。线条样式仍然有效，直到您使用不同的参数调用 lineStyle() 或 lineBitmapStyle() 方法或再次调用 lineGradientStyle() 方法。

可以在绘制路径的中间调用 lineGradientStyle() 方法以为路径中的不同线段指定不同的样式。

请在调用 lineGradientStyle() 方法之前调用 lineStyle() 方法以启用笔触，否则线条样式的值将为 undefined。

调用 clear() 方法会将线条样式设置回 undefined。

参数
	type:String — 用于指定要使用哪种渐变类型的 GradientType 类的值：GradientType.LINEAR 或 GradientType.RADIAL。
 
	colors:Array — 要在渐变中使用的 RGB 十六进制颜色值数组（例如，红色为 0xFF0000，蓝色为 0x0000FF 等等）。
 
	alphas:Array — colors 数组中对应颜色的 alpha 值数组；有效值为 0 到 1。如果值小于 0，则默认值为 0。如果值大于 1，则默认值为 1。
 
	ratios:Array — 颜色分布比率的数组；有效值为 0 到 255。该值定义 100% 采样的颜色所在位置的宽度百分比。值 0 表示渐变框中的左侧位置，255 表示渐变框中的右侧位置。此值表示渐变框中的位置，而不是最终渐变的坐标空间，最终渐变可能会比渐变框更宽或更窄。为 colors 参数中的每个值指定一个值。

例如，对于包含蓝和绿两种颜色的线性渐变，下图显示了基于不同 ratios 数组值的颜色配比：
ratios	渐变
[0, 127]	ratios 为 0 和 127 时蓝色到绿色的线性渐变
[0, 255]	ratios 为 0 和 255 时蓝色到绿色的线性渐变
[127, 255]	ratios 为 127 和 255 时蓝色到绿色的线性渐变

数组中的值必须持续增加；例如，[0, 63, 127, 190, 255]。
 
	matrix:Matrix (default = null) — 一个由 flash.geom.Matrix 类定义的转换矩阵。flash.geom.Matrix 类包括 createGradientBox() 方法，通过该方法可以方便地设置矩阵，以便与 lineGradientStyle() 方法一起使用。
 
	spreadMethod:String (default = "pad") — 用于指定要使用哪种 spread 方法的 SpreadMethod 类的值：

以 SpreadMethod.PAD 线性渐变	以 SpreadMethod.REFLECT 线性渐变	以 SpreadMethod.REPEAT 线性渐变
SpreadMethod.PAD	SpreadMethod.REFLECT	SpreadMethod.REPEAT

 
	interpolationMethod:String (default = "rgb") — InterpolationMethod 类中用于指定要使用的值的值。例如，假设有两种颜色之间的简单线性渐变（spreadMethod 参数设置为 SpreadMethod.REFLECT）。不同的插值方法对外观的影响如下所示：

以 InterpolationMethod.LINEAR_RGB 线性渐变	以 InterpolationMethod.RGB 线性渐变
InterpolationMethod.LINEAR_RGB	InterpolationMethod.RGB

 
	focalPointRatio:Number (default = 0) — 一个控制渐变的焦点位置的数字。值 0 表示焦点位于中心。值 1 表示焦点位于渐变圆的一条边界上。值 -1 表示焦点位于渐变圆的另一条边界上。小于 -1 或大于 1 的值将舍入为 -1 或 1。下列图像显示 focalPointRatio 为 -0.75 的渐变： 
 ************************************************************************************************/