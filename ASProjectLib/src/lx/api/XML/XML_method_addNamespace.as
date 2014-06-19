package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_addNamespace extends Output
	{
		override public function run():void
		{
			var xml1:XML = <ns:foo xmlns:ns="www.example.com/ns" />;
			var nsNamespace:Namespace = xml1.namespace();
			
			var xml2:XML = <bar />;
			xml2.addNamespace(nsNamespace);
			traceString(xml2.toXMLString());
			// <bar xmlns:ns="www.example.com/ns"/>
		}
	}
}
/************************************************************************************************
 addNamespace()	方法
 AS3 function addNamespace(ns:Object):XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 可将命名空间添加到该 XML 对象所在范围的命名空间集中。如果 XML 对象（其前缀与给定参数的前缀匹配）所在范围的命名空间中已存在该命名空间，则现有命名空间的前缀将设置为 undefined。如果输入参数是一个 Namespace 对象，则直接使用该参数。如果它是一个 QName 对象，则使用输入参数的 URI 创建新的命名空间；否则，会将它转换为一个 String 值并根据该 String 值创建命名空间。
 参数
 ns:Object — 要添加到 XML 对象中的命名空间。
 返回
 XML — 添加了命名空间的新 XML 对象。 
 ************************************************************************************************/