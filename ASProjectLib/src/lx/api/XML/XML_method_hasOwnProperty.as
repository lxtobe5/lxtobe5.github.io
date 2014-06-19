package lx.api.XML
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class XML_method_hasOwnProperty extends Output
	{
		override public function run():void
		{
			//确保属性 (b) 在计算使用该属性的表达式 (b == "11") 之前便已存在
			var xml1:XML = 
				<foo>
					<a />
					<a>
						<b>10</b>
					</a>
					<a>
						<b>11</b>
					</a>
				</foo>;
			traceString(xml1.a.(hasOwnProperty("b") && b == "11")); 
			//			<a>
			//			  <b>11</b>
			//			</a>
			//			如果本示例的最后一行内容如下所示，则 Flash Player 将引发异常，因为第一个元素（名为 a）不具有名为 b 的属性：
			//			traceString(xml.a.(b == "11"));
			
			//确保属性 (item) 在计算使用该属性的表达式 (item.contains("toothbrush")) 之前便已存在
			var xml2:XML = 
				<orders>
					<order id='1'>
						<item>toothbrush</item>
						<item>toothpaste</item>
					</order>
					<order>
						<returnItem>shoe polish</returnItem>
					</order>
				</orders>;
			//			<order id="1">
			//			  <item>toothbrush</item>
			//			  <item>toothpaste</item>
			//			</order>
			traceString(xml2.order.(hasOwnProperty("item") && item.contains("toothbrush"))); 
		}
	}
}
/************************************************************************************************
 hasOwnProperty()	方法	 
 AS3 function hasOwnProperty(p:String):Boolean
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9
 检查该对象是否具有 p 参数所指定的属性。
 参数
 p:String — 要匹配的属性。
 返回
 Boolean — 如果此属性存在，则为 true；否则为 false。 
 ************************************************************************************************/