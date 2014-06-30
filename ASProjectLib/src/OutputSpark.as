package
{
	import spark.components.Group;
	import spark.components.TextArea;
	
	/**
	 *只是Spark的Group 
	 * @author Liuxin
	 * 
	 */	
	public class OutputSpark extends Group
	{
		public var printArea:TextArea;
		public var resource:String;
		
		public function traceString(content:*):void
		{
			printArea.text +=String(content)+"\n";
		}
		
		public function dispose():void
		{
			
		}
	}
}