package lx.api.flash.html.HTMLLoader
{
	import flash.html.HTMLHost;
	import flash.html.HTMLLoader;
	import flash.html.HTMLWindowCreateOptions;
	
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class HTMLHost_extends extends HTMLHost
	{
		private var _html:HTMLLoader;
		
		public function HTMLHost_extends(defaultBehaviors:Boolean=true,html:HTMLLoader=null)
		{
			_html = html;
			super(defaultBehaviors);
		}
		
		override public function createWindow(windowCreateOptions:HTMLWindowCreateOptions):HTMLLoader
		{
			return htmlLoader;
		}
	}
}