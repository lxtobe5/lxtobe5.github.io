package lx.designpatterns.Decorator.BeverageExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Mocha extends CondimentDecorator
	{
		private var _beverage:IBeverage;
		
		public function Mocha(beverage:IBeverage)
		{
			_beverage = beverage;
		}
		
		public override function  getDescription():String
		{
			return _beverage.getDescription() + "+摩卡";
		}
		
		override public function cost():Number
		{
			return _beverage.cost() + 0.2;
		}
	}
}