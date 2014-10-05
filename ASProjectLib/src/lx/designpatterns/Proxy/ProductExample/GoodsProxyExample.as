package lx.designpatterns.Proxy.ProductExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class GoodsProxyExample extends Output
	{
		public function GoodsProxyExample()
		{
			super();
		}
		
		override public function run():void
		{
			var xml:XML = 
				<product>
					<title>Widget</title>
					<price>19.95</price>
				</product>;
			
			var product:IGoods = new GoodsProxy(xml);
			traceString(product.getTitle()+"- - $" +product.getPrice());

		}
	}
}
/************************************************************************************************
 Product, ProductProxy实现IProduct
 ************************************************************************************************/