package lx.designpatterns.Bridge.RoadExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class RoadExample extends Output
	{
		override public function run():void
		{
			//小汽车在高速公路上行驶
			var speedWay:AbstractRoad = new SpeedWay();
			speedWay.car = new Car();
			traceString(speedWay.run());
			
			//公共汽车在高速公路上行驶
			var speedWay2:AbstractRoad = new Street();
			speedWay2.car = new Bus();
			traceString(speedWay2.run());
		}
	}
}