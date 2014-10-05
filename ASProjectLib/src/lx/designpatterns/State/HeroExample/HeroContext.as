package lx.designpatterns.State.HeroExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class HeroContext
	{
		private var _heroState:IHeroState;
		
		public function HeroContext(heroState:IHeroState)
		{
			_heroState = heroState;
		}
		
		public function changeState():String
		{
			return _heroState.todo(this);
		}

		public function get heroState():IHeroState
		{
			return _heroState;
		}

		public function set heroState(value:IHeroState):void
		{
			_heroState = value;
		}

	}
}