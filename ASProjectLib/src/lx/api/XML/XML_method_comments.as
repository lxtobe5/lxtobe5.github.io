package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_comments extends Output
	{
		override public function run():void
		{
			XML.ignoreComments = false;
			var xml:XML = 
				<foo>
					<!-- example -->
					<!-- example2 -->
				</foo>;
			traceString(xml.comments().length()); // 2
			traceString(xml.comments()[1].toXMLString()); // <!-- example2 -->
		}
	}
}
/************************************************************************************************
 comments	()	方法	 
 AS3 function comments():XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 列出包含 XML 注释的 XML 对象的属性。
 返回
 XMLList — 包含注释的属性的 XMLList 对象。 
 ************************************************************************************************/