package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class LetterA extends Letter
	{
		public function LetterA()
		{
			super();
		}
		
		override public function print():String
		{
			return "创建了"+this;
		}
	}
}