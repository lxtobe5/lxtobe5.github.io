package lx.api.flash.geom.Matrix
{
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_translate extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=0, ty=0)
			matrix.translate(100,100);
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=100, ty=100)
		}
	}
}
/************************************************************************************************
 translate()	方法	 
 public function translate(dx:Number, dy:Number):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 沿 x 和 y 轴平移矩阵，由 dx 和 dy 参数指定。
 参数
 dx:Number — 沿 x 轴向右移动的量（以像素为单位）。
 dy:Number — 沿 y 轴向下移动的量（以像素为单位）。
 ************************************************************************************************/