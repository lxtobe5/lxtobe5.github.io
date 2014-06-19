package lx.api.flash.geom.Matrix
{
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_setTo extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=0, ty=0)
			matrix.setTo(1,2,3,4,5,6);
			traceString(matrix);
			//			(a=1, b=2, c=3, d=4, tx=5, ty=6)
		}
	}
}
/************************************************************************************************
 setTo()	方法	 
 public function setTo(aa:Number, ba:Number, ca:Number, da:Number, txa:Number, tya:Number):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 11, AIR 3.0, Flash Lite 4
 将 Matrix 的成员设置为指定值
 参数
 aa:Number — 要将 Matrix 设置为的值。
 ba:Number
 ca:Number
 da:Number
 txa:Number
 tya:Number
 ************************************************************************************************/