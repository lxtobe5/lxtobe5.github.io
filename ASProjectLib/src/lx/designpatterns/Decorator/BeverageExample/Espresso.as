package lx.designpatterns.Decorator.BeverageExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Espresso implements IBeverage
	{
		private var _description:String = "浓咖啡";
		
		public function Espresso()
		{
			super();
		}
		
		public function getDescription():String
		{
			return _description;
		}
		
		public function cost():Number
		{
			return 1.99;
		}
	}
}