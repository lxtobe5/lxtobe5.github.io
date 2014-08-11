package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class KetchenC implements IKetchenFactory
	{
		public function KetchenC()
		{
		}
		
		public function getFood():IFood
		{
			return new Milk();
		}
		
		public function getTableWare():ITableWare
		{
			return new Spoon();
		}
	}
}