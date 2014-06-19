package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_localeCompare extends Output
	{
		override public function run():void
		{
			var string:String = 'abcdef';
			
			traceString(string.localeCompare('abcdef'));
			//			比较一样，结果是0
			
			traceString(string.localeCompare(''));
			//			与空字符比较，结果是1
			
			traceString(string.localeCompare('a'));
			//			字符参数'a'和原始字符串'abcdef'的'a'排序顺序一样时，结果是1，这是个BUG
			
			traceString(string.localeCompare('b'));
			//			原始字符串'abcdef'的'a'排序顺序在字符参数'b'之前一位，结果是-1，表示之间有一个不同的字符
			
			traceString(string.localeCompare('c'));
			//			原始字符串'abcdef'的'a'排序顺序在字符参数'c'之前两位，结果是-2，表示之间有两个不同的字符
			
			traceString(string.localeCompare('d'));
			//			原始字符串'abcdef'的'a'排序顺序在字符参数'd'之前三位，结果是-3，表示之间有三个不同的字符
			
			traceString(string.localeCompare('e'));
			//			原始字符串'abcdef'的'a'排序顺序在字符参数'e'之前四位，结果是-4，表示之间有四个不同的字符
			
			traceString(string.localeCompare('f'));
			//			原始字符串'abcdef'的'a'排序顺序在字符参数'f'之前五位，结果是-5，表示之间有五个不同的字符
			
			traceString(string.localeCompare('A'));
			//			字符参数'A'的Ascii码是65,原始字符串'abcdef'的'a'的Ascii码是97，排序顺序早32，结果是32，表示之间有32个不同字符
		}
	}
}
/************************************************************************************************
 localeCompare()	方法	 
 AS3 function localeCompare(other:String, ... values):int
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 比较两个或更多个字符串的排序顺序，并返回整数形式的比较结果。虽然此方法旨在以特定于区域设置的方式处理比较，
 但 ActionScript 3.0 实现生成的结果与其他字符串比较的结果相同，例如，等于 (==) 或不等于 (!=) 运算符。如果字符串相等，
 则返回值为 0。如果原始字符串值在 other 指定的字符串值之前，则返回值为负整数，该值的绝对值表示这两个字符串值之间不相同的字符数。
 如果原始字符串值在 other 之后，返回值为正整数，该值的绝对值表示这两个字符串值之间不相同的字符数。
 参数
 other:String — 要比较的字符串值。
 ... values — 由多个要比较的字符串组成的集合（可选）。
 返回
 int — 值为 0（如果字符串相等）。否则为一个负整数（如果原始字符串在字符串参数之前）或一个正整数（如果字符串参数在原始字符串之前）。
 在这两种情况下，该数值的绝对值都表示这两个字符串之间的区别。  
 ************************************************************************************************/