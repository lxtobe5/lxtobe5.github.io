package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_contains extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<order>
					<item>Rice</item>
					<item>Kung Pao Shrimp</item>
				</order>;
			traceString(xml.item[0].contains(<item>Rice</item>)); // true
			traceString(xml.item[1].contains(<item>Kung Pao Shrimp</item>)); // true
			traceString(xml.item[1].contains(<item>MSG</item>)); // false
		}
	}
}
/************************************************************************************************
 contains()	方法	 
 AS3 function contains(value:XML):Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 对比该 XML 对象与给定 value 参数。
 参数
 value:XML — 要与当前 XML 对象进行对比的值。
 返回
 Boolean — 如果 XML 对象与 value 参数匹配，则为 true；否则为 false。 
 ************************************************************************************************/