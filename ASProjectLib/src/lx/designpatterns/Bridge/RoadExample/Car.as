package lx.designpatterns.Bridge.RoadExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Car extends AbstractCar
	{
		public function Car()
		{
			super();
		}
		
		override public function run():String
		{
			return "小汽车在";
		}
	}
}