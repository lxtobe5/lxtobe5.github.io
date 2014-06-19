package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_appendChild extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<body>
					<p>hello</p>
				</body>;
			
			xml.appendChild(<p>world</p>);    
			traceString(xml.p[0].toXMLString());
			// <p>hello</p>
			traceString(xml.p[1].toXMLString());
			// <p>world</p>
		}
	}
}
/************************************************************************************************
 appendChild()	方法	 
 AS3 function appendChild(child:Object):XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 将给定子项追加到该 XML 对象属性的末尾。appendChild() 方法可采用 XML 对象、XMLList 对象或随后转换为 String 的任何其他数据类型。
 使用 delete (XML) 运算符删除 XML 节点。
 参数
 child:Object — 要追加的 XML 对象。
 返回
 XML — 生成的 XML 对象。
 ************************************************************************************************/