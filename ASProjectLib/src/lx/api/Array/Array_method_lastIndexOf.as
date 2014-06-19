package lx.api.Array
{
	import flash.utils.Dictionary;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_lastIndexOf extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			array = ['abcdef'];
			
			traceString(array.lastIndexOf('abc'));
			//-1  不能搜索字符串中的一部分
			
			traceString(array.lastIndexOf('abcdef'));
			//0
			
			array = [1,2,3,3,2,1];
			
			traceString(array.lastIndexOf(2));
			//4  从右到左搜索 只返回第一个搜索项的索引
			
			traceString(array.lastIndexOf(2,1));
			//1  搜索包含起始索引位置的项，
			
			traceString(array.lastIndexOf(2,-3));
			//1  负索引值从倒数位置开始
			
			traceString(array.lastIndexOf(2,-1));
			//4  负索引值-1为最后一项
			
			traceString(array.lastIndexOf(2,100));
			//4  索引值超出项目范围，等于从最后开始搜索
			
			var object:Object = {id:1};
			var dictionary:Dictionary = new Dictionary();
			array = [object,dictionary];
			
			traceString(array.lastIndexOf(object));
			//0  可以搜索对象
		}
		
	}
}