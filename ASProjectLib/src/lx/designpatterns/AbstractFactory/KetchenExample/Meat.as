package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Meat implements IFood
	{
		public function Meat()
		{
		}
		
		public function getFood():String
		{
			return "食物"+this;
		}
	}
}