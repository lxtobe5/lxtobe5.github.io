package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Cake implements IFood
	{
		public function Cake()
		{
		}
		
		public function getFood():String
		{
			return "食物"+this;
		}
	}
}