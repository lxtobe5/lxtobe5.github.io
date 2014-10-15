package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class SesitiveFilter implements IFilter
	{
		public function SesitiveFilter()
		{
		}
		
		public function doFilter(request:RequestString, response:ResponseString, chain:FilterChain):void
		{
			request.request = request.request.replace("敏感", "  ").replace("猫猫", "haha--SesitiveFilter");
			chain.doFilter(request, response, chain);
			response.response += "--SesitiveFilter";
		}
	}
}