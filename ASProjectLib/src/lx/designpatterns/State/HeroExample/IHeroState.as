package lx.designpatterns.State.HeroExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public interface IHeroState
	{
		function todo(context:HeroContext):String;
	}
}