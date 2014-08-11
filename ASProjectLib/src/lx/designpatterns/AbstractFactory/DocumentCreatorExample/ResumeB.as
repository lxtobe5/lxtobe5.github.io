package lx.designpatterns.AbstractFactory.DocumentCreatorExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ResumeB extends Resume
	{
		public function ResumeB()
		{
			super();
		}
		
		override public function print():String
		{
			return "创建了"+this;
		}
	}
}