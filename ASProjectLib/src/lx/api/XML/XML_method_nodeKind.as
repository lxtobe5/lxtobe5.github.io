package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_nodeKind extends Output
	{
		override public function run():void
		{
			XML.ignoreComments = false;
			XML.ignoreProcessingInstructions = false;
			
			var xml:XML = 
				<example id="10">
					<!-- this is a comment -->
					<?test this is a pi ?>
					and some text
				</example>;
			
			traceString(xml.nodeKind()); // element
			traceString(xml.children()[0].nodeKind()); // comment
			traceString(xml.children()[1].nodeKind()); // processing-instruction
			traceString(xml.children()[2].nodeKind()); // text
			traceString(xml.@id[0].nodeKind()); // attribute
		}
	}
}
/************************************************************************************************
 nodeKind	()	方法	 
 AS3 function nodeKind():String
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 指定节点的类型：文本、注释、处理指令、属性或元素。
 返回
 String — 所使用的节点类型。 
 ************************************************************************************************/