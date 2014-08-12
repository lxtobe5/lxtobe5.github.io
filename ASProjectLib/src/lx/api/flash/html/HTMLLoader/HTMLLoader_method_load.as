package lx.api.flash.html.HTMLLoader
{
	import flash.html.HTMLLoader;
	import flash.net.URLRequest;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class HTMLLoader_method_load extends Output
	{
		public const url:String = "http://www.163.com";
		
		override public function run():void
		{
			var html:HTMLLoader = new HTMLLoader();
			html.htmlHost = new HTMLHost_extends();
			html.width = 400;
			html.height = 400;
			html.load(new URLRequest(url));
			tracePattern(html);
		}
	}
}