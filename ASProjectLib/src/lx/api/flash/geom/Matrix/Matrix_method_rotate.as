package lx.api.flash.geom.Matrix
{
	import flash.display.Sprite;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_rotate extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix(1,0,0,1,150,0);
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=0, ty=0)
			matrix.rotate(Math.PI/4);
			traceString(matrix);
			//			(a=0.7071067811865476, b=0.7071067811865475, c=-0.7071067811865475, d=0.7071067811865476, tx=106.06601717798213, ty=106.06601717798212)
			//			a = Math.cos(Math.PI/4) = 0.7071067811865476
			//			b = Math.sin(Math.PI/4) = 0.7071067811865475
			//			c = -Math.sin(Math.PI/4) = -0.7071067811865475
			//			d = Math.cos(Math.PI/4) = 0.7071067811865476
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(0);
			sprite.graphics.drawRect(0,0,20,20);
			tracePattern(sprite);
			sprite.transform.matrix = matrix;
		}
	}
}
/************************************************************************************************
 rotate()	方法	 
 public function rotate(angle:Number):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对 Matrix 对象应用旋转转换。
 rotate() 方法将更改 Matrix 对象的 a、b、c 和 d 属性。在矩阵表示法中，当前矩阵与以下矩阵连接也产生同样的结果：
 cos(q) -sin(q) 0
 sin(q)  cos(q) 0
 0          0     1
 scale 方法参数的矩阵表示法
 参数
 angle:Number — 以弧度为单位的旋转角度。 
 ************************************************************************************************/