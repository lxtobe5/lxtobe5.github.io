package lx.designpatterns.Command.AudioPlayerExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class StopCommand implements ICommand
	{
		private var _audio:AudioPlayer;
		
		public function StopCommand(audio:AudioPlayer)
		{
			_audio = audio;
		}
		
		public function execute():String
		{
			return _audio.stop();
		}
	}
}