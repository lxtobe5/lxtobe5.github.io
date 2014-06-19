package lx.api.flash.geom.Matrix
{
	import flash.display.Shape;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_createBox extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			matrix.createBox(2,1,30,100,100);
			
			var shape:Shape = new Shape();
			shape.graphics.beginFill(0);
			shape.graphics.drawRect(0,0,50,30);
			shape.graphics.endFill();
			
			shape.transform.matrix = matrix;
			
			tracePattern(shape);
		}
	}
}
/************************************************************************************************
 createBox()	方法	 
 public function createBox(scaleX:Number, scaleY:Number, rotation:Number = 0, tx:Number = 0, ty:Number = 0):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 包括用于缩放、旋转和转换的参数。当应用于矩阵时，该方法会基于这些参数设置矩阵的值。
 通过使用 createBox() 方法，您可以获得与依次应用 identity()、rotate()、scale() 和 translate() 方法时得到的矩阵相同的矩阵。例如，mat1.createBox(2,2, ,Math.PI/4, 100, 100) 具有与如下所示代码相同的效果：
 import flash.geom.Matrix;
 var mat1:Matrix = new Matrix();
 mat1.identity();
 mat1.rotate(Math.PI/4);
 mat1.scale(2,2);
 mat1.translate(10,20);
 参数
 scaleX:Number — 水平缩放所用的系数。
 scaleY:Number — 垂直缩放所用的系数。
 rotation:Number (default = 0) — 旋转量（以弧度为单位）。
 tx:Number (default = 0) — 沿 x 轴向右平移（移动）的像素数。
 ty:Number (default = 0) — 沿 y 轴向下平移（移动）的像素数。 
 ************************************************************************************************/