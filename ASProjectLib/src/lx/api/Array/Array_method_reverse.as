package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_reverse extends Output
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
 reverse()	方法	 
 AS3 function reverse():Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 在当前位置倒转数组。
 返回
 Array — 新数组。 
 ************************************************************************************************/