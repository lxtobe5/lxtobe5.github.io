package lx.designpatterns.Proxy.ProductExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public interface IProduct
	{
		function getPrice():Number;
		function getTitle():String;
		function setPrice(price:Number):void;
		function setTitle(title:String):void;
	}
}