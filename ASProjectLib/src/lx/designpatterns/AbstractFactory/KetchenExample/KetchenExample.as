package lx.designpatterns.AbstractFactory.KetchenExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class KetchenExample extends Output
	{
		override public function run():void
		{
			var ketchenA:IKetchenFactory = new KetchenA();
			eat(ketchenA);
			var ketchenB:IKetchenFactory = new KetchenB();
			eat(ketchenB);
			var ketchenC:IKetchenFactory = new KetchenC();
			eat(ketchenC);
		}
		
		private function eat(ketchen:IKetchenFactory):void
		{
			traceString(ketchen+" : 用"+ketchen.getTableWare()+"吃/喝"+ketchen.getFood());
		}
	}
}
/************************************************************************************************
 Cake, Meat, Milk实现IFood
 Fork, Knife, Spoon实现ITableWare
 KetchenA, KetchenB, KetchenC实现IKetchenFactory
 ************************************************************************************************/