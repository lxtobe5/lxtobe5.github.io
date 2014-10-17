package lx.designpatterns.Adapter.SocketExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class DBHotel
	{
		private var _dbSocket:IDBSocket;
		
		public function DBHotel()
		{  
		}  
		
		public function setSocket(dbSocket:IDBSocket):void
		{  
			_dbSocket = dbSocket;  
		}  
		
		public function charge():String
		{
			return _dbSocket.powerWithTwoRound();  
		}
	}
}