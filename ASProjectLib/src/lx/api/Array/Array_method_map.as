package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_map extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			array = ['one', 'two', 'Three',4,'5'];
			traceString(array.map(callback));
			//ONE,TWO,THREE,4,5
			
			traceString(array.map(callbackBoolean));
			//false,false,false,true,false  每一项都执行了
			
			traceString(array.map(callbackInt));
			//1,1,1,5,1
			
			traceString(array);
			//one,two,Three,4,5 原数组没改变
		}
		
		
		private function callback(item:*, index:int, array:Array):String
		{
			return String(item).toUpperCase();
		}
		
		private function callbackBoolean(item:*,index:int,array:Array):Boolean
		{
			return item is Number;
		}
		
		private function callbackInt(item:*,index:int,array:Array):int
		{
			if(item is Number)
			{
				return item+1;
			}else
			{
				return 1;
			}
		}
	}
}
/************************************************************************************************
 map()	方法	 
 AS3 function map(callback:Function, thisObject:* = null):Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对数组中的每一项执行函数并构造一个新数组，其中包含与原始数组中的每一项的函数结果相对应的项。
 在此方法中，如果第一个参数 callback 为 closure 方法，则第二个参数 thisObject 必须为 null。假设在影片剪辑中创建了一个名为 me 的函数：
 function myFunction(obj:Object):void {
 //your code here
 }
 假设对名为 myArray 的数组使用 map() 方法：
 myArray.map(myFunction, me);
 由于 myFunction 是 Timeline 类的成员，无法被 me 覆盖，因此 Flash 运行时将引发异常。通过将该函数分配给某个变量（如下所示），可以避免这种运行时错误：
 var myFunction:Function = function(obj:Object):void {
 //your code here
 };
 myArray.map(myFunction, me);
 参数
 callback:Function — 要对数组中的每一项运行的函数。此函数可以包含简单的命令（如更改字符串数组的大小写）或更复杂的操作，并用 3 个参数来调用，即项值、项索引和 Array 对象：
 function callback(item:*, index:int, array:Array):String;
 thisObject:* (default = null) — 用作函数的 this 的对象。
 返回
 Array — 一个新数组，其中包含此函数对原始数组中每一项的执行结果。
 ************************************************************************************************/