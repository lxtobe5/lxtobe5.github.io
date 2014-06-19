package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_attributes extends Output
	{
		override public function run():void
		{
			var xml1:XML=<example id='123' color='blue'/>;
			traceString(xml1.attributes()[1]);
			//blue   返回属性的值
			traceString(xml1.attributes()[1].name());
			//color  返回属性的名称
			
			
			//返回所有属性的名称
			var xml2:XML = <example id='123' color='blue'/>;
			var attNamesList:XMLList = xml2.@*;
			
			traceString(attNamesList is XMLList); // true
			traceString(attNamesList.length()); // 2
			
			for (var i:int = 0; i < attNamesList.length(); i++)
			{ 
				traceString(typeof (attNamesList[i])); // xml
				traceString(attNamesList[i].nodeKind()); // attribute
				traceString(attNamesList[i].name()); // id and color
			} 
		}
	}
}
/************************************************************************************************
 attributes()	方法	 
 AS3 function attributes():XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 返回给定 XML 对象的属性值列表。结合使用 name() 方法和 attributes() 方法可返回属性的名称。使用 xml.attributes() 等效于 xml.@*。
 返回
 XMLList — 属性值的列表。 
 ************************************************************************************************/