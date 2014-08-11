package lx.designpatterns.AbstractFactory.ProductCreatorExample
{
	import lx.designpatterns.AbstractFactory.ProductCreatorExample.AbstractFactory;
	import lx.designpatterns.AbstractFactory.ProductCreatorExample.FactoryA;
	import lx.designpatterns.AbstractFactory.ProductCreatorExample.FactoryB;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ProductCreatorExample extends Output
	{
		override public function run():void
		{
			var factoryA:AbstractFactory = new FactoryA();
			traceString(factoryA.createProduct().getResult());
			
			var factoryB:AbstractFactory = new FactoryB();
			traceString(factoryB.createProduct().getResult());
		}
	}
}
/************************************************************************************************
FactoryA,FactoryB继承AbstractFactory
ProductA,ProductB实现IProduct
 ************************************************************************************************/
