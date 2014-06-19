package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_setSettings extends Output
	{
		override public function run():void
		{
			XML.setSettings(XML.ignoreComments);
			var xml:XML = <front>
							<!--这是注释-->
							<key>  value</key>
							</front>;
			traceString(xml);
			//			<front>
			//			  <key>value</key>
			//			</front>
		}
	}
}
/************************************************************************************************
 setSettings	()	方法	 
 AS3 static function setSettings(... rest):void
 
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 
 设置下列 XML 属性的值：ignoreComments、ignoreProcessingInstructions、ignoreWhitespace、prettyIndent 和 prettyPrinting。以下是默认设置，如果未提供 setObj 参数，将应用这些设置：
 
 XML.ignoreComments = true
 XML.ignoreProcessingInstructions = true
 XML.ignoreWhitespace = true
 XML.prettyIndent = 2
 XML.prettyPrinting = true
 
 注意：不要将此方法应用于 XML 类的实例；应将其应用于 XML，如以下代码所示：XML.setSettings()。
 
 参数
 ... rest — 具有下列各个属性的对象：
 
 ignoreComments
 ignoreProcessingInstructions
 ignoreWhitespace
 prettyIndent
 prettyPrinting
 ************************************************************************************************/