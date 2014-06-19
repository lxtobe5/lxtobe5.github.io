package lx.api.String
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class String_method_slice extends Output
	{
		override public function run():void
		{
			var string:String = "Hello from Paris, Texas";
			traceString(string.slice(1,4));
			//			ell 从索引位置截取，包含起始位置1的字符'e'，不包含结束位置4的字符'o'
			
			traceString(string.slice(-3,-1));
			//			xa 从索引位置截取，索引位置是负数，从右向左创建片段，索引位置-3的字符是倒数第三的'x'，索引位置-1的字符是最后一个字符's'
			
			traceString(string.slice(-3,26));
			//			xas 结束的索引位置超出字符长度，形同忽略此参数
			
			traceString(string.slice(-3,0));
			//			(输出为空) 虽然结束位置索引值比起始位置索引值大，但是不符合参数条件
			
			traceString(string.slice(6,1));
			//			(输出为空) 结束位置索引值比起始位置索引值小，不符合参数条件
			
			traceString(string.slice(-3,string.length));
			//			xas 字符长度作为结束位置索引值，符合参数条件
		}
	}
}
/************************************************************************************************
 slice()	方法	 
 AS3 function slice(startIndex:Number = 0, endIndex:Number = 0x7fffffff):String
 运行时版本: 	Flash Lite 4, Flash Player 9, AIR 1.0
 返回一个字符串，该字符串包括从 startIndex 字符一直到 endIndex 字符（但不包括该字符）之间的所有字符。
 不修改原始 String 对象。如果未指定 endIndex 参数，此子字符串的结尾就是该字符串的结尾。如果按 startIndex 索引到的字符
 与按 endIndex 索引到的字符相同或位于后者的右侧，则该方法返回一个空字符串。
 参数
 startIndex:Number (default = 0) — 片段起始点的从 0 开始的索引。如果 startIndex 是一个负数，则从右到左创建片段，
 其中 -1 是最后一个字符。
 endIndex:Number (default = 0x7fffffff) — 一个比片段终点的索引大 1 的整数。由 endIndex 参数索引的字符未包括在已提取的
 字符串中。如果 endIndex 是一个负数，则终点根据从字符串的结尾向后数确定，其中 -1 表示最后一个字符。默认为允许的最大
 索引值。如果省略此参数，则使用 String.length。
 返回
 String — 基于指定索引的子字符串。
 ************************************************************************************************/