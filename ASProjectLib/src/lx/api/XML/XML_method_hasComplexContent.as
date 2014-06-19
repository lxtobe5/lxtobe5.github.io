package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_hasComplexContent extends Output
	{
		override public function run():void
		{
			//一个 XML 对象有一个包含简单内容的名为 a 的属性，以及一个包含复杂内容的名为 a 的属性
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
 hasComplexContent()	方法	 
 AS3 function hasComplexContent():Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 检查该 XML 对象是否包含复杂内容。如果 XML 对象具有子元素，则表明它包含复杂内容。表示属性、注释、处理指令和文本节点的 XML 对象不包含复杂内容。但是，仍可将包含上述内容的对象视为包含复杂内容（条件是该对象具有子元素）。
 返回
 Boolean — 如果 XML 对象包含复杂内容，则为 true，否则为 false。 
 ************************************************************************************************/