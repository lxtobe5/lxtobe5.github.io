package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_substr extends Output
	{
		override public function run():void
		{
			var string:String = "Hello from Paris, Texas!!!"; 
			traceString(string.substr(1,4)); //ello
			//			ello 截取的字符包含起始位置索引值1的字符'e'和结束位置索引值4的字符'o'
		}
	}
}
/************************************************************************************************
 substr()	方法	 
 AS3 function substr(startIndex:Number = 0, len:Number = 0x7fffffff):String
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 返回一个子字符串，该子字符串中的字符是通过从指定的 startIndex 开始，按照 len 指定的长度截取所得的。原始字符串保持不变。
 参数
 startIndex:Number (default = 0) — 一个整数，指定用于创建子字符串的第一个字符的索引。如果 startIndex 是一个负数，则起始索引从字符串的结尾开始确定，其中 -1 表示最后一个字符。
 len:Number (default = 0x7fffffff) — 要创建的子字符串中的字符数。默认值为所允许的最大值。如果未指定 len，则子字符串包括从 startIndex 到字符串结尾的所有字符。
 返回
 String — 基于指定参数的子字符串。
 ************************************************************************************************/