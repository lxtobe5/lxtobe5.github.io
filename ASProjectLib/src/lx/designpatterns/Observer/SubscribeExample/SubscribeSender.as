package lx.designpatterns.Observer.SubscribeExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SubscribeSender
	{
		//订阅者对象列表
		private var _subscribeArg:Array = [];    
		private var _notification:String;
		
		public function SubscribeSender()
		{
		}
		
		public function registerReceiver(receiver:SubscribeReceiver):void
		{
			_subscribeArg.push(receiver);
		}
		
		public function removeReceiver(receiver:SubscribeReceiver):void
		{
			var _receiver:SubscribeReceiver;
			for each(_receiver in _subscribeArg)
			{
				if(_receiver == receiver)
				{
					break;
				}
			}
			_subscribeArg.splice(_receiver, 1);
		}
		
		public function sendNotification(notification:String):String
		{
			_notification = notification;
			var string:String = "";
			var arg:Array = this.notify();
			for (var i:int = 0; i < arg.length; i++) 
			{
				string += arg[i]  + "\n";
			}
			return string;
		}
		
		private function notify():Array
		{
			var names:Array = [];
			var receiver:SubscribeReceiver;
			for each(receiver in _subscribeArg)
			{
				names.push(receiver.update(_notification));
			}
			return names;
		}
	}
}