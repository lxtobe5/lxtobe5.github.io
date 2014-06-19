package lx.api.flash.geom.Matrix
{
	import flash.display.Sprite;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_invert extends Output
	{
		override public function run():void
		{
			var sprite:Sprite = getSprite(0);
			tracePattern(sprite);
			var matrix:Matrix = new Matrix(2, 0, 0, 2, 0, 0);
			traceString(matrix);
			//			(a=2, b=0, c=0, d=2, tx=0, ty=0)
			sprite.transform.matrix = matrix;
			
			sprite = getSprite(0xff0000);
			tracePattern(sprite);
			sprite.x = 150;
			matrix = new Matrix(2, 0, 0, 2, 0, 0);
			traceString(matrix);
			//			(a=2, b=0, c=0, d=2, tx=0, ty=0)
			matrix.invert();
			traceString(matrix);
			sprite.transform.matrix = matrix;
			//			(a=0.5, b=0, c=0, d=0.5, tx=0, ty=0)
		}
		
		private function getSprite(color:uint):Sprite
		{
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(color);
			sprite.graphics.drawRect(0,0,20,20);
			return sprite;
		}
	}
}
/************************************************************************************************
 invert()	方法	 
 public function invert():void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 执行原始矩阵的逆转换。您可以将一个逆矩阵应用于对象来撤消在应用原始矩阵时执行的转换。 
 ************************************************************************************************/