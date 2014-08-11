package lx.designpatterns.Strategy.CashExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ContextCash
	{
		private var _cash:Cash;
		
		public function ContextCash(strategy:String)
		{
			switch(strategy)
			{
				case "正常情况":
					_cash = new CashNormal();
					break;
				case "打8折":
					_cash = new CashRebate(0.8);
					break;
				case "满300返100":
					_cash = new CashReturn(300,100);
					break;
			}
		}
		
		public function getResult(cash:Number):Number
		{
			return _cash.acceptCash(cash);
		}
	}
}