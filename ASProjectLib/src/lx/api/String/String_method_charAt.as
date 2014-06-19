package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_charAt extends Output
	{
		override public function run():void
		{
			var string:String = "abcdefg";
			//			长度为7
			
			traceString(string.charAt(100));
			//			100>字符长度7,返回为空
			
			traceString(string.charAt(5));
			//			5<字符长度7,返回f
			
			traceString(string.charAt(-1));
			//			1<字符长度7,返回为空
		}
	}
}
/************************************************************************************************
 charAt()	方法
 AS3 function charAt(index:Number = 0):String
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 返回由参数 index 指定的位置处的字符。如果 index 不是从 0 到 string.length - 1 之间的数字，则返回一个空字符串。
 此方法与 String.charCodeAt() 类似，所不同的是它返回的值是一个字符，而不是 16 位整数字符代码。
 参数
 index:Number (default = 0) — 一个整数，指定字符在字符串中的位置。第一个字符由 0 表示，最后一个字符由 my_str.length - 1 表示。
 返回
 String — 指定索引处的字符。或者，如果指定的索引不在该字符串的索引范围内，则为一个空字符串。   
 ************************************************************************************************/