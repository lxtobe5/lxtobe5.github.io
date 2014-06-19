package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_split extends Output
	{
		override public function run():void
		{
			var string:String ="She sells seashells by the seashore.";
			var array:Array = string.split(/sh/);
			for (var i:int = 0; i < array.length; i++) 
			{
				traceString('array['+i+']:'+array[i]);
			}
			//			array[0]:She sells sea  第一个'sh'之前的字符
			//			array[1]:ells by the sea  第一个'sh'和第二个'sh'之间的字符
			//			array[2]:ore.  第二个'sh'之后的字符
			
			string = "Thi5 is a tricky-66 example.";
			var pattern:RegExp = /(\d+)/;
			array = string.split(pattern);
			for (var j:int = 0; j < array.length; j++) 
			{
				traceString('array['+j+']:'+array[j]);
			}
			//			array[0]:Thi
			//			array[1]:5  包含分组圆括号的正则表达式，第一次匹配时会将分组圆括号的结果'5'连接到输出数组中。
			//			array[2]: is a tricky-
			//			array[3]:66   包含分组圆括号的正则表达式，第二次匹配时会将分组圆括号的结果'66'连接到输出数组中。
			//			array[4]: example.
			
			string = "first=joe&last=cheng&title=manager&StartDate=3/6/65"; 
			array = string.split("&", 2);
			for (var k:int = 0; k < array.length; k++) 
			{
				traceString('array['+k+']:'+array[k]);
			}
			//			有三个字符'&'，但是limit参数为2，只截取两段
			//			array[0]:first=joe
			//			array[1]:last=cheng
			
			string = "Give me\t5.";
			array = string.split(/\s+/);
			for (var m:int = 0; m < array.length; m++) 
			{
				traceString('array['+m+']:'+array[m]);
			}
			//			使用正则表达式作为分隔符
			//			array[0]:Give
			//			array[1]:me
			//			array[2]:5.
		}
	}
}
/************************************************************************************************
 split()	方法	 
 AS3 function split(delimiter:*, limit:Number = 0x7fffffff):Array
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 将 String 对象拆分为一个子字符串数组，方法是在所有出现指定 delimiter 参数的位置进行拆分。
 如果 delimiter 参数是正则表达式，即使向后跟踪可以找到与该位置匹配的非空子字符串，也仅考虑字符串给定位置处的第一个匹配项。
 如果 delimiter 参数是包含分组圆括号的正则表达式，则每次匹配 delimiter 时，会将分组圆括号的结果（包括任何未定义的结果）连接到输出数组中。
 如果指定 limit 参数，返回的数组中具有的元素数将不多于指定数目。
 如果 delimiter 是空字符串、空正则表达式或者可以匹配空字符串的正则表达式，则字符串中的每一个字符都将输出为数组中的一个元素。
 如果未定义 delimiter 参数，则会将整个字符串放入返回的数组的第一个元素中。
 参数
 delimiter:* — 指定拆分此字符串的位置的模式。此模式可以是任何类型的对象，但通常为字符串或正则表达式。如果 delimiter 不是正则表达式或字符串，则该方法在执行前会将其转换为字符串。
 limit:Number (default = 0x7fffffff) — 要放入数组中的最大项数。默认为允许的最大值。
 返回
 Array — 一个子字符串的数组。
 ************************************************************************************************/