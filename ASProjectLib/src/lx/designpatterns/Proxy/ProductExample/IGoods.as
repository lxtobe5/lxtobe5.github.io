package lx.designpatterns.Proxy.ProductExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public interface IGoods
	{
		function getPrice():Number;
		function getTitle():String;
		function setPrice(price:Number):void;
		function setTitle(title:String):void;
	}
}