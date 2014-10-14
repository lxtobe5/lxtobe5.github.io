package lx.designpatterns.Command.AudioPlayerExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Keypad
	{
		private var _playCommand:PlayCommand;
		private var _stopCommand:StopCommand;
		
		public function setPlayCommand(command:PlayCommand):void
		{
			_playCommand = command;
		}
		
		public function setStopCommand(command:StopCommand):void
		{
			_stopCommand = command;
		}
		
		public function play():String
		{
			return _playCommand.execute();
		}
		
		public function stop():String
		{
			return _stopCommand.execute();
		}
	}
}