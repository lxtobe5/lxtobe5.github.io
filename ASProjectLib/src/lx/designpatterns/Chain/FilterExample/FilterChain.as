package lx.designpatterns.Chain.FilterExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class FilterChain implements IFilter
	{
		private var _filters:Array = [];
		private var _index:int = 0;
		
		public function FilterChain()
		{
		}
		
		public function addFilter(filter:IFilter):IFilter
		{
			_filters.push(filter);
			return this;
		}
		
		public function doFilter(request:RequestString,response:ResponseString,chain:FilterChain):void
		{
			if(_index<_filters.length)
			{
				var filter:IFilter = _filters[_index] as IFilter;
				_index++;
				filter.doFilter(request,response,chain);
			}
		}
	}
}