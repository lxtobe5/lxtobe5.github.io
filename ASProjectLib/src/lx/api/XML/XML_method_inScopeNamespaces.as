package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_inScopeNamespaces extends Output
	{
		override public function run():void
		{
			var xml:XML =  <rdf:RDF
									  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
									  xmlns="http://purl.org/rss/1.0/"
									  xmlns:dc="http://purl.org/dc/elements/1.1/"
									>
									  <channel rdf:about="http://www.xml.com/cs/xml/query/q/19">
										<title>Test RSS</title>
										<link>http://www.adobe.com/</link>
										<description>This is a test RSS document.</description>
										<language>en-us</language>
										<items>
										  <rdf:Seq>
										<rdf:li rdf:resource="http://www.adobe.com/devnet/flash/"/>
										<rdf:li rdf:resource="http://www.adobe.com/devnet/flex/"/>
										  </rdf:Seq>
										</items>
									  </channel>
									  <item rdf:about="http://www.adobe.com/devnet/flash/">
										<title>Adobe Flash Developer Center</title>
										<link>http://www.adobe.com/devnet/flash/</link>
										<description>Welcome to the Flash Developer Center</description>
										<dc:creator>Adobe</dc:creator>
										<dc:date>2005-08-08</dc:date>    
									  </item>
									  <item rdf:about="http://www.adobe.com/devnet/flex/">
										<title>Flex Developer Center</title>
										<link>http://www.adobe.com/devnet/flex/</link>
										<description>Welcome to the Flex Developer Center</description>
										<dc:creator>Adobe</dc:creator>
										<dc:date>2005-10-16</dc:date>    
									  </item>
									</rdf:RDF>;
			
			traceString(xml.inScopeNamespaces());
			//			http://www.w3.org/1999/02/22-rdf-syntax-ns#,http://purl.org/rss/1.0/,http://purl.org/dc/elements/1.1/
		}
	}
}
/************************************************************************************************
 inScopeNamespaces	()	方法	 
 AS3 function inScopeNamespaces():Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 根据该 XML 对象的父项列出其命名空间。
 返回
 Array — Namespace 对象的数组。 
 ************************************************************************************************/