package lx.designpatterns.Bridge.RoadExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SpeedWay extends AbstractRoad
	{
		override public function run():String
		{
			return car.run() + "高速公路上行驶";
		}
	}
}