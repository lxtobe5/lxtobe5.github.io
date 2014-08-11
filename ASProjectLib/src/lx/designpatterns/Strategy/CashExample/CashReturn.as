package lx.designpatterns.Strategy.CashExample
{
	/**
	 * 返利
	 * @author Liuxin
	 * 
	 */	
	public class CashReturn extends Cash
	{
		private var _moneyCondition:Number;
		private var _moneyReturn:Number;
		
		public function CashReturn(moneyCondition:Number,moneyReturn:Number)
		{
			_moneyCondition = moneyCondition;
			_moneyReturn = moneyReturn;
		}
		
		override public function acceptCash(cash:Number):Number
		{
			var result:Number = cash;
			if(cash>=_moneyCondition)
				result = cash - Math.floor(cash/_moneyCondition) * _moneyReturn;
			return result;
		}
	}
}