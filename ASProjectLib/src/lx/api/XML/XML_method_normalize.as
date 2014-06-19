package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_normalize extends Output
	{
		override public function run():void
		{
			var xml:XML = <body></body>;
			xml.appendChild("hello");
			xml.appendChild(" world");
			traceString(xml.children().length()); // 2
			xml.normalize();
			traceString(xml.children().length()); // 1
			traceString(xml);  //hello world
		}
	}
}
/************************************************************************************************
 normalize	()	方法	 
 AS3 function normalize():XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 对于该 XML 对象以及所有子级 XML 对象，合并相邻文本节点并删除空文本节点。
 返回
 XML — 生成的标准 XML 对象。 
 ************************************************************************************************/