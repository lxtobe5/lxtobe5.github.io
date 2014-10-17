package lx.designpatterns.Adapter.SocketExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SocketExample extends Output
	{
		override public function run():void
		{
			var hotel:DBHotel = new DBHotel();
			var gbSocket:IGBSocket  = new GBSocket();
			var socketAdapter:SocketAdapter = new SocketAdapter(gbSocket);
			hotel.setSocket(socketAdapter);
			traceString(hotel.charge());
		}
	}
}