package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_copy extends Output
	{
		override public function run():void
		{
			//创建 XML 对象的新实例。修改副本时，原始对象保持不变
			var xml1:XML = <foo />;
			var xml2:XML = xml1.copy();
			xml2.appendChild(<bar />);
			traceString(xml1.bar.length()); // 0
			traceString(xml2.bar.length()); // 1
		}
	}
}
/************************************************************************************************
 copy()	方法	 
 AS3 function copy():XML
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 返回给定 XML 对象的副本。该副本为整个节点树的副本。复制的 XML 对象没有父级，如果尝试调用 parent() 方法，将返回 null。
 返回
 XML — 对象的副本。 
 ************************************************************************************************/