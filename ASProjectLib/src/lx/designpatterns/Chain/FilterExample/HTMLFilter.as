package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class HTMLFilter implements IFilter
	{
		public function HTMLFilter()
		{
		}
		
		public function doFilter(request:RequestString, response:ResponseString, chain:FilterChain):void
		{
			request.request = request.request.replace("<", "[").replace(">", "] --HTMLFilter");
			chain.doFilter(request, response, chain);
			response.response += "--HTMLFilter";
		}
	}
}