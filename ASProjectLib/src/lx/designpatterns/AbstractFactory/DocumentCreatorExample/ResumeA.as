package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ResumeA extends Resume
	{
		public function ResumeA()
		{
			super();
		}
		
		override public function print():String
		{
			return "创建了"+this;
		}
	}
}