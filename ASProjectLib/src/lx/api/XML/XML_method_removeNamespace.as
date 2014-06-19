package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_removeNamespace extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
					xmlns:dc="http://purl.org/dc/elements/1.1/" 
					xmlns="http://purl.org/rss/1.0/">
				
					<!-- ... -->
					
				</rdf:RDF>;
			
			traceString(xml.namespaceDeclarations().length); // 3
			traceString(xml.namespaceDeclarations()[0] is String); // 
			var dc:Namespace = xml.namespace("dc");
			xml.removeNamespace(dc);
			traceString(xml.namespaceDeclarations().length); // 2
		}
	}
}
/************************************************************************************************
 removeNamespace	()	方法	 
 AS3 function removeNamespace(ns:Namespace):XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 删除该对象及其所有子级的给定命名空间。如果命名空间由该对象的限定名称或该对象属性的限定名称引用，则 removeNamespaces() 方法不会删除该命名空间。
 参数
 ns:Namespace — 要删除的命名空间。
 返回
 XML — 生成的 XML 对象的副本。
 ************************************************************************************************/