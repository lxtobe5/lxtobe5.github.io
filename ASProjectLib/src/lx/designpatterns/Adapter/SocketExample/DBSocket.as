package lx.designpatterns.Adapter.SocketExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class DBSocket implements IDBSocket
	{
		public function DBSocket()
		{
		}
		
		public function powerWithTwoRound():String
		{
			return "使用德国接口充电";
		}
	}
}