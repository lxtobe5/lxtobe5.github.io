package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_children extends Output
	{
		override public function run():void
		{
			XML.ignoreComments = false;
			XML.ignoreProcessingInstructions = false;
			var xml:XML = 
				<foo id="22">
					<bar>44</bar>
					text
					<!-- comment -->
					<?instruction ?>
				</foo>;
			traceString(xml.children().length()); // 4
			traceString(xml.children()[0].toXMLString()); // <bar>44</bar>
			traceString(xml.children()[1].toXMLString()); // text
			traceString(xml.children()[2].toXMLString()); // <!-- comment -->
			traceString(xml.children()[3].toXMLString()); // <?instruction ?>
		}
	}
}
/************************************************************************************************
 children()	方法	 
 AS3 function children():XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 按 XML 对象的显示顺序列出其子项。一个 XML 子项就是一个 XML 元素、文本节点、注释或处理指令。
 返回
 XMLList — XML 对象子项的 XMLList 对象。 
 ************************************************************************************************/