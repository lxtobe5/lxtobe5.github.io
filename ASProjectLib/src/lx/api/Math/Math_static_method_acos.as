package lx.api.Math
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Math_static_method_acos extends Output
	{
		override public function run():void
		{
			var k:Number;
			for (var i:Number = -1; i <= 1; i+=0.1) 
			{
				k = Math.round(i*10)/10;
				traceString('acos('+k+'):'+Math.acos(k));
			}
		}
	}
}
/************************************************************************************************
 acos()	方法	 
 public static function acos(val:Number):Number
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 以弧度为单位计算并返回由参数 val 指定的数字的反余弦值。
 参数
 val:Number — -1.0 到 1.0 之间的一个数字。
 返回
 Number — 参数 val 的反余弦值。 
 ************************************************************************************************/