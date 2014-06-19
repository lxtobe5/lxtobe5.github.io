package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_insertChildAfter extends Output
	{
		override public function run():void
		{
			var xml:XML = 
				<menu>
					<item>burger</item>
					<item>soda</item>
				</menu>;
			xml.insertChildAfter(xml.item[0], <saleItem>fries</saleItem>);
			traceString(xml);
			//			<menu>
			//			  <item>burger</item>
			//			  <saleItem>fries</saleItem>
			//			  <item>soda</item>
			//			</menu>
		}
	}
}
/************************************************************************************************
 insertChildAfter	()	方法	 
 AS3 function insertChildAfter(child1:Object, child2:Object):*
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 在该 XML 对象的 child1 参数后插入给定的 child2 参数并返回生成的对象。如果 child1 参数为 null，则该方法将在 XML 对象的所有子项之前 插入 child2 的内容（也就是说，不 在任何子项之后）。如果提供 child1，但 XML 对象中不包含该参数，则不修改该 XML 对象并返回 undefined。
 如果对不是元素（文本、属性、注释、pi 等等）的 XML 子项调用该方法，则返回 undefined。
 使用 delete (XML) 运算符删除 XML 节点。
 参数
 child1:Object — 在 child2 之前插入的源对象中的对象。
 child2:Object — 要插入的对象。
 返回
 * — 生成的 XML 对象或 undefined。 
 ************************************************************************************************/