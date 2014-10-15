package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class RequestString
	{
		private var _str:String;
		
		public function RequestString()
		{
		}
		
		public function get request():String
		{
			return _str;
		}
		
		public function set request(str:String):void
		{
			_str = str;
		}
	}
}