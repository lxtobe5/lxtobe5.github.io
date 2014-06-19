package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_forEach extends Output
	{
		private var array:Array = [];
		
		override public function run():void
		{
			array.push({name:"lu xiao min", sex:'female'},{name:"liu xin", sex:'male'});
			
			array.forEach(callback);
			traceString(array.forEach(callback));
			//undefined  使用forEach，无返回值
		}
		
		private function callback(element:*, index:int, arr:Array):void
		{
			traceString(element.name + '  ' + element.sex);
		}
	}
}
/************************************************************************************************
 forEach()	方法	 
 AS3 function forEach(callback:Function, thisObject:* = null):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对数组中的每一项执行函数。
 在此方法中，如果第一个参数 callback 为 closure 方法，则第二个参数 thisObject 必须为 null。假设在影片剪辑中创建了一个名为 me 的函数：
 function myFunction(obj:Object):void {
 //your code here
 }
 假设对名为 myArray 的数组使用 forEach() 方法：
 myArray.forEach(myFunction, me);
 由于 myFunction 是 Timeline 类的成员，无法被 me 覆盖，因此 Flash 运行时将引发异常。通过将该函数分配给某个变量（如下所示），可以避免这种运行时错误：
 var myFunction:Function = function(obj:Object):void {
 //your code here
 };
 myArray.forEach(myFunction, me);
 参数
 callback:Function — 要对数组中的每一项运行的函数。此函数可以包含简单的命令（如 trace() 语句）或者更复杂的操作，并用三个参数来调用，即项值、项索引和 Array 对象：
 function callback(item:*, index:int, array:Array):void;
 thisObject:* (default = null) — 用作函数的 this 的对象。 
 ************************************************************************************************/