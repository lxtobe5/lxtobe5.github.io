package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_namespaceDeclarations extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
					xmlns:dc="http://purl.org/dc/elements/1.1/" 
					xmlns="http://purl.org/rss/1.0/">
		
					<!-- ... -->
					
				</rdf:RDF>;
			
			for (var i:uint = 0; i < xml.namespaceDeclarations().length; i++) {
				var ns:Namespace = xml.namespaceDeclarations()[i]; 
				var prefix:String = ns.prefix;
				if (prefix == "") {
					prefix = "(default)";
				}
				traceString(prefix + ":" + ns.uri);
			}
			
			//			rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns#
			//			dc: http://purl.org/dc/elements/1.1/
			//			(default): http://purl.org/rss/1.0/
		}
	}
}
/************************************************************************************************
 namespaceDeclarations	()	方法	 
 AS3 function namespaceDeclarations():Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 在该 XML 对象的父项中列出与其关联的命名空间声明。
 返回
 Array — Namespace 对象的数组。 
 ************************************************************************************************/