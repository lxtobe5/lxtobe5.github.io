package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ResponseString
	{
		private var _str:String;
		
		public function ResponseString()
		{
		}
		
		public function get response():String
		{
			return _str;
		}
		
		public function set response(str:String):void
		{
			_str = str;
		}
	}
}