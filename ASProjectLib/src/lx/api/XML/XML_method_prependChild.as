package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_prependChild extends Output
	{
		override public function run():void
		{
			//			将元素添加到 XML 对象子级列表的开头
			var xml:XML = 
				<body>
					<p>hello</p>
				</body>;
			
			xml.prependChild(<p>world</p>);    
			traceString(xml.p[0].toXMLString()); // <p>world</p>
			traceString(xml.p[1].toXMLString()); // <p>hello</p>
		}
	}
}
/************************************************************************************************
 prependChild	()	方法	 
 AS3 function prependChild(value:Object):XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 将提供的 child 对象的副本插入 XML 元素中，并放在该元素的任何现有 XML 属性前面。
 使用 delete (XML) 运算符删除 XML 节点。
 参数
 value:Object — 要插入的对象。
 返回
 XML — 生成的 XML 对象。 
 ************************************************************************************************/