package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_setName extends Output
	{
		override public function run():void
		{
			//			使用 setName() 方法更改 XML 元素的名称：
			var xml:XML = 
				<item>
					toothbrush
				</item>;
			
			xml.setName("orderItem");
			traceString(xml.toXMLString()); // <orderItem>toothbrush</orderItem>
			
		}
	}
}
/************************************************************************************************
 setName	()	方法	 
 AS3 function setName(name:String):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 将该 XML 对象的名称设置为给定限定名称或属性名。
 参数
 name:String — 对象的新名称。
 ************************************************************************************************/