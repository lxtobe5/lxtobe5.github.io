package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_push extends Output
	{
		
		override public function run():void
		{
			var arg:Array = [];
			traceString(arg.push('a','b','c'));
			//3  返回该数组的新长度
			
			traceString(arg);
			//a,b,c
		}
		
	}
}
/************************************************************************************************
 push()	方法	 
 AS3 function push(... args):uint
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 将一个或多个元素添加到数组的结尾，并返回该数组的新长度。
 参数
 ... args — 要追加到数组中的一个或多个值。
 返回
 uint — 一个表示新数组长度的整数。 
 ************************************************************************************************/