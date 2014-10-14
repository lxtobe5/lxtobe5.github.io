package lx.designpatterns.Command.AudioPlayerExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class PlayCommand implements ICommand
	{
		private var _audio:AudioPlayer;
		
		public function PlayCommand(audio:AudioPlayer)
		{
			_audio = audio;
		}
		
		public function execute():String
		{
			return _audio.play();
		}
	}
}