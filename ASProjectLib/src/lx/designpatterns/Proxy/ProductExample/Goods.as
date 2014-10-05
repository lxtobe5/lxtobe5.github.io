package lx.designpatterns.Proxy.ProductExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Goods implements IGoods
	{
		
		private var _price:Number;
		private var _title:String;
		
		public function Goods()
		{
		}
		
		public function getPrice():Number
		{
			return _price;
		}
		
		public function getTitle():String
		{
			return _title;
		}
		
		public function setPrice(price:Number):void
		{
			_price = price;
		}
		
		public function setTitle(title:String):void
		{
			_title = title;
		}
	}
}