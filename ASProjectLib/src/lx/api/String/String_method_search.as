package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_search extends Output
	{
		override public function run():void
		{
			var string:String = "The more the merrier."; 
			traceString(string.search("the"));
			//			9 找到第一个'the'的索引位置
			
			var pattern:RegExp = /the/ig; 
			string = "The more the merrier."; 
			traceString(string.search(pattern));
			//			0 用正则表达式忽略大小写，字符串中第一个字符的索引位置为 0 ，仅查找一个匹配项并返回其起始索引位置，即便在正则表达式中设置了 g（全局）标志
			
			pattern = /"[^"]*"/; 
			string = "The \"more\" the merrier."; 
			traceString(string.search(pattern));
			//			4 正则表达式匹配被双引号引起来的字符串，找到字符串的索引位置
			
			string = "The \"more the merrier."; 
			traceString(string.search(pattern));
			//			-1 正则表达式匹配不到被双引号引起来的字符串
		}
	}
}
/************************************************************************************************
 search()	方法	 
 AS3 function search(pattern:*):int
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 搜索指定的 pattern 并返回第一个匹配子字符串的索引。如果没有匹配的子字符串，该方法返回 -1。
 参数
 pattern:* — 要匹配的模式，可以为任何类型的对象，但通常是字符串或正则表达式。如果 pattern 不是正则表达式或字符串，
 则该方法在执行前会将其转换为字符串。请注意，如果指定正则表达式，该方法将忽略此正则表达式的全局标志（“g”），
 并忽略此正则表达式的 lastIndex 属性（并保持其值不变）。如果传递未定义的值（或未传递值），则该方法返回 -1。
 返回
 int — 第一个匹配子字符串的索引，如果没有匹配项，则为 -1。请注意，字符串的索引从零开始；字符串的第一个字符位于索引 0 处，
 最后一个字符位于 string.length - 1 处。 
 ************************************************************************************************/