package lx.api.flash.display.Shader
{
	import flash.display.Shader;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Shader_method_Shader extends Output
	{
		private var loader:URLLoader;
		
		override public function run():void
		{
			loader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.BINARY;
			loader.addEventListener(Event.COMPLETE, onLoadComplete);
			loader.load(new URLRequest(resource+"/donothing.pbj"));
		}
		
		private function onLoadComplete(event:Event):void
		{
			var shader:Shader = new Shader();
			shader.byteCode = loader.data;
			
			for (var p:String in shader.data)
			{
				traceString(p+ ":"+ shader.data[p]);
				for (var d:String in shader.data[p])
				{
					traceString("\t"+ d+ ":"+ shader.data[p][d]);
				}
			}
		}
	}
}