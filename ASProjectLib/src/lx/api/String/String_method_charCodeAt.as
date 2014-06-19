package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_charCodeAt extends Output
	{
		override public function run():void
		{
			var string:String = "abcdefg";
			//			长度为7
			
			traceString(string.charCodeAt(100));
			//			100>字符长度7,返回NaN
			
			traceString(string.charCodeAt(5));
			//			5<字符长度7,返回102
			
			traceString(string.charCodeAt(100));
			//			-1<字符长度7,返回NaN
			
			string = "汉字";
			for (var i:int = 0; i < string.length; i++) 
			{
				traceString(string.slice(i,i+1)+":"+string.charCodeAt(i));
				traceString(string.slice(i,i+1)+": U+"+string.charCodeAt(i).toString(16));
			}
			//			汉:27721
			//			汉: U+6c49
			//			字:23383
			//			字: U+5b57
		}
	}
}
/************************************************************************************************
 charCodeAt()	方法	 
 AS3 function charCodeAt(index:Number = 0):Number
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 返回指定 index 处的字符的数值 Unicode 字符代码。如果 index 不是从 0 到 string.length - 1 之间的数字，则返回 NaN。
 此方法与 String.charAt() 类似，所不同的是它返回的值是 16 位整型字符代码，而不是实际的字符。
 参数
 index:Number (default = 0) — 一个整数，指定字符在字符串中的位置。第一个字符由 0 表示，最后一个字符由 my_str.length - 1 表示。
 返回
 Number — 指定索引处的字符的 Unicode 字符代码。或者，如果索引不在此字符串的索引范围内，则为 NaN。
 Unicode 字符数据库规范中对 Unicode 值进行了定义。  
 ************************************************************************************************/