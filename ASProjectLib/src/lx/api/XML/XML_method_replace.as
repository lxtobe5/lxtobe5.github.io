package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_replace extends Output
	{
		override public function run():void
		{
			//			调用 replace() 方法时将整数作为第一个参数
			var xml1:XML = 
				<body>
					<p>Hello</p>
					<p>World</p>
					<hr/>
				</body>;
			
			xml1.replace(1, <p>Bob</p>);
			traceString(xml1);
			//			<body>
			//				 <p>Hello</p>
			//				 <p>Bob</p>
			//				 <hr/>
			//			 </body>
			
			//			调用 replace() 方法时将字符串作为第一个参数
			var xml2:XML = 
				<body>
					<p>Hello</p>
					<p>World</p>
					<hr/>
				</body>;
			
			xml2.replace("p", <p>Hi</p>); 
			traceString(xml2);
			//			<body>
			//				 <p>Hi</p>
			//				 <hr/>
			//			 </body>;
			
			//			调用 replace() 方法时将 QName 作为第一个参数
			var xml3:XML = 
				<ns:body xmlns:ns = "myNS">
					<ns:p>Hello</ns:p>
					<ns:p>World</ns:p>
					<hr/>
				</ns:body>;
			
			var qname:QName = new QName("myNS", "p");
			xml3.replace(qname, <p>Bob</p>);
			traceString(xml3);
			//			<ns:body xmlns:ns = "myNS">
			//				<p>Bob</p>
			//				<hr/>
			//			</ns:body>
			
			//			调用 replace() 方法时将字符串 "*" 作为第一个参数
			var xml:XML = 
				<body>
					<p>Hello</p>
					<p>World</p>
					<hr/>
				</body>;
			
			xml.replace("*", <img src = "hello.jpg"/>);
			traceString(xml);
			//			<body>
			//				<img src="hello.jpg"/>
			//			</body>
		}
	}
}
/************************************************************************************************
 replace	()	方法	 
 AS3 function replace(propertyName:Object, value:XML):XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 用给定的 value 参数替换 propertyName 参数所指定的属性。如果没有属性与 propertyName 匹配，会将 XML 对象保持为未修改状态。
 参数
 propertyName:Object — 可以是数值、XML 元素集的非限定名称、XML 元素集的限定名称或星号通配符 (*)。使用非限定名称标识默认命名空间中的 XML 元素。
 value:XML — 替换值。它可以是 XML 对象、XMLList 对象或可以使用 toString() 转换的任何值。
 返回
 XML — 生成的 XML 对象，其中替换了匹配属性。 
 ************************************************************************************************/