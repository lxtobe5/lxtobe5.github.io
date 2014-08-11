package lx.designpatterns.Proxy.SearchExample
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BaiduSearchProxy extends EventDispatcher
	{
		private const baidu:String = "http://www.baidu.com/s?wd="
		public function BaiduSearchProxy()
		{
		}
		
		public function search(keywords:String):void
		{
			var urlLoader:URLLoader = new URLLoader();
			urlLoader.addEventListener(Event.COMPLETE,onComplete);
			urlLoader.load(new URLRequest(baidu+keywords));
		}
		
		private function onComplete(e:Event):void
		{
			dispatchEvent(new DataEvent(Event.COMPLETE,e.target.data));
		}
	}
}