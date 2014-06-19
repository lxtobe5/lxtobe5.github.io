package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_propertyIsEnumerable extends Output
	{
		override public function run():void
		{
			//			对于 XML 对象，propertyNameIsEnumerable() 方法返回值 true（仅对于值 0），而对于 XMLList 对象，返回值为 true（对于 XMLList 对象的每个有效索引值）
			var xml:XML = 
				<body>
					 <p>Hello</p>
					   <p>World</p>
				</body>;
			
			traceString(xml.propertyIsEnumerable(0)); // true
			traceString(xml.propertyIsEnumerable(1)); // false
			
			for (var propertyName:String in xml) {
				traceString(xml[propertyName]);
			}
			
			var list:XMLList = xml.p;
			traceString(list.propertyIsEnumerable(0)); // true
			traceString(list.propertyIsEnumerable(1)); // true
			traceString(list.propertyIsEnumerable(2)); // false
			
			for (var name:String in list) { 
				traceString(list[name]);
			}
		}
	}
}
/************************************************************************************************
 propertyIsEnumerable	()	方法	 
 AS3 function propertyIsEnumerable(p:String):Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 检查属性 p 所在的属性集是否可在应用于 XMLList 对象的 for..in 语句中遍历。仅当 toString(p) == "0" 时返回 true。
 参数
 p:String — 要检查的属性。
 返回
 Boolean — 如果该属性可以在 for..in 语句中，为 true；否则为 false。 
 ************************************************************************************************/