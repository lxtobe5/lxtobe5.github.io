package lx.designpatterns.Command.AudioPlayerExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class AudioPlayerExample extends Output
	{
		override public function run():void
		{
			var audio:AudioPlayer = new AudioPlayer();
			var playCommand:PlayCommand = new PlayCommand(audio);
			var stopCommand:StopCommand = new StopCommand(audio);
			var keypad:Keypad = new Keypad();
			keypad.setPlayCommand(playCommand);
			keypad.setStopCommand(stopCommand);
			traceString(keypad.play());
			traceString(keypad.stop());
		}
	}
}