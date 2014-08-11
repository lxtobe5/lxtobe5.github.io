package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class LetterB extends Letter
	{
		public function LetterB()
		{
			super();
		}
		
		override public function print():String
		{
			return "创建了"+this;
		}
	}
}