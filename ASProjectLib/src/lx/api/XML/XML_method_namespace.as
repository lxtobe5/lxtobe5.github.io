package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_namespace extends Output
	{
		override public function run():void
		{
			//			获取 XML 对象的命名空间，并将其分配给名为 soap 的 Namespace 对象，随后将使用该对象标识 xml 对象 (xml.soap::Body[0])
			var xml1:XML = 
				<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope"
					soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
		
								<soap:Body xmlns:wx = "http://example.com/weather">
						<wx:forecast>
							<wx:city>Quito</wx:city>
						</wx:forecast>
					</soap:Body>
				</soap:Envelope>;
			
			var soap:Namespace = xml1.namespace();
			traceString(soap.prefix); // soap
			traceString(soap.uri); // http://www.w3.org/2001/12/soap-envelope
			
			var body:XML = xml1.soap::Body[0];
			traceString(body.namespace().prefix); // soap
			traceString(xml1.namespace().uri); // http://www.w3.org/2001/12/soap-envelope
			traceString(body.namespace("wx").uri); // "http://example.com/weather"
			
			//			获取节点的默认命名空间，以及特定前缀 ("dc") 的命名空间
			var xml2:XML = 
				<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
					xmlns:dc="http://purl.org/dc/elements/1.1/" 
					xmlns="http://purl.org/rss/1.0/">
						<!-- ... -->
				</rdf:RDF>;
			
			traceString(xml2.namespace()); // http://www.w3.org/1999/02/22-rdf-syntax-ns#
			traceString(xml2.namespace("dc")); // http://purl.org/dc/elements/1.1/
			traceString(xml2.namespace("foo")); // undefined
		}
	}
}
/************************************************************************************************
 namespace	()	方法	 
 AS3 function namespace(prefix:String = null):*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 如果没有提供参数，则提供与该 XML 对象的限定名关联的命名空间。如果指定了 prefix 参数，则该方法将返回与 prefix 参数匹配且位于 XML 对象所在范围内的命名空间。如果不存在此类命名空间，该方法将返回 undefined。
 参数
 prefix:String (default = null) — 要匹配的前缀。
 返回
 * — 返回 null、undefined 或命名空间。 
 ************************************************************************************************/