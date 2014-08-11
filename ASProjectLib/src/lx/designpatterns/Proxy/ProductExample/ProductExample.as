package lx.designpatterns.Proxy.ProductExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ProductExample extends Output
	{
		public function ProductExample()
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
			
			var product:IProduct = new ProductProxy(xml);
			traceString(product.getTitle()+"- - $" +product.getPrice());

		}
	}
}
/************************************************************************************************
 Product, ProductProxy实现IProduct
 ************************************************************************************************/