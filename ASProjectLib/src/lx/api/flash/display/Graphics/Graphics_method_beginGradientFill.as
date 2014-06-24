package lx.api.flash.display.Graphics
{
	import flash.display.GradientType;
	import flash.display.InterpolationMethod;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_beginGradientFill extends Output
	{
		override public function run():void
		{
			var fillType:String = GradientType.LINEAR;
			var colors:Array = [0xFF0000, 0x0000FF];
			var alphas:Array = [1, 1];
			var ratios:Array = [0x00, 0xFF];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(20, 20, 0, 0, 0);
			
			//SpreadMethod.PAD
			var spreadMethod:String = SpreadMethod.PAD;
			var  s1:Sprite = new Sprite();
			s1.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);        
			s1.graphics.drawRect(0,0,100,100);
			tracePattern(s1);
			
			//SpreadMethod.REFLECT
			spreadMethod = SpreadMethod.REFLECT;
			var s2:Sprite = new Sprite();
			s2.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod);
			s2.graphics.drawRect(0,0,100,100);
			tracePattern(s2);
			s2.y = 110;
			
			//SpreadMethod.REPEAT  默认interpolationMethod=InterpolationMethod.RGB
			spreadMethod = SpreadMethod.REPEAT;
			var s3:Sprite = new Sprite();
			s3.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod);
			s3.graphics.drawRect(0,0,100,100);
			tracePattern(s3);
			s3.y = 220;
			
			//SpreadMethod.REPEAT  interpolationMethod=InterpolationMethod.LINEAR_RGB
			var s4:Sprite = new Sprite();
			s4.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod,InterpolationMethod.LINEAR_RGB);
			s4.graphics.drawRect(0,0,100,100);
			tracePattern(s4);
			s4.y = 330;
			
			//SpreadMethod.REPEAT  interpolationMethod=InterpolationMethod.LINEAR_RGB focalPointRatio=0.75
			var s5:Sprite = new Sprite();
			s5.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod,InterpolationMethod.LINEAR_RGB,0.75);
			s5.graphics.drawRect(0,0,100,100);
			tracePattern(s5);
			s5.y = 440;
		}
	}
}
/************************************************************************************************
beginGradientFill	()	方法	 
public function beginGradientFill(type:String, colors:Array, alphas:Array, ratios:Array, matrix:Matrix = null, spreadMethod:String = "pad", interpolationMethod:String = "rgb", focalPointRatio:Number = 0):void
语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
指定一种渐变填充，用于随后调用对象的其他 Graphics 方法（如 lineTo() 或 drawCircle()）。该填充将保持有效，直到您调用 beginFill()、beginBitmapFill()、beginGradientFill() 或 beginShaderFill() 方法。调用 clear() 方法会清除填充。

只要绘制 3 个或更多个点，或者调用 endFill() 方法时，应用程序就会呈现填充。

参数

type:String — 用于指定要使用哪种渐变类型的 GradientType 类的值：GradientType.LINEAR 或 GradientType.RADIAL。
 
colors:Array — 渐变中使用的 RGB 十六进制颜色值的数组（例如，红色为 0xFF0000，蓝色为 0x0000FF，等等）。可以至多指定 15 种颜色。对于每种颜色，请在 alphas 和 ratios 参数中指定对应值。
 
alphas:Array — colors 数组中对应颜色的 alpha 值数组；有效值为 0 到 1。如果值小于 0，则默认值为 0。如果值大于 1，则默认值为 1。
 
ratios:Array — 颜色分布比率的数组；有效值为 0 到 255。该值定义 100% 采样的颜色所在位置的宽度百分比。值 0 表示渐变框中的左侧位置，255 表示渐变框中的右侧位置。
注意：此值表示渐变框中的位置，而不是最终渐变的坐标空间，最终渐变可能会比渐变框更宽或更窄。为 colors 参数中的每个值指定一个值。

例如，对于包括蓝和绿两种颜色的线性渐变，下例显示了基于不同 ratios 数组值的渐变中的颜色配比：

ratios	渐变
[0, 127]	ratios 为 0 和 127 时蓝色到绿色的线性渐变
[0, 255]	ratios 为 0 和 255 时蓝色到绿色的线性渐变
[127, 255]	ratios 为 127 和 255 时蓝色到绿色的线性渐变
数组中的值必须持续增加；例如，[0, 63, 127, 190, 255]。

matrix:Matrix (default = null) — 一个由 flash.geom.Matrix 类定义的转换矩阵。flash.geom.Matrix 类包括 createGradientBox() 方法，通过该方法可以方便地设置矩阵，以便与 beginGradientFill() 方法一起使用。
 
spreadMethod:String (default = "pad") — 用于指定要使用哪种 spread 方法的 SpreadMethod 类的值：SpreadMethod.PAD、SpreadMethod.REFLECT 或 SpreadMethod.REPEAT。
例如，请考虑两种颜色之间的简单线性渐变：

     import flash.geom.*
     import flash.display.*
     var fillType:String = GradientType.LINEAR;
     var colors:Array = [0xFF0000, 0x0000FF];
     var alphas:Array = [1, 1];
     var ratios:Array = [0x00, 0xFF];
     var matr:Matrix = new Matrix();
     matr.createGradientBox(20, 20, 0, 0, 0);
     var spreadMethod:String = SpreadMethod.PAD;
     this.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);        
     this.graphics.drawRect(0,0,100,100);
     
此示例将 SpreadMethod.PAD 用于 spread 方法，并且渐变填充看起来将类似于下图：

以 SpreadMethod.PAD 线性渐变

如果将 SpreadMethod.REFLECT 用于 spread 方法，则渐变填充看起来将类似于下图：

以 SpreadMethod.REFLECT 线性渐变

如果将 SpreadMethod.REPEAT 用于 spread 方法，则渐变填充看起来将类似于下图：

以 SpreadMethod.REPEAT 线性渐变

 
interpolationMethod:String (default = "rgb") — 用于指定要使用哪个值的 InterpolationMethod 类的值：InterpolationMethod.LINEAR_RGB 或 InterpolationMethod.RGB
例如，假设有两种颜色之间的简单线性渐变（spreadMethod 参数设置为 SpreadMethod.REFLECT）。不同的插值方法对外观的影响如下所示：

以 InterpolationMethod.LINEAR_RGB 线性渐变	以 InterpolationMethod.RGB 线性渐变
InterpolationMethod.LINEAR_RGB	InterpolationMethod.RGB
 
focalPointRatio:Number (default = 0) — 一个控制渐变的焦点位置的数字。0 表示焦点位于中心。1 表示焦点位于渐变圆的一条边界上。-1 表示焦点位于渐变圆的另一条边界上。小于 -1 或大于 1 的值将舍入为 -1 或 1。例如，下例显示 focalPointRatio 设置为 0.75：
 ************************************************************************************************/