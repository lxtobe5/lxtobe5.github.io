package lx.designpatterns.Adapter.SocketExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SocketAdapter implements IDBSocket
	{
		private var _gbSocket:IGBSocket;
		
		public function SocketAdapter(gbSocket:IGBSocket)
		{
			_gbSocket = gbSocket;
		}
		
		public function powerWithTwoRound():String
		{  
			return _gbSocket.powerWithThreeFlat();
		}  
	}
}