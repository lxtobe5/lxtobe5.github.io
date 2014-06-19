package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_attribute extends Output
	{
		override public function run():void
		{
			// QName 对象传递给 attribute() 方法。localName 属性为 attr，namespace 属性为 ns
			var xml1:XML = <ns:node xmlns:ns = "http://uri" ns:attr = '7' />       
			var qn:QName = new QName("http://uri", "attr");
			traceString(xml1.attribute(qn));
			// 7
			
			//要返回名称与 ActionScript 保留字匹配的属性，请使用 attribute() 方法替代 attribute identifier (@) 运算符
			var xml2:XML = <example class="first" />
			traceString(xml2.attribute("class"));
			// first
		}
	}
}
/************************************************************************************************
 attribute()	方法	 
 AS3 function attribute(attributeName:*):XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 返回其名称与 attributeName 参数相符的属性的 XML 值。可在 XML 元素内找到属性。在以下示例中，元素具有名为“gender”的属性，其值为“boy”：<first gender="boy">John</first>。
 attributeName 参数可以是任何数据类型；但 String 是最常用的数据类型。在传递 QName 对象之外的任何对象时，attributeName 参数会使用 toString() 方法将参数转换为字符串。
 如果需要一个限定名称引用，可以传入 QName 对象。QName 对象可定义命名空间和本地名称，还可定义属性的限定名称。因此，调用 attribute(qname) 不同于调用 attribute(qname.toString())。
 参数
 attributeName:* — 属性的名称。
 返回
 XMLList — 一个 XMLList 对象或空的 XMLList 对象。在未定义属性值时返回一个空的 XMLList 对象。 
 ************************************************************************************************/