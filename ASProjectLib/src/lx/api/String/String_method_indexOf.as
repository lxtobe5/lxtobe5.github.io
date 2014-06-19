package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_indexOf extends Output
	{
		override public function run():void
		{
			 var string:String = "Hello World";
			
			traceString(string.indexOf('o'));
			//			从左向右搜索第一个'o'，结果是4
			
			traceString(string.indexOf('o',4));
			//			第4位置当做起始位置，包含起始位置搜索，结果是4
			
			traceString(string.indexOf('o',5));
			//			越过第一个'o'，结果是7
			
			traceString(string.indexOf('lo'));
			//			搜索连续字符'lo'，只返回第一个字符'l'的位置，结果是3
			
			traceString(string.indexOf('o',-1));
			//			起始位置小于0，默认从0位搜索，结果是4
			
			traceString(string.indexOf('o',20));
			//			起始位置大于字符长度，结果是-1
			
			traceString(string.indexOf('x'));
			//			搜索一个不存在的字符，结果是-1
		}
	}
}
/************************************************************************************************
 indexOf()	方法	 
 AS3 function indexOf(val:String, startIndex:Number = 0):int
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 搜索字符串，并返回在调用字符串内 startIndex 位置上或之后找到的 val 的第一个匹配项的位置。此索引从 0 开始，
 这意味着字符串的第一个字符位于索引 0，而不是索引 1。如果未找到 val，则该方法返回 -1。
 参数
 val:String — 要搜索的子字符串。
 startIndex:Number (default = 0) — 一个可选整数，指定搜索的起始索引。
 返回
 int — 指定子字符串的第一个匹配项的索引，或 -1。  
 ************************************************************************************************/