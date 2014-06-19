package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_replace extends Output
	{
		override public function run():void
		{
			var pattern:RegExp = /sh/;  
			var string:String = "She sells seashells by the seashore.";
			traceString(string.replace(pattern, "sch"));
			//			She sells seaschells by the seashore.只有第一个'sh'被替换成'sch'
			
			pattern = /sh/g;  
			string = "She sells seashells by the seashore.";
			traceString(string.replace(pattern, "sch"));
			//			She sells seaschells by the seaschore.正则表达式中设置了 g（全局）标志，所有的'sh'都被替换
			
			pattern = /sh/gi;  
			string = "She sells seashells by the seashore.";
			traceString(string.replace(pattern, "sch"));
			//			sche sells seaschells by the seaschore.正则表达式中设置了 i（忽略大小写）标志，所有的'sh'都被替换
			
			string = "flip-flop";
			pattern = /(\w+)-(\w+)/g;
			traceString(string.replace(pattern, "$2-$1"));
			//			flop-flip  使用 $2 和 $1 替换代码，它们分别表示匹配的第一个和第二个捕获组
			
			/********************************  TOP  1  ********************************/
			pattern = /([a-z]+)([0-9]+)/;
			var str1:String = "abc12 def34";
			var str2:String = str1.replace(pattern, replFN);
			traceString (str2);
			//			12abc 34def
			//			对 replace() 方法的调用使用一个函数作为 repl 参数。匹配两次正则表达式 (/([a-z]([0-9]/g)。
			//			第一次，模式与子字符串 "abc12" 匹配，并将以下参数列表传递给该函数： {"abc12", "abc", "12", 0, "abc12 def34"}
			//			第二次，模式与子字符串 "def34" 匹配，并将以下参数列表传递给该函数： {"def34", "def", "34", 6, "abc123 def34"}
			
			function replFN():String
			{
				for (var i:int = 0; i < arguments.length; i++) 
				{
					traceString('arguments['+i+']:'+arguments[i]);
				}
				//				arguments[0]:abc12    字符串的匹配部分。
				//				arguments[1]:abc   捕获到的括号组匹配项。
				//				arguments[2]:12   捕获到的括号组匹配项。
				//				arguments[3]:0    字符串中匹配开始的索引位置。
				//				arguments[4]:abc12 def34    完整的字符串。  
				
				traceString(arguments.length-3);
				//				2  用 arguments.length - 3 来确定括号匹配项的数目
				
				return arguments[2] + arguments[1];
			}
			/********************************  BOTTOM  1  ********************************/
			
			/********************************  TOP  2  ********************************/
			string = "Now only $9.95!"; 
			var price:RegExp = /\$([\d,]+.\d+)+/i; 
			traceString(string.replace(price, usdToEuro));
			//			Now only 8.49 €!
			
			function usdToEuro(matchedSubstring:String,capturedMatch1:String,index:int,str:String):String
			{ 
				for (var i:int = 0; i < arguments.length; i++) 
				{
					traceString('arguments['+i+']:'+arguments[i]);
				}
				//				arguments[0]:$9.95 字符串的匹配部分，也就是matchedSubstring
				//				arguments[1]:9.95 捕获到的括号组匹配项，也就是capturedMatch1
				//				arguments[2]:9 字符串中匹配开始的索引位置，也就是index
				//				arguments[3]:Now only $9.95! 完整的字符串，也就是str
				traceString(arguments.length-3);
				//				1  用 arguments.length - 3 来确定括号匹配项的数目
				
				var usd:String = capturedMatch1; 
				usd = usd.replace(",", ""); 
				var exchangeRate:Number = 0.853690; 
				var euro:Number = parseFloat(usd) * exchangeRate; 
				const euroSymbol:String = String.fromCharCode(8364); 
				return euro.toFixed(2) + " " + euroSymbol; 
			}
			/********************************  BOTTOM  2  ********************************/
		}
	}
}
/************************************************************************************************
 replace()	方法	 
 AS3 function replace(pattern:*, repl:Object):String
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 相对于字符串匹配指定的 pattern 并返回一个新字符串，其中的第一个 pattern 匹配项被替换为 repl 所指定的内容。
 pattern 参数可以是字符串或正则表达式。repl 参数可以是字符串或函数；如果是函数，将插入由该函数返回的字符
 串以替换匹配项。未修改原始字符串。 
 参数
 pattern:* — 要匹配的模式，可以为任何类型的对象，但通常是字符串或正则表达式。如果指定的 pattern 参数是除字符串或正则表达式以外的任何其他对象，将对该参数应用 toString() 方法，并使用生成的字符串作为 pattern 来执行 replace() 方法。
 repl:Object — 通常是以插入的字符串替换匹配内容。但也可以指定一个函数作为此参数。如果指定一个函数，将插入由该函数返回的字符串来替换匹配内容。
 如果指定一个字符串作为 repl 参数，并指定一个正则表达式作为 pattern 参数，则可以在 repl 字符串中使用以下特殊的 $ 替换代码：
 $ 代码 	替换文本
 $$ 	$
 $& 	匹配的子字符串。
 $` 	字符串中位于匹配的子字符串前面的部分。请注意，此代码使用左侧直单引号字符 (`)，而不是直单引号字符 (') 或左侧弯单引号字符 (‘)。
 $' 	字符串中位于匹配的子字符串后面的部分。请注意，此代码使用直单引号字符 (')。
 $n 	第 n 个捕获的括号组匹配项，其中 n 是 1-9 之间的数字，而且 $n 后面没有十进制数字。
 $nn 	第 nn 个捕获的括号组匹配项，其中 nn 是一个十进制的两位数 (01-99)。如果未定义第 nn 个捕获内容，则替换文本为空字符串。
 指定一个函数作为 repl 时，replace() 方法将以下参数传递给该函数：
 字符串的匹配部分。
 任何捕获到的括号组匹配项都将作为下一组参数提供。按这种方式传递的参数数目因括号匹配项的数目而异。您可以通过检查函数代码中的 arguments.length - 3 来确定括号匹配项的数目。
 字符串中匹配开始的索引位置。
 完整的字符串。  
 返回
 String — 结果字符串。请注意，源字符串保持不变。 
 ************************************************************************************************/