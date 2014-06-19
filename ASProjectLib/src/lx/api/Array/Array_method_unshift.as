package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_unshift extends Output
	{
		override public function run():void
		{
			var array:Array = [];
			array.push("Bill");
			array.push("Jeff");
			
			traceString(array.unshift("Alfred"));
			//			3 返回新的数组长度
			traceString(array);
			//			Alfred,Bill,Jeff 在数组前面添加了新元素 Alfred
		}
		
	}
}
/************************************************************************************************
 unshift()	方法	 
 AS3 function unshift(... args):uint
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 将一个或多个元素添加到数组的开头，并返回该数组的新长度。数组中的其他元素从其原始位置 i 移到 i+1。
 参数
 ... args — 一个或多个要插入到数组开头的数字、元素或变量。
 返回
 uint — 一个整数，表示该数组的新长度。 
 ************************************************************************************************/