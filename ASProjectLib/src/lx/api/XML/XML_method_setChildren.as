package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_setChildren extends Output
	{
		override public function run():void
		{
			//			调用 setChildren() 方法时，先使用 XML 对象作为参数，然后使用 XMLList 对象作为参数
			var xml:XML = 
				<body>
					<p>Hello</p>
					<p>World</p>
				</body>;
			
			var list:XMLList = xml.p;
			
			xml.setChildren(<p>hello</p>);
			traceString(xml);
			
			//    <body>
			//        <p>hello</p>
			//    </body>
			
			xml.setChildren(list);
			traceString(xml);
			
			//    <body>
			//        <p>Hello</p>
			//        <p>World</p>
			//    </body>
		}
	}
}
/************************************************************************************************
 setChildren	()	方法	 
 AS3 function setChildren(value:Object):XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 用 value 参数中提供的指定 XML 属性集替换该 XML 对象的子属性。
 参数
 value:Object — 替换 XML 属性。可以是单个 XML 对象或 XMLList 对象。
 返回
 XML — 生成的 XML 对象。 
 ************************************************************************************************/