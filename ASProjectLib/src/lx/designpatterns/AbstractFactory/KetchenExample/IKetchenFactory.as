package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public interface IKetchenFactory
	{
		function getFood():IFood;
		function getTableWare():ITableWare;
	}
}