package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_match extends Output
	{
		override public function run():void
		{
			var string:String = "bob@example.com, omar@example.org"; 
			var pattern:RegExp = /\w*@\w*\.[org|com]+/g; 
			var results:Array = string.match(pattern);
			traceString(results);
			//			['bob@example.com','omar@example.org']
		}
	}
}
/************************************************************************************************
 match()	方法	 
 AS3 function match(pattern:*):Array
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 将指定的 pattern 与字符串匹配。
 参数
 pattern:* — 要匹配的模式可以为任何类型的对象，但通常是字符串或正则表达式。如果 pattern 不是正则表达式或字符串，
 则该方法在执行前会将其转换为字符串。
 返回
 Array — 一个字符串数组，其中包括与指定的 pattern 匹配的字符串中的所有子字符串。
 如果 pattern 是正则表达式，为了返回一个具有多个匹配子字符串的数组，必须在该正则表达式中设置 g（全局）标志：
 如果未设置 g（全局）标志，则返回的数组包含的匹配项将不多于一项，且正则表达式的 lastIndex 属性保持不变。
 如果已设置 g（全局）标志，则该方法从字符串的起始处（索引位置 0）开始搜索。如果匹配的子字符串为空字符串
 （正则表达式为 / x* / 时可能出现此情况），则该方法将此空字符串添加到匹配项数组，然后在下一个索引位置继续搜索。
 该方法完成后，将正则表达式的 lastIndex 属性设置为 0。 
 当 pattern 参数为设置了 g（全局）标志的正则表达式时，如果找不到任何匹配项，则该方法返回空数组。
 如果 pattern 参数为字符串或非全局正则表达式，且找不到任何匹配项，则该方法返回 null。如果未传递值（或传递了未定义的值）
 作为 pattern 参数，则该方法返回 null。
 ************************************************************************************************/