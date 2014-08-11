package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class DocumentCreator
	{
		public function DocumentCreator()
		{
		}
		
		public function createLetter():Letter
		{
			return new Letter();
		}
		
		public function createResume():Resume
		{
			return new Resume();
		}
	}
}