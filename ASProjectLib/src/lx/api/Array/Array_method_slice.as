package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_slice extends Output
	{
		override public function run():void
		{
			var array:Array = ["a", "b", "c", "d", "e", "f"];
			
			traceString(array.slice(1,3));
			//b,c 包含起始索引值1的字符'b'，不包含结束索引值3的字符'd'
			
			traceString(array);
			//a,b,c,d,e,f 原数组没有改变
			
			traceString(array.slice(20));
			//(空)  索引值超出范围会返回空值
			
			traceString(array.slice(4,1));
			//(空) 索引值大小颠倒会返回空值
			
			traceString(array.slice(-1));
			//f 负索引值表示从后向前数，-1为最后一项
			
			traceString(array.slice(-3,-1));
			//d,e 包含起始位置索引值-3对应的字符'd'，不包含结束位置索引值-1对应的字符'f'
			
			traceString(array.slice(-1,-3));
			//(空) 索引值大小颠倒会返回空值
		}
		
	}
}