package lx.designpatterns.Observer.SubscribeExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SubscribeReceiver
	{
		private var _name:String;
		
		public function SubscribeReceiver(value:String)
		{
			_name = value;
		}
		
		public function update(message:String):String
		{
			return _name + "收到" + message;
		}
	}
}