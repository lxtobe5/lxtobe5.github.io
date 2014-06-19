package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_child extends Output
	{
		override public function run():void
		{
			//使用 child() 方法识别具有指定名称的子元素
			var xml:XML = 
				<foo>
					<bar>text1</bar>
					<bar>text2</bar>
				</foo>;
			traceString(xml.child("bar").length());  // 2
			traceString(xml.child("bar")[0].toXMLString()); // <bar>text1</bar>
			traceString(xml.child("bar")[1].toXMLString()); // <bar>text2</bar>
		}
	}
}
/************************************************************************************************
 child	()	方法	 
 AS3 function child(propertyName:Object):XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 列出 XML 对象的子项。一个 XML 子项就是一个 XML 元素、文本节点、注释或处理指令。
 使用 propertyName 参数可列出特定 XML 子项的内容。例如，要返回名为 <first> 的子项的内容，请对 XML 对象调用 child("first")。使用子项的索引编号，可以生成相同的结果。索引编号标识该子项在其他 XML 子项列表中的位置。例如，child(0) 会返回列表中的第一个子项。
 使用星号 (*) 可输出 XML 文档中的所有子项。例如，doc.child("*")。
 结合使用 length() 方法与 child() 方法的星号 (*) 参数可输出子项的总数。例如，numChildren = doc.child("*").length()。
 参数
 propertyName:Object — XML 子对象的元素名称或整数。
 返回
 XMLList — 与输入参数匹配的子节点的 XMLList 对象。 
 ************************************************************************************************/