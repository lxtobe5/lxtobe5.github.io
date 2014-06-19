package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_name extends Output
	{
		override public function run():void
		{
			var xml1:XML = 
				<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope"
					soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
		
								<soap:Body xmlns:wx = "http://example.com/weather">
						<wx:forecast>
							<wx:city>Quito</wx:city>
						</wx:forecast>
					</soap:Body>
				</soap:Envelope>;
			
			traceString(xml1.name().localName); // Envelope
			traceString(xml1.name().uri); // "http://www.w3.org/2001/12/soap-envelope"
			
			var xml2:XML = 
				<foo x="15" y="22">
					text
				</foo>;
			
			traceString(xml2.name().localName); // foo
			traceString(xml2.name().uri == ""); // true
			traceString(xml2.children()[0]); // text
			traceString(xml2.children()[0].name()); // null
			traceString(xml2.attributes()[0]); // 15
			traceString(xml2.attributes()[0].name()); // x
		}
	}
}
/************************************************************************************************
 name()	方法	 
 AS3 function name():Object
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 提供该 XML 对象的限定名称。
 返回
 Object — 限定名称为 QName 或 null。 
 ************************************************************************************************/