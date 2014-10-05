package lx.designpatterns.Decorator.BeverageExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Soy extends CondimentDecorator
	{
		private var _beverage:IBeverage;
		
		public function Soy(beverage:IBeverage)
		{
			_beverage = beverage;
		}
		
		public override function  getDescription():String
		{
			return _beverage.getDescription() + "+豆沫";
		}
		
		override public function cost():Number
		{
			return _beverage.cost() + 0.1;
		}
	}
}