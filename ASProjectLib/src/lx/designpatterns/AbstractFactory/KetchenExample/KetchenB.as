package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class KetchenB implements IKetchenFactory
	{
		public function KetchenB()
		{
		}
		
		public function getFood():IFood
		{
			return new Meat();
		}
		
		public function getTableWare():ITableWare
		{
			return new Knife();
		}
	}
}