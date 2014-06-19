package lx.api.flash.geom.Matrix
{
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_concat extends Output
	{
		override public function run():void
		{
			var matrix1:Matrix = new Matrix(1,0,0,4,0,7);
			traceString(matrix1);
			//			(a=1, b=0, c=0, d=4, tx=0, ty=7)
			var matrix2:Matrix = new Matrix(1,1,3,1,5,0);
			//			(a=1, b=1, c=3, d=1, tx=5, ty=0)
			traceString(matrix2);
			
			matrix1.concat(matrix2);
			//			矩形乘法
			//			          1  0  0  
			//			          0  4  7
			//			1 3 5  1 12 0
			//			1 1 0  1  4  0
			//			a = matrix1.a*matrix2.a + matrix1.b*matrix2.c = 1;
			//			b = matrix1.a*matrix2.b + matrix1.b*matrix2.d = 1;
			//			c = matrix1.c*matrix2.a + matrix1.d*matrix2.b = 12;
			//			d = matrix1.c*matrix2.b + matrix1.d*matrix2.d = 4;
			//			tx = matrix1.tx*matrix2.a + matrix1.ty*matrix2.c + matrix2.tx = 26;
			//			ty = matrix1.tx*matrix2.b + matrix1.ty*matrix2.d + matrix2.ty = 7;
			
			traceString(matrix1);
			//			(a=1, b=1, c=12, d=4, tx=26, ty=7)
			traceString(matrix2);
			//			(a=1, b=1, c=3, d=1, tx=5, ty=0)
		}
	}
}
/************************************************************************************************
 concat()	方法	 
 public function concat(m:Matrix):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 将某个矩阵与当前矩阵连接，从而将这两个矩阵的几何效果有效地结合在一起。在数学术语中，将两个矩阵连接起来与使用矩阵乘法将它们结合起来是相同的。
 例如，如果矩阵 m1 使用系数 4 缩放某个对象，而矩阵 m2 使用 1.5707963267949 弧度 (Math.PI/2) 旋转该对象，则 m1.concat(m2) 会将 m1 转换为一个使用系数 4 缩放对象并使用 Math.PI/2 弧度旋转该对象的矩阵。
 此方法将源矩阵替换为连接矩阵。如果要在不更改两个源矩阵中的任何一个的情况下连接这两个矩阵，则可以通过使用 clone() 方法首先复制源矩阵，如“类示例”部分中所示。
 参数
 m:Matrix — 要连接到源矩阵的矩阵。 
 ************************************************************************************************/