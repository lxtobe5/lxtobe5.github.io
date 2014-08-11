package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Knife implements ITableWare
	{
		public function Knife()
		{
		}
		
		public function getTableWare():String
		{
			return "餐具"+this;
		}
	}
}