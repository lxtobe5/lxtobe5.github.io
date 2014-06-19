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
	public class Matrix_method_deltaTransformPoint extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(0);
			sprite.graphics.drawRect(0,0,100,100);
			tracePattern(sprite);
			var point:Point = new Point(50,50);
			matrix.translate(matrix.deltaTransformPoint(point).x,matrix.deltaTransformPoint(point).y);
			sprite.transform.matrix = matrix;
			traceString(matrix.deltaTransformPoint(point));
			//			(x=50, y=50)
		}
	}
}
/************************************************************************************************
 deltaTransformPoint()	方法	 
 public function deltaTransformPoint(point:Point):Point
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 如果给定预转换坐标空间中的点，则此方法返回发生转换后该点的坐标。与使用 transformPoint() 方法应用的标准转换不同，deltaTransformPoint() 方法的转换不考虑转换参数 tx 和 ty。
 参数
 point:Point — 想要获得其矩阵转换结果的点。
 返回
 Point — 由应用矩阵转换所产生的点。 
 ************************************************************************************************/