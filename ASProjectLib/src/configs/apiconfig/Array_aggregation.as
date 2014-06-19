package configs.apiconfig
{
	import lx.api.Array.Array_method_concat;
	import lx.api.Array.Array_method_every;
	import lx.api.Array.Array_method_filter;
	import lx.api.Array.Array_method_forEach;
	import lx.api.Array.Array_method_indexOf;
	import lx.api.Array.Array_method_join;
	import lx.api.Array.Array_method_lastIndexOf;
	import lx.api.Array.Array_method_map;
	import lx.api.Array.Array_method_pop;
	import lx.api.Array.Array_method_push;
	import lx.api.Array.Array_method_reverse;
	import lx.api.Array.Array_method_shift;
	import lx.api.Array.Array_method_slice;
	import lx.api.Array.Array_method_some;
	import lx.api.Array.Array_method_sort;
	import lx.api.Array.Array_method_sortOn;
	import lx.api.Array.Array_method_splice;
	import lx.api.Array.Array_method_unshift;

	/**
	 *Array 
	 * @author Liuxin
	 * 
	 */	
	dynamic final public class Array_aggregation extends Array
	{
		public function Array_aggregation()
		{
			super(
				Array_method_concat,
				Array_method_every,
				Array_method_filter,
				Array_method_forEach,
				Array_method_indexOf,
				Array_method_join,
				Array_method_lastIndexOf,
				Array_method_map,
				Array_method_pop,
				Array_method_push,
				Array_method_reverse,
				Array_method_shift,
				Array_method_slice,
				Array_method_some,
				Array_method_sort,
				Array_method_sortOn,
				Array_method_splice,
				Array_method_unshift
			);
		}
	}
}