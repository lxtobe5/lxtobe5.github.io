package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_descendants extends Output
	{
		override public function run():void
		{
			//要返回名称与 ActionScript 保留字相匹配的后代，请使用 descendants() 方法，而不要使用 descendant (..) 运算符
			var xml1:XML = 
				<enrollees>
				  <student id="239">
					  <class name="Algebra" />
					  <class name="Spanish 2"/>
				  </student>
				  <student id="206">
					  <class name="Trigonometry" />
					  <class name="Spanish 2" />
				  </student>
				</enrollees>
			traceString(xml1.descendants("class")); 
			//<class name="Algebra"/>
			//<class name="Spanish 2"/>
			//<class name="Trigonometry"/>
			//<class name="Spanish 2"/>
			
			//返回包含所有后代对象（包括子级、孙级等）的 XMLList 对象
			XML.ignoreComments = false;
			var xml2:XML = 
				<body>
					<!-- comment -->
					text1
					<a>
						<b>text2</b>
					</a>
				</body>;
			traceString(xml2.descendants("*").length()); // 5
			traceString(xml2.descendants("*")[0]); // // <!-- comment -->
			traceString(xml2.descendants("*")[1].toXMLString()); // text1
			traceString(xml2.descendants("a").toXMLString()); // <a><b>text2</b></a>
			traceString(xml2.descendants("b").toXMLString()); // <b>text2</b>
		}
	}
}
/************************************************************************************************
 descendants()	方法	 
 AS3 function descendants(name:Object = *):XMLList
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 返回包含给定 name 参数的 XML 对象的所有后代（子级、孙级、曾孙级等）。name 参数是可选项。name 参数可以为 QName 对象、String 数据类型或随后转换为 String 数据类型的任何其他数据类型。
 要返回所有后代，请使用“*”参数。如果未传递任何参数，则传递字符串“*”，并返回此 XML 对象的所有后代。
 参数
 name:Object (default = *) — 要匹配的元素的名称。
 返回
 XMLList — 匹配后代的 XMLList 对象。如果没有后代，则返回空的 XMLList 对象。 
 ************************************************************************************************/