package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Milk implements IFood
	{
		public function Milk()
		{
		}
		
		public function getFood():String
		{
			return "食物"+this;
		}
	}
}