package lx.designpatterns.Adapter.SocketExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class GBSocket implements IGBSocket
	{
		public function powerWithThreeFlat():String
		{
			return "使用中国接口充电";
		}
	}
}