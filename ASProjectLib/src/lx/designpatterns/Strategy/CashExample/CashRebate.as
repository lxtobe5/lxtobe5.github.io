package lx.designpatterns.Strategy.CashExample
{
	/**
	 * 打折
	 * @author Liuxin
	 * 
	 */	
	public class CashRebate extends Cash
	{
		private var _moneyRebate:Number;
		
		public function CashRebate(moneyRebate:Number)
		{
			_moneyRebate = moneyRebate;
		}
		
		override public function acceptCash(cash:Number):Number
		{
			return cash * _moneyRebate;
		}
	}
}