package lx.api.flash.geom.Matrix
{
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_identity extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix(1,2,3,4,5,6);
			traceString(matrix);
			//			(a=1, b=2, c=3, d=4, tx=5, ty=6)
			matrix.identity();
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=0, ty=0)
		}
	}
}
/************************************************************************************************
 identity()	方法	 
 public function identity():void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 为每个矩阵属性设置一个值，该值将导致 null 转换。通过应用恒等矩阵转换的对象将与原始对象完全相同。
 调用 identity() 方法后，生成的矩阵具有以下属性：a=1、b=0、c=0、d=1、tx=0 和 ty=0。
 在矩阵表示法中，恒等矩阵如下所示：
 1 0 0
 0 1 0
 0 0 1
 ************************************************************************************************/