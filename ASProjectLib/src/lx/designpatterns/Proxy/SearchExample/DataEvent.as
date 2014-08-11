package lx.designpatterns.Proxy.SearchExample
{
	import flash.events.Event;
	
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class DataEvent extends Event
	{
		public var data:Object;
		
		public function DataEvent(type:String, data:Object, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.data = data;
			super(type, bubbles, cancelable);
		}
	}
}