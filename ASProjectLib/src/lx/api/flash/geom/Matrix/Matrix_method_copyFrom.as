package lx.api.flash.geom.Matrix
{
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_copyFrom extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix(1,2,3,4,5,6);
			
			var matrixCopy:Matrix = new Matrix();
			matrixCopy.copyFrom(matrix);
			traceString(matrixCopy);
			//			(a=1, b=2, c=3, d=4, tx=5, ty=6)
			traceString(matrix);
			//			(a=1, b=2, c=3, d=4, tx=5, ty=6)
		}
	}
}
/************************************************************************************************
 copyFrom()	方法	 
 public function copyFrom(sourceMatrix:Matrix):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 11, AIR 3.0, Flash Lite 4
 将源 Point 对象中的所有矩阵数据复制到调用方 Matrix 对象中。
 参数
 sourceMatrix:Matrix — 要从中复制数据的 Matrix 对象。 
 ************************************************************************************************/