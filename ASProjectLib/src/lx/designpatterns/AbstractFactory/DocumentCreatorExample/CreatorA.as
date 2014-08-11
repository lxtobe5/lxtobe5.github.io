package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class CreatorA extends DocumentCreator
	{
		public function CreatorA()
		{
			super();
		}
		
		override public function createLetter():Letter
		{
			return new LetterA();
		}
		
		override public function createResume():Resume
		{
			return new ResumeA();
		}
		
	}
}