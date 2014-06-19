package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_setNamespace extends Output
	{
		override public function run():void
		{
			//			使用在某个 XML 对象中定义的 soap 命名空间，并将其应用于另一个 XML 对象 (xml2) 的命名空间：
			
			var xml1:XML = 
				<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope"
					soap:encodingStyle="http://www.w3.org/2001/12/soap-encoding">
					<!-- ... -->
				</soap:Envelope>;
			var ns:Namespace = xml1.namespace("soap");
			
			var xml2:XML = 
				<Envelope>
					<Body/>
				</Envelope>;
			
			xml2.setNamespace(ns);
			
			traceString(xml2);
			//			<soap:Envelope xmlns:soap="http://www.w3.org/2001/12/soap-envelope">
			//			  <Body/>
			//			</soap:Envelope>
		}
	}
}
/************************************************************************************************
 setNamespace	()	方法	 
 AS3 function setNamespace(ns:Namespace):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 设置与该 XML 对象关联的命名空间。
 参数
 ns:Namespace — 新命名空间。 
 ************************************************************************************************/