package lx.designpatterns.AbstractFactory.ProductCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ProductA implements IProduct
	{
		public function ProductA()
		{
			
		}
		
		public function getResult():String
		{
			return "创建"+this;
		}
	}
}