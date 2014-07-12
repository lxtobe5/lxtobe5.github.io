package 
{
	import flash.display.DisplayObject;
	import flash.display.Stage;
	
	import mx.core.UIComponent;
	
	import spark.components.TextArea;

	public class Output
	{
		public var stage:Stage;
		public var printArea:TextArea;
		public var drawArea:UIComponent;
		public var resource:String;
		
		public function traceString(content:*):void
		{
			printArea.text +=String(content)+"\n";
		}
		
		public function tracePattern(content:DisplayObject):void
		{
			drawArea.addChild(content);
		}
		
		public function run():void
		{
			
		}
		
		public function dispose():void
		{
			
		}
	}
}