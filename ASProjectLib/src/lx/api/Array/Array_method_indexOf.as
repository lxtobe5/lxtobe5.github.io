package lx.api.Array
{
	import flash.utils.Dictionary;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_indexOf extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			array = ['abcdef'];
			
			traceString(array.indexOf('abc'));
			//-1  不能搜索字符串中的一部分
			
			traceString(array.indexOf('abcdef'));
			//0
			
			array = [1,2,3,3,2,1];
			
			traceString(array.indexOf(2));
			//1  从左到右搜索 只返回第一个搜索项的索引
			
			traceString(array.indexOf(2,1));
			//1  搜索包含起始索引位置的项
			
			traceString(array.indexOf(2,-1));
			//-1  索引值不能为负数
			
			traceString(array.indexOf(2,100));
			//-1  索引值不能超出项目范围
			
			var object:Object = {id:1};
			var dictionary:Dictionary = new Dictionary();
			array = [object,dictionary];
			
			traceString(array.indexOf(object));
			//0  可以搜索对象
		}
		
	}
}
/************************************************************************************************
 indexOf()	方法	 
 AS3 function indexOf(searchElement:*, fromIndex:int = 0):int
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 使用 strict equality (===) 运算符搜索数组中的项，并返回项的索引位置。
 参数
 searchElement:* — 要在数组中查找的项。
 fromIndex:int (default = 0) — 数组中的位置，从该位置开始搜索项。
 返回
 int — 数组项的索引位置（从 0 开始）。如果未找到 searchElement 参数，则返回值为 -1。 
 ************************************************************************************************/