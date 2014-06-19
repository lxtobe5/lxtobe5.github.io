package configs.apiconfig
{
	import lx.api.Function.Function_method_apply;
	import lx.api.Function.Function_method_call;

	/**
	 *Function 
	 * @author Liuxin
	 * 
	 */	
	public final dynamic class Function_aggregation extends Array
	{
		public function Function_aggregation(...parameters)
		{
			super(
				Function_method_apply,
				Function_method_call
				);
		}
	}
}