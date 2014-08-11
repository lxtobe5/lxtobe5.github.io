package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Fork implements ITableWare
	{
		public function Fork()
		{
		}
		
		public function getTableWare():String
		{
			return "餐具"+this;
		}
	}
}