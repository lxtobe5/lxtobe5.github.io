package lx.designpatterns.State.HeroExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class KillState implements IHeroState
	{
		public function KillState()
		{
		}
		
		public function todo(context:HeroContext):String
		{
			context.heroState = new RunState();
			return "奔跑状态";
		}
	}
}