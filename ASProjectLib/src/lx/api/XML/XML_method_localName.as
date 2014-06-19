package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_localName extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope"
					soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
		
								<soap:Body xmlns:wx = "http://example.com/weather">
						<wx:forecast>
							<wx:city>Quito</wx:city>
						</wx:forecast>
					</soap:Body>
				</soap:Envelope>;
			
			traceString(xml.localName()); // Envelope
		}
	}
}
/************************************************************************************************
 localName	()	方法	 
 AS3 function localName():Object
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 提供该 XML 对象限定名称的本地名称部分。
 返回
 Object — 作为 String 或 null 的本地名称。 
 ************************************************************************************************/