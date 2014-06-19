package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_toLowerCase extends Output
	{
		override public function run():void
		{
			var string:String = " JOSÉ BARÇA";
			traceString(string.toLowerCase());
			//			josé barça
		}
	}
}
/************************************************************************************************
 toLowerCase()	方法	 
 AS3 function toLowerCase():String
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 返回此字符串的一个副本，其中所有大写的字符均转换为小写字符。原始字符串保持不变。
 此方法转换所有存在 Unicode 小写等效项的字符（不仅仅是 A-Z）：
 Unicode 字符数据库规范中对这些条件映射进行了定义。
 返回
 String — 该字符串的一个副本，其中所有大写的字符均转换为小写字符。 
 ************************************************************************************************/