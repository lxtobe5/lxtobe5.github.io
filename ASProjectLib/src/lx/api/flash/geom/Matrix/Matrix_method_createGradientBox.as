package lx.api.flash.geom.Matrix
{
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_createGradientBox extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			var colors:Array = [0x00FF00, 0x0000FF];
			var alphas:Array = [100, 100];
			var ratios:Array = [0, 0xFF];
			
			var sprite:Sprite = new Sprite();
			matrix.createGradientBox(50, 50, Math.PI/4, 0, 0);
			traceString(matrix.toString());
			//			(a=0.021579186437577745, b=0.02157918643757774, c=-0.02157918643757774, d=0.021579186437577745, tx=25, ty=25)
			sprite.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, matrix);
			sprite.graphics.drawRect(0, 0, 50, 50);
			
			matrix.createGradientBox(25, 25, 0, 0, 0);
			traceString(matrix.toString());
			//			(a=0.0152587890625, b=0, c=0, d=0.0152587890625, tx=12.5, ty=12.5)
			sprite.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, matrix);
			sprite.graphics.drawRect(0, 60, 50, 50);
			
			matrix.createGradientBox(25, 25, 0, 25, 0);
			traceString(matrix.toString());
			//			(a=0.0152587890625, b=0, c=0, d=0.0152587890625, tx=37.5, ty=12.5)
			sprite.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, matrix);
			sprite.graphics.drawRect(0, 120, 50, 50);
			
			matrix.createGradientBox(50, 50, 0, 0, 0);
			traceString(matrix.toString());
			//			(a=0.030517578125, b=0, c=0, d=0.030517578125, tx=25, ty=25)
			sprite.graphics.beginGradientFill(GradientType.LINEAR, colors, alphas, ratios, matrix);
			sprite.graphics.drawRect(0, 180, 50, 50);
			
			tracePattern(sprite);
		}
	}
}
/************************************************************************************************
 createGradientBox()	方法	 
 public function createGradientBox(width:Number, height:Number, rotation:Number = 0, tx:Number = 0, ty:Number = 0):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 创建 Graphics 类的 beginGradientFill() 和 lineGradientStyle() 方法所需的矩阵的特定样式。宽度和高度被缩放为 scaleX/scaleY 对，而 tx/ty 值偏移了宽度和高度的一半。
 例如，假设渐变具有以下特性：
 GradientType.LINEAR
 绿色和蓝色这两种颜色（比例数组设置为 [0, 255]）
 SpreadMethod.PAD
 InterpolationMethod.LINEAR_RGB
 参数
 width:Number — 渐变框的宽度。
 height:Number — 渐变框的高度。
 rotation:Number (default = 0) — 旋转量（以弧度为单位）。
 tx:Number (default = 0) — 沿 x 轴向右平移的距离（以像素为单位）。此值将偏移 width 参数的一半。
 ty:Number (default = 0) — 沿 y 轴向下平移的距离（以像素为单位）。此值将偏移 height 参数的一半。 
 ************************************************************************************************/