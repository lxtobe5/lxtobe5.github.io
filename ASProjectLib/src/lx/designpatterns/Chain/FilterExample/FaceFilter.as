package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class FaceFilter implements IFilter
	{
		public function FaceFilter()
		{
		}
		
		public function doFilter(request:RequestString, response:ResponseString, chain:FilterChain):void
		{
			request.request = request.request.replace(":)", "^V^--FaceFilter");
			chain.doFilter(request, response, chain);
			response.response += "--FaceFilter";
		}
	}
}