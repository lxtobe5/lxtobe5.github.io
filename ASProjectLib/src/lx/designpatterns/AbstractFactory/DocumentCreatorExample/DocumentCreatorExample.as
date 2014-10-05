package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class DocumentCreatorExample extends Output
	{
		override public function run():void
		{
			var creatorA:DocumentCreator = new CreatorA();
			traceString(creatorA.createLetter().print());
			traceString(creatorA.createResume().print());
			var creatorB:DocumentCreator = new CreatorB();
			traceString(creatorB.createLetter().print());
			traceString(creatorB.createResume().print());
		}
	}
}