package lx.designpatterns.State.HeroExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class HeroExample extends Output
	{
		override public function run():void
		{
			var context:HeroContext = new HeroContext(new KillState());
			traceString(context.changeState());
			traceString(context.changeState());
			traceString(context.changeState());
			traceString(context.changeState());
			traceString(context.changeState());
		}
	}
}