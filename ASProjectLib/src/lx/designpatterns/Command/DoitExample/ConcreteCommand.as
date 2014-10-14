package lx.designpatterns.Command.DoitExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ConcreteCommand implements ICommand
	{
		private var _receiver:Receiver;
		
		public function ConcreteCommand(rectiver:Receiver)
		{
			_receiver = rectiver;
		}
		
		public function execute():String
		{
			return _receiver.doit();
		}
	}
}