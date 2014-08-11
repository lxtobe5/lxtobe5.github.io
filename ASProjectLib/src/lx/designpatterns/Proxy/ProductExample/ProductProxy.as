package lx.designpatterns.Proxy.ProductExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ProductProxy implements IProduct
	{
		private var _xml:XML;
		private var _product:Product;
		
		public function ProductProxy(xml:XML)
		{
			_xml = xml;
			_product = new Product();
		}
		
		public function getPrice():Number
		{
			if(isNaN(_product.getPrice()))
				_product.setPrice(Number(_xml.price.toString()));
			return _product.getPrice();
		}
		
		public function getTitle():String
		{
			if(_product.getTitle()==null)
			{
				_product.setTitle(_xml.title.toString());
			}
			return _product.getTitle();
		}
		
		public function setPrice(price:Number):void
		{
			_xml.price = price;
			_product.setPrice(price);
		}
		
		public function setTitle(title:String):void
		{
			_xml.title = title;
			_product.setTitle(title);
		}
	}
}