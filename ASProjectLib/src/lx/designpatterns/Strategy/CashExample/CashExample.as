package lx.designpatterns.Strategy.CashExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class CashExample extends Output
	{
		public function CashExample()
		{
			super();
		}
		
		override public function run():void
		{
			var context:ContextCash;
			
			context = new ContextCash("正常情况");
			traceString("正常情况:"+context.getResult(1000));
			
			context = new ContextCash("打8折");
			traceString("打8折:"+context.getResult(1000));
			
			context = new ContextCash("满300返100");
			traceString("满300返100:"+context.getResult(1000));
		}
	}
}