package lx.api.Function
{
	import flash.events.Event;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Function_method_apply extends Output
	{
		override public function run():void
		{
			try
			{
				func.apply(null,'param');
			} 
			catch(error:Error) 
			{
				traceString(error);
				//				TypeError: Error #1116: Function.prototype.apply 的第二个参数必须是数组。
			}
			
			func.apply(null,['param']);
			//			param 调用函数为空，添加了字符param给func函数做参数
			
			func.apply(func,['param']);
			//			param 调用函数为自己，添加了字符param给func函数做参数
			
			try
			{
				func1.apply(null,['param']);
				func1.apply(func1,['param']);
				//				如果函数带一个参数，数组第一个元素要和这个参数类型一致，依次类推
			} 
			catch(error:Error) 
			{
				traceString(error);
				//				TypeError: Error #1034: 强制转换类型失败:无法将 "param" 转换为 flash.events.Event。
			}
			
			func1.apply(null,[new Event(Event.ADDED),'param']);
			//			[Event type="added" bubbles=false cancelable=false eventPhase=2],param
			
			func1.apply(func1,[new Event(Event.ADDED),'param','continue']);
			//			[Event type="added" bubbles=false cancelable=false eventPhase=2],param,continue
			
			var object:Object = {};
			object.name = 'object';
			object.value = '0';
			
			object.change = function (newValue:int):void{traceString(this.name+'- old value:'+this.value+'    new value:'+newValue);};
			
			object.change.apply(null,[1]);
			//			undefined- old value:undefined    new value:1  由于调用对象为null，所以输出undefined
			
			object.change.apply(object,[1]);
			//			object- old value:0    new value:1  调用对象为自身
			
			object.change.apply({name:'liuxin',value:100},[1000]);
			//			liuxin- old value:100    new value:1000   调用对象为{name:'liuxin',value:100}
			
			try
			{
				object.change.apply(null,[1000,10000]);
				object.change.apply({name:'liuxin',value:100},[1000,10000]);
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
 apply()	方法
 AS3 function apply(thisArg:*, argArray:*):*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 指定要在 ActionScript 调用的任何函数内使用的 thisObject 的值。此方法还指定要传递给任何被调用函数的参数。由于 apply() 是 Function 类的方法，所以它也是 ActionScript 中每个 Function 对象的方法。
 与 Function.call() （它将参数指定为用逗号分隔的列表）不同，该方法将参数指定为一个 Array 对象。如果在脚本实际执行前，无法知道要传递的参数的数量，那么这种方法通常很有用。
 返回被调用函数指定为返回值的值。
 参数
 thisArg:* (default = NaN) — 要应用该函数的对象。
 argArray:* (default = NaN) — 其元素作为参数传递给函数的数组。
 返回
 * — 调用函数指定的任何值。 
 ************************************************************************************************/