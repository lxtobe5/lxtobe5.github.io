package lx.designpatterns.Decorator.BeverageExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class CondimentDecorator implements IBeverage
	{
		private var _description:String = "调料";
		
		public function CondimentDecorator()
		{
		}
		
		public function getDescription():String
		{
			return _description;
		}
		
		public function cost():Number
		{
			return 0;
		}
	}
}