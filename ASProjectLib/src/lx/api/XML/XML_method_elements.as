package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_elements extends Output
	{
		override public function run():void
		{
			//只返回元素列表，而不返回注释、文本属性或处理指令
			var xml1:XML = 
				<foo>
					<!-- comment -->
					<?instruction ?>
					text
					<a>1</a>
					<b>2</b>
				</foo>;
			traceString(xml1.elements("*").length()); // 2
			traceString(xml1.elements("*")[0].toXMLString()); // <a>1</a>
			traceString(xml1.elements("b").length()); // 1
			traceString(xml1.elements("b")[0].toXMLString()); // <b>2</b>
			
			//要返回名称与 ActionScript 保留字相匹配的元素，请使用 elements() 方法替代 XML dot (.) 运算符
			var xml2:XML =
				<student id="206">
				   <class name="Trigonometry" />
				   <class name="Spanish 2" />
				</student>
			 traceString(xml2.elements("class")); 
			//<class name="Trigonometry"/>
			//<class name="Spanish 2"/>
		}
	}
}
/************************************************************************************************
 elements()	方法	 
 AS3 function elements(name:Object = *):XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 列出某 XML 对象的元素。一个由开始和结束标签组成的元素；例如 <first></first>。name 参数是可选项。name 参数可以为 QName 对象、String 数据类型或随后转换为 String 数据类型的任何其他数据类型。使用 name 参数可列出特定元素。例如，以下示例中的元素“first”返回“John”：<first>John</first>。
 要列出所有元素，请使用星号 (*) 作为参数。该星号也是默认参数。
 使用带星号参数的 length() 方法可输出元素的总数。例如，numElement = addressbook.elements("*").length()。
 参数
 name:Object (default = *) — 元素的名称。元素的名称由尖括号括起。例如，以下示例中的“first”为 name：<first></first>。
 返回
 XMLList — 元素内容的 XMLList 对象。元素内容位于起始和结束标签之间。如果使用星号 (*) 调用所有元素，将返回元素的标签和内容。 
 ************************************************************************************************/