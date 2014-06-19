package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_shift extends Output
	{
		override public function run():void
		{
			var array:Array = [1,2,3];
			traceString(array.shift());
			//1 删除数组中第一个元素，并返回该元素
			
			traceString(array);
			//2,3 原数组改变了
		}
		
	}
}
/************************************************************************************************
 shift()	方法	 
 AS3 function shift():*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 删除数组中第一个元素，并返回该元素。其余数组元素将从其原始位置 i 移至 i-1。
 返回
 * — 数组中的第一个元素（可以是任意数据类型）。 
 ************************************************************************************************/