package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_setLocalName extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<ns:item xmlns:ns="http://example.com">
					toothbrush
				</ns:item>;
			
			xml.setLocalName("orderItem");
			traceString(xml.toXMLString()); 
			// <ns:orderItem xmlns:ns="http://example.com">toothbrush</ns:orderItem>
		}
	}
}
/************************************************************************************************
 setLocalName	()	方法	 
 AS3 function setLocalName(name:String):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 将该 XML 对象的本地名称更改为给定的 name 参数。
 参数
 name:String — 本地名称的替换名称。 
 ************************************************************************************************/