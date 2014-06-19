package lx.api.flash.geom.Matrix
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.geom.Point;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_transformPoint extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(0);
			sprite.graphics.drawRect(0,0,100,100);
			tracePattern(sprite);
			var point:Point = new Point(50,50);
			matrix.translate(matrix.transformPoint(point).x,matrix.transformPoint(point).y);
			sprite.transform.matrix = matrix;
			traceString(matrix.transformPoint(point));
			//			(x=100, y=100)
		}
	}
}
/************************************************************************************************
 transformPoint()	方法	 
 public function transformPoint(point:Point):Point
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 返回将 Matrix 对象表示的几何转换应用于指定点所产生的结果。
 参数
 point:Point — 想要获得其矩阵转换结果的点。
 返回
 Point — 由应用矩阵转换所产生的点。 
 ************************************************************************************************/