package lx.designpatterns.Bridge.RoadExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Street extends AbstractRoad
	{
		public function Street()
		{
			super();
		}
		
		override public function run():String
		{
			return car.run() + "市区街道上行驶";
		}
	}
}