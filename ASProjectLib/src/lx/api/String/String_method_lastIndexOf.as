package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_lastIndexOf extends Output
	{
		override public function run():void
		{
			var text:String = "Hello World";
			
			traceString(text.lastIndexOf('o'));
			//			从右向左搜索'o'，但位置还是从左向右数的第7位
			
			traceString(text.lastIndexOf('o',7));
			//			第7位置当做起始位置，结果是7，说明包含起始位置
			
			traceString(text.lastIndexOf('o',6));
			//			越过第二个'o'，结果是4
			
			traceString(text.lastIndexOf('lo'));
			//			搜索连续字符'lo'，只返回第一个字符'l'的位置，结果是3
			
			traceString(text.lastIndexOf('o',-1));
			//			起始位置小于0，结果是-1
			
			traceString(text.lastIndexOf('o',20));
			//			起始位置超出字符长度，默认从最后一位搜索，结果是7
			
			traceString(text.lastIndexOf('x'));
			//			搜索一个不存在的字符，结果是-1
		}
	}
}
/************************************************************************************************
 lastIndexOf()	方法	 
 AS3 function lastIndexOf(val:String, startIndex:Number = 0x7FFFFFFF):int
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 从右向左搜索字符串，并返回在 startIndex 之前找到的最后一个 val 匹配项的索引。此索引从零开始，这意味着第一个字符位于索引 0 处，
 最后一个字符位于 string.length - 1 处。如果未找到 val，则该方法返回 -1。
 参数
 val:String — 要搜索的字符串。
 startIndex:Number (default = 0x7FFFFFFF) — 一个可选整数，指定开始搜索 val 的起始索引。默认为允许的最大索引值。如果未指定 startIndex，则从字符串中的最后一项开始搜索。
 返回
 int — 指定子字符串的最后一个匹配项的位置，或 -1（如果未找到）。  
 ************************************************************************************************/