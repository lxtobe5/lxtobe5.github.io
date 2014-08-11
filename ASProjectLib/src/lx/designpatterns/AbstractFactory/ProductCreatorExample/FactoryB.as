package lx.designpatterns.AbstractFactory.ProductCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class FactoryB extends AbstractFactory
	{
		public function FactoryB()
		{
			
		}
		
		override public function createProduct():IProduct
		{
		    return new ProductB();
		}
		
	}
}