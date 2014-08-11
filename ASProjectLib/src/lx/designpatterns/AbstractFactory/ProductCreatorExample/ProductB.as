package lx.designpatterns.AbstractFactory.ProductCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ProductB implements IProduct
	{
		public function ProductB()
		{
			
		}
		
		public function getResult():String
		{
			return "创建"+this;
		}
	}
}