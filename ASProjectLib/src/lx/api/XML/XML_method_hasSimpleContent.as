package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_hasSimpleContent extends Output
	{
		override public function run():void
		{
			//该对象有一个包含简单内容的名为 a 的属性，以及一个包含复杂内容的名为 a 的属性
			var xml:XML = 
				<foo>
					<a>
						text
					</a>
					<a>
						<b/>
					</a>
				</foo>;
			traceString(xml.a[0].hasComplexContent()); // false
			traceString(xml.a[1].hasComplexContent()); // true
			
			traceString(xml.a[0].hasSimpleContent()); // true
			traceString(xml.a[1].hasSimpleContent()); // false
		}
	}
}
/************************************************************************************************
 hasSimpleContent	()	方法	 
 AS3 function hasSimpleContent():Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 检查该 XML 对象是否包含简单内容。如果 XML 对象表示文本节点、属性节点或不包含子元素的 XML 元素，则表明它包含简单内容。表示注释和处理指令的 XML 对象不包含简单内容。
 返回
 Boolean — 如果 XML 对象包含简单内容，则为 true，否则为 false。 
 ************************************************************************************************/