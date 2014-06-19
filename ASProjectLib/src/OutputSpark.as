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
		
		public function traceString(content:*):void
		{
			printArea.text +=String(content)+"\n";
		}
	}
}