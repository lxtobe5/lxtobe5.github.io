package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class KetchenA implements IKetchenFactory
	{
		public function KetchenA()
		{
		}
		
		public function getFood():IFood
		{
			return new Cake();;
		}
		
		public function getTableWare():ITableWare
		{
			return new Fork();
		}
	}
}