package lx.designpatterns.Command.DoitExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Invoker
	{
		private var _command:ConcreteCommand;
		
		public function Invoker(command:ConcreteCommand)
		{
			_command = command;
		}
		
		public function exceuteCommand():String
		{
			return _command.execute();
		}
	}
}