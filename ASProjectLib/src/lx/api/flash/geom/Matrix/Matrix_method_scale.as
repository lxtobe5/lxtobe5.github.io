package lx.api.flash.geom.Matrix
{
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_scale extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=0, ty=0)
			matrix.scale(2,3);
			traceString(matrix);
			//			(a=2, b=0, c=0, d=3, tx=0, ty=0)
		}
	}
}
/************************************************************************************************
 scale()	方法	 
 public function scale(sx:Number, sy:Number):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对矩阵应用缩放转换。x 轴乘以 sx，y 轴乘以 sy。
 scale() 方法将更改 Matrix 对象的 a 和 d 属性。在矩阵表示法中，当前矩阵与以下矩阵连接也产生同样的结果：
 sx 0   0
 0 sy  0
 0  0  1
 scale 方法参数的矩阵表示法
 参数
 sx:Number — 用于沿 x 轴缩放对象的乘数。
 sy:Number — 用于沿 y 轴缩放对象的乘数。 
 ************************************************************************************************/