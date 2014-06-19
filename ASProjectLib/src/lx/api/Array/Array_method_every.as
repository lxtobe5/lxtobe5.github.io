package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_every extends Output
	{
		private var array:Array = [1,2,3];
		
		override public function run():void
		{
			array = [1,2,3];
			traceString(array.every(callback));
			//true
			
			traceString(array.every(callbackString));
			//false  使用every，回调函数只会返回布尔值，而不是其他数据类型
			
			traceString(array.every(callbackInt));
			//false  使用every，回调函数只会返回布尔值，而不是其他数据类型
			
			array = [1,2,'3','4'];
			traceString(array.every(callback));
			//false
		}
		
		private function callback(item:*, index:int, array:Array):Boolean
		{
			if(!(item is Number))
			{
				traceString(item);
				//当array = [1,2,'3','4']，输出3 返回 false 时，回调函数不再执行，所以没有输出4
			}
			return (item is Number);
		}
		
		private function callbackString(item:*, index:int, array:Array):String
		{
			return '999';
		}
		
		private function callbackInt(item:*, index:int, array:Array):int
		{
			return index;
		}
	}
}
/************************************************************************************************
 every()	方法	 
 AS3 function every(callback:Function, thisObject:* = null):Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对数组中的每一项执行测试函数，直到获得对指定的函数返回 false 的项。使用此方法可确定数组中的所有项是否满足某一条件，如具有的值小于某一特定数值。
 在此方法中，如果第一个参数 callback 为 closure 方法，则第二个参数 thisObject 必须为 null。假设在影片剪辑中创建了一个名为 me 的函数：
 function myFunction(obj:Object):void {
 //your code here
 }
 假设对名为 myArray 的数组使用 every() 方法：
 myArray.every(myFunction, me);
 由于 myFunction 是 Timeline 类的成员，无法被 me 覆盖，因此 Flash 运行时将引发异常。通过将该函数分配给某个变量（如下所示），可以避免这种运行时错误：
 var myFunction:Function = function(obj:Object):void {
 //your code here
 };
 myArray.every(myFunction, me);
 参数
 callback:Function — 要对数组中的每一项运行的函数。该函数可以包含简单的比较操作（例如，item < 20）或者更复杂的操作，并用三个参数来调用，即项值、项索引和 Array 对象：
 function callback(item:*, index:int, array:Array):Boolean;
 thisObject:* (default = null) — 用作函数的 this 的对象。
 返回
 Boolean — 如果数组中的所有项对指定的函数都返回 true，则为布尔值 true；否则为 false。 
 ************************************************************************************************/