package lx.api.flash.media.StageWebView
{
	import flash.geom.Rectangle;
	import flash.media.StageWebView;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class StageWebView_method_loadURL extends Output
	{
		private var webView:StageWebView;
		override public function run():void
		{
			webView = new StageWebView();
			webView.stage = this.stage;
			webView.viewPort = new Rectangle(800,100, 300, 300);
			
			webView.loadURL( "http://www.example.com" );
		}
		
		override public function dispose():void
		{
			//移除的调用方式
			webView.dispose();
		}
	}
}