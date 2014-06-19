package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_static_method_fromCharCode extends Output
	{
		override public function run():void
		{
			var string:String = "hello world";
			
			for (var i:int = 0; i < string.length; i++) 
			{ 
				traceString(string.charAt(i) + "-" + string.charCodeAt(i)); 
			}
			//			h - 104
			//			e - 101
			//			l - 108
			//			l - 108
			//			o - 111
			//				- 32
			//			w - 119
			//			o - 111
			//			r - 114
			//			l - 108
			//			d - 100
			
			traceString(String.fromCharCode(104,101,108,108,111,32,119,111,114,108,100)+'的Unicode字符代码是104,101,108,108,111,32,119,111,114,108,100');
			//			hello world的Unicode字符代码是104,101,108,108,111,32,119,111,114,108,100
			
			string = "汉字";
			for (var j:int = 0; j < string.length; j++) 
			{
				traceString(string.slice(j,j+1)+":"+string.charCodeAt(j));
				traceString(string.slice(j,j+1)+": U+"+string.charCodeAt(j).toString(16));
			}
			//			汉:27721
			//			汉: U+6c49
			//			字:23383
			//			字: U+5b57
			traceString(String.fromCharCode(0x6c49,0x5b57));
			//			汉字
		}
	}
}
/************************************************************************************************
 fromCharCode()	方法	 
 AS3 static function fromCharCode(... charCodes):String
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 返回一个字符串，该字符串由参数中的 Unicode 字符代码所表示的字符组成。
 参数
 ... charCodes — 一系列表示 Unicode 值的十进制整数。
 Unicode 字符数据库规范中对 Unicode 值进行了定义。
 返回
 String — 指定的 Unicode 字符代码的字符串值。
 ************************************************************************************************/