package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_pop extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			array = [1,2,3];
			
			traceString(array.pop());
			//3 删除数组中最后一个元素，并返回该元素的值
			
			traceString(array);
			//1,2 数组改变了
		}
		
	}
}
/************************************************************************************************
 pop()	方法	 
 AS3 function pop():*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 删除数组中最后一个元素，并返回该元素的值。
 返回
 * — 指定的数组中最后一个元素（可以为任意数据类型）的值。 
 ************************************************************************************************/