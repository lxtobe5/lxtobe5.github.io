package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_concat extends Output
	{
		override public function run():void
		{
			var string:String = 'abc';
			
			traceString(string.concat('def'));
			//			如果concat1个字符串，结果是abcdef
			
			traceString(string.concat('def','ghi'));
			//			如果concat2个字符串，结果是abcdefghi
			
			traceString(string.concat(['def']));
			//			如果concat数组，只包含1个字符，结果是abcdef
			
			traceString(string.concat(['def','ghi']));
			//			如果concat数组，包含2个字符，结果是abcdef,ghi
			
			traceString(string.concat({}));
			//			如果concat对象，结果是abc[object Object]
			
			traceString(string);
			//			原字符不变，结果是abc
		}
	}
}
/************************************************************************************************
 concat()	方法	 
 AS3 function concat(... args):String
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 在 String 对象末尾追加补充参数（如果需要，将它们转换为字符串）并返回结果字符串。源 String 对象的原始值保持不变。
 参数
 ... args — 0 个或多个要连接的值。
 返回
 String — 由该字符串与指定的参数连接而成的新字符串。  
 ************************************************************************************************/