package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_childIndex extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<foo>
					<bar />
					text
					<bob />
				</foo>;
			traceString(xml.bar.childIndex()); // 0
			traceString(xml.bob.childIndex()); // 2
		}
	}
}
/************************************************************************************************
 childIndex	()	方法	 
 AS3 function childIndex():int
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 确定该 XML 对象在其父项上下文中从 0 开始编制索引的位置。
 返回
 int — 对象的位置。返回 -1 以及正整数。 
 ************************************************************************************************/