package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_toLocaleLowerCase extends Output
	{
		override public function run():void
		{
			var string:String = 'AbCd';
			
			traceString(string.toLocaleLowerCase());
			//			abcd
			
			string = " JOSÉ BARÇA";
			traceString(string.toLocaleLowerCase());
			//			josé barça
		}
	}
}
/************************************************************************************************
 toLocaleLowerCase()	方法	 
 AS3 function toLocaleLowerCase():String
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 返回此字符串的一个副本，其中所有大写的字符均转换为小写字符。原始字符串保持不变。虽然此方法旨在以特定于区域设置的方式处理转换，但 ActionScript 3.0 实现生成的结果与 toLowerCase() 方法生成的结果相同。
 返回
 String — 该字符串的一个副本，其中所有大写的字符均转换为小写字符。 
 ************************************************************************************************/