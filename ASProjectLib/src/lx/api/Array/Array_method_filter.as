package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_filter extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			array = [1,2,'3','4'];
			
			traceString(array.filter(callback));
			//3,4  返回条件为true对应的数组项
			
			traceString(array.filter(callbackString));
			//(空) 使用filter，只能返回布尔值
		}
		
		private function callback(element:*, index:int, arr:Array):Boolean
		{
			return (element is String);
		}
		
		private function callbackString(element:*, index:int, arr:Array):String
		{
			return element = '999';
		}
	}
}
/************************************************************************************************
 filter()	方法	 
 AS3 function filter(callback:Function, thisObject:* = null):Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对数组中的每一项执行测试函数，并构造一个新数组，其中的所有项都对指定的函数返回 true。如果某项返回 false，则新数组中将不包含此项。
 在此方法中，如果第一个参数 callback 为 closure 方法，则第二个参数 thisObject 必须为 null。假设在影片剪辑中创建了一个名为 me 的函数：
 function myFunction(obj:Object):void {
 //your code here
 }
 然后对名为 myArray 的数组使用 filter() 方法：
 myArray.filter(myFunction, me);
 由于 myFunction 是 Timeline 类的成员，无法被 me 覆盖，因此 Flash 运行时将引发异常。通过将该函数分配给某个变量（如下所示），可以避免这种运行时错误：
 var myFunction:Function = function(obj:Object):void {
 //your code here
 };
 myArray.filter(myFunction, me);
 参数
 callback:Function — 要对数组中的每一项运行的函数。该函数可以包含简单的比较操作（例如，item < 20）或者更复杂的操作，并用三个参数来调用，即项值、项索引和 Array 对象：
 function callback(item:*, index:int, array:Array):Boolean;
 thisObject:* (default = null) — 用作函数的 this 的对象。
 返回
 Array — 一个新数组，它包含原始数组中返回 true 的所有项。 
 ************************************************************************************************/