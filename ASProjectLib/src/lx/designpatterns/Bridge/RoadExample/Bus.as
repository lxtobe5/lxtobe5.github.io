package lx.designpatterns.Bridge.RoadExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Bus extends AbstractCar
	{
		public function Bus()
		{
			super();
		}
		
		override public function run():String
		{
			return "公共汽车在";
		}
	}
}