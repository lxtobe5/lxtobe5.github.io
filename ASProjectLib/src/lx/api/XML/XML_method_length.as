package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_length extends Output
	{
		override public function run():void
		{
			var xml:XML = new XML();
			traceString(xml.length());
			//			1 (该方法始终返回整数 1)
		}
	}
}
/************************************************************************************************
 length	()	方法	 
 AS3 function length():int
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 对于 XML 对象，该方法始终返回整数 1。XMLList 类的 length() 方法对仅包含一个值的 XMLList 对象返回值 1。
 返回
 int — 对于任何 XML 对象，始终返回 1。
 ************************************************************************************************/