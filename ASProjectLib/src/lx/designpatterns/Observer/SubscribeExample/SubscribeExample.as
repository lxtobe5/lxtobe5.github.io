package lx.designpatterns.Observer.SubscribeExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SubscribeExample extends Output
	{
		override public function run():void
		{
			var sender:SubscribeSender = new SubscribeSender();
			
			//创建和注册多个订阅者(观察者)
			var r1:SubscribeReceiver = new SubscribeReceiver("a");
			var r2:SubscribeReceiver = new SubscribeReceiver("b");
			var r3:SubscribeReceiver = new SubscribeReceiver("c");
			sender.registerReceiver(r1);
			sender.registerReceiver(r2);
			sender.registerReceiver(r3);
			
			traceString(sender.sendNotification("消息AAA"));
			sender.removeReceiver(r1);
			traceString(sender.sendNotification("邮件"));
		}
	}
}