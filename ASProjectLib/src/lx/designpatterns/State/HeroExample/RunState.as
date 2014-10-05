package lx.designpatterns.State.HeroExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class RunState implements IHeroState
	{
		public function RunState()
		{
		}
		
		public function todo(context:HeroContext):String
		{
			context.heroState = new KillState();
			return "杀戮状态";
		}
	}
}