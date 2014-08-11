package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Spoon implements ITableWare
	{
		public function Spoon()
		{
		}
		
		public function getTableWare():String
		{
			return "餐具"+this;
		}
	}
}