package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class FilterExample extends Output
	{
		override public function run():void
		{
			var request:RequestString = new RequestString();
			request.request = "敏感词汇，重庆，<script> 躲猫猫 :)";
			
			traceString("过滤前："+request.request);
			
			var response:ResponseString = new ResponseString();
			response.response = "response";
			
			var fc:FilterChain = new FilterChain();
			fc.addFilter(new HTMLFilter());
			fc.addFilter(new SesitiveFilter());
			
			var fc2:FilterChain = new FilterChain();
			fc2.addFilter(new FaceFilter());
			
			fc.addFilter(fc2);
			fc.doFilter(request, response, fc);
			
			traceString("过滤后：" + request.request);
			traceString("过滤链：" + response.response);
		}
	}
}