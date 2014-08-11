package lx.designpatterns.AbstractFactory.ProductCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class FactoryA extends AbstractFactory
	{
		public function FactoryA()
		{
			
		}
		
		override public function createProduct():IProduct
		{
		    return new ProductA();
		}
		
	}
}