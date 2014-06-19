package configs.apiconfig
{
	import lx.api.String.String_method_charAt;
	import lx.api.String.String_method_charCodeAt;
	import lx.api.String.String_method_concat;
	import lx.api.String.String_method_indexOf;
	import lx.api.String.String_method_lastIndexOf;
	import lx.api.String.String_method_localeCompare;
	import lx.api.String.String_method_match;
	import lx.api.String.String_method_replace;
	import lx.api.String.String_method_search;
	import lx.api.String.String_method_slice;
	import lx.api.String.String_method_split;
	import lx.api.String.String_method_substr;
	import lx.api.String.String_method_substring;
	import lx.api.String.String_method_toLocaleLowerCase;
	import lx.api.String.String_method_toLocaleUpperCase;
	import lx.api.String.String_method_toLowerCase;
	import lx.api.String.String_method_toUpperCase;
	import lx.api.String.String_static_method_fromCharCode;

	/**
	 *String 
	 * @author Liuxin
	 * 
	 */	
	public final dynamic class String_aggregation extends Array
	{
		public function String_aggregation()
		{
			super(
				String_method_charAt,
				String_method_charCodeAt,
				String_method_concat,
				String_method_indexOf,
				String_method_lastIndexOf,
				String_method_localeCompare,
				String_method_match,
				String_method_replace,
				String_method_search,
				String_method_slice,
				String_method_split,
				String_method_substr,
				String_method_substring,
				String_method_toLocaleLowerCase,
				String_method_toLocaleUpperCase,
				String_method_toLowerCase,
				String_method_toUpperCase,
				String_static_method_fromCharCode
				);
		}
	}
}