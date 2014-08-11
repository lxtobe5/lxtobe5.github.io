package lx.designpatterns.Strategy.CashExample
{
	/**
	 * 正常
	 * @author Liuxin
	 * 
	 */	
	public class CashNormal extends Cash
	{
		public function CashNormal()
		{
			super();
		}
		
		override public function acceptCash(cash:Number):Number
		{
			return cash;
		}
	}
}