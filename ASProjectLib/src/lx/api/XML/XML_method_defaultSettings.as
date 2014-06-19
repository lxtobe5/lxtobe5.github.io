package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_defaultSettings extends Output
	{
		override public function run():void
		{
			/**
			 * 在设置 XML 对象之前应用某些自定义设置（以便包含注释和处理指令），如何在设置
			 * 另一个 XML 对象之前恢复为默认设置，以及如何再次设置自定义设置（以便设置更多 XML 对象）
			 * */
			XML.ignoreComments = false;
			XML.ignoreProcessingInstructions = false;
			var customSettings:Object = XML.settings();
			
			var xml1:XML = 
				<foo>
					<!-- comment -->
					<?instruction ?>
				</foo>;
			traceString(xml1.toXMLString());
			//    <foo>
			//        <!-- comment -->
			//         <?instruction ?>
			//    </foo>
			
			XML.setSettings(XML.defaultSettings());
			var xml2:XML = 
				<foo>
					<!-- comment -->
					<?instruction ?>
				</foo>;
			traceString(xml2.toXMLString());
			//<foo/>
		}
	}
}
/************************************************************************************************
 defaultSettings()	方法	 
 AS3 static function defaultSettings():Object
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 返回一个下列属性设置为默认值的对象：ignoreComments、ignoreProcessingInstructions、ignoreWhitespace、prettyIndent 和 prettyPrinting。其默认值如下：
 ignoreComments = true
 ignoreProcessingInstructions = true
 ignoreWhitespace = true
 prettyIndent = 2
 prettyPrinting = true
 注意：不要将此方法应用于 XML 类的实例；应将其应用于 XML，如以下代码所示：var df:Object = XML.defaultSettings()。
 返回
 Object — 属性设置为默认设置的对象。 
 ************************************************************************************************/