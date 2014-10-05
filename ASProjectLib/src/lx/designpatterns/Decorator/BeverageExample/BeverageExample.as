package lx.designpatterns.Decorator.BeverageExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BeverageExample extends Output
	{
		override public function run():void
		{
			var espresso:IBeverage = new Espresso();
			traceString(espresso.getDescription()+espresso.cost());
			
			espresso = new Mocha(espresso);
			traceString(espresso.getDescription()+espresso.cost());
			
			espresso = new Soy(espresso);
			traceString(espresso.getDescription()+espresso.cost());
		}
	}
}