package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_some extends Output
	{
		private function callback(item:*, index:int, array:Array):Boolean
		{
			if(item is Number)
			{
				traceString(item);
				//当array = ['1',2,3,'4']，输出2 返回true 时，回调函数不再执行，所以没有输出3
			}
			return (item is Number);
		}
		
		override public function run():void
		{
			var array:Array = ['1',2,3,'4'];
			traceString(array.some(callback));
			//true
		}
		
	}
}