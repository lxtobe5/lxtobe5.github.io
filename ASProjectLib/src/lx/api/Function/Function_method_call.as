package lx.api.Function
{
	import flash.events.Event;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Function_method_call extends Output
	{
		override public function run():void
		{
			func.call(null,'param');
			//			param
			
			func.call(func,'param');
			//			param
			
			func.call(null,['param']);
			//			param 是以数组形式输出
			
			try
			{
				func1.call(null,'param');
				//				如果函数带一个参数，数组第一个元素要和这个参数类型一致，依次类推
			} 
			catch(error:Error) 
			{
				traceString(error);
				//				TypeError: Error #1034: 强制转换类型失败:无法将 "param" 转换为 flash.events.Event。
			}
			
			func1.call(null,new Event(Event.ADDED),'param');
			//			[Event type="added" bubbles=false cancelable=false eventPhase=2],param
			
			func1.call(func1,new Event(Event.ADDED),'param','continue');
			//			[Event type="added" bubbles=false cancelable=false eventPhase=2],param,continue
			
			var object:Object = {};
			object.name = 'object';
			object.value = '0';
			
			object.change = function (newValue:int):void{traceString(this.name+'- old value:'+this.value+'    new value:'+newValue);};
			
			object.change.call(null,1);
			//			undefined- old value:undefined    new value:1  由于调用对象为null，所以输出undefined
			
			object.change.call(object,1);
			//			object- old value:0    new value:1  调用对象为自身
			
			object.change.call({name:'liuxin',value:100},1000);
			//			liuxin- old value:100    new value:1000   调用对象为{name:'liuxin',value:100}
			
			try
			{
				object.change.call(null,1000,10000);
				object.change.call({name:'liuxin',value:100},1000,10000);
				//				在匿名函数的情况下，函数参数和传参数量要匹配
			} 
			catch(error:Error) 
			{
				traceString(error);
				//				ArgumentError: Error #1063: Function/<anonymous>() 的参数数量不匹配。应该有 1 个，当前为 2 个。
			}
		}
		
		private function func():void
		{
			traceString(arguments);
		}
		
		private function func1(e:Event):void
		{
			traceString(arguments);
		}
	}
}
/************************************************************************************************
 call()	方法	 
 AS3 function call(thisArg:*, ... args):*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 调用 Function 对象表示的函数。ActionScript 中的每个函数都由一个 Function 对象来表示，所以所有的函数都支持此方法。
 几乎在所有的情形下，都可以使用函数调用运算符 (()) 来代替此方法。函数调用运算符使代码简明易读。如果需要明确控制函数调用中的 thisObject 参数，则此方法很有用。通常，如果在函数体内将函数作为对象的方法来调用，则 thisObject 设置为 myObject，如下例所示：
 myObject.myMethod(1, 2, 3);
 在某些情况下，您可能希望 thisObject 指向其他位置，例如，函数必须作为对象的方法进行调用，但该函数实际上并不作为该对象的方法进行存储的情况。
 myObject.myMethod.call(myOtherObject, 1, 2, 3); 
 可以为 thisObject 参数传递值 null，以便将函数作为一个常规函数而非对象的方法来调用。例如，以下函数调用是等效的：
 Math.sin(Math.PI / 4)
 Math.sin.call(null, Math.PI / 4)
 返回被调用函数指定为返回值的值。
 参数
 thisArg:* (default = NaN) — 指定函数体内 thisObject 值的对象。
 ... args — 要传递给该函数的参数。可以指定 0 个或多个参数。
 返回
 *
 ************************************************************************************************/