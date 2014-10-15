package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public interface IFilter
	{
		function doFilter(request:RequestString,response:ResponseString,chain:FilterChain):void;
	}
}