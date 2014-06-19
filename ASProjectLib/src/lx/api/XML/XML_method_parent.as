package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_parent extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<body>
					<p id="p1">Hello</p>
					<p id="p2">Test:
						<ul>
							<li>1</li>
							<li>2</li>
						</ul>
					</p>
				</body>;
			var node:XML = xml.p.ul.(li.contains("1"))[0]; // == <ul> ... </ul>
			traceString(node.parent().@id); // p2
		}
	}
}
/************************************************************************************************
 parent	()	方法	 
 AS3 function parent():*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 返回 XML 对象的父项。如果该 XML 对象没有父项，则该方法返回 undefined。
 返回
 * — 父节点的 XML 引用或 undefined（如果 XML 对象没有父级）。 
 ************************************************************************************************/