package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class CreatorB extends DocumentCreator
	{
		public function CreatorB()
		{
			super();
		}
		
		override public function createLetter():Letter
		{
			return new LetterB();
		}
		
		override public function createResume():Resume
		{
			return new ResumeB();
		}
		
	}
}