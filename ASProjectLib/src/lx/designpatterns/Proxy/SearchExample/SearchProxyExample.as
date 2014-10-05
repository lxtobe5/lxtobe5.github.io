package lx.designpatterns.Proxy.SearchExample
{
	import flash.events.Event;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SearchProxyExample extends Output
	{
		
		override public function run():void
		{
			var searchProxy:BaiduSearchProxy = new BaiduSearchProxy();
			searchProxy.addEventListener(Event.COMPLETE,onComplete);
			searchProxy.search("设计模式");
		}
		
		private function onComplete(e:DataEvent):void
		{
			traceString(e.data);
		}
	}
}