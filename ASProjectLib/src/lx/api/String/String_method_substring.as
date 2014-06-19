package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_substring extends Output
	{
		override public function run():void
		{
			var string:String = "Hello from Paris, Texas!!!"; 
			traceString(string.substring(1,4));
			//			ell 截取的字符包含起始位置索引值1的字符'e'，不包含结束位置索引值4的字符'o'
		}
	}
}
/************************************************************************************************
 substring()	方法	 
 AS3 function substring(startIndex:Number = 0, endIndex:Number = 0x7fffffff):String
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 返回一个字符串，其中包含由 startIndex 指定的字符和一直到 endIndex - 1 的所有字符。如果未指定 endIndex，则使用 String.length。如果 startIndex 的值等于 endIndex 的值，则该方法返回一个空字符串。如果 startIndex 的值大于 endIndex 的值，则在执行函数之前会自动交换参数。原始字符串保持不变。
 参数
 startIndex:Number (default = 0) — 一个整数，指定用于创建子字符串的第一个字符的索引。startIndex 的有效值范围为从 0 到 String.length。如果 startIndex 是一个负值，则使用 0 。
 endIndex:Number (default = 0x7fffffff) — 一个整数，它比所提取的子字符串中的最后一个字符的索引大 1。endIndex 的有效值范围为从 0 到 String.length。endIndex 处的字符不包括在子字符串中。默认为允许的最大索引值。如果省略此参数，则使用 String.length。如果此参数是一个负值，则使用 0。
 返回
 String — 基于指定参数的子字符串。 
 ************************************************************************************************/