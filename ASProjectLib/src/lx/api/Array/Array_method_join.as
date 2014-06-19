package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_join extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			array = ['one','two','three'];
			
			traceString(array.join(' and '));
			//one and two and three
			
			traceString(array.join());
			//one,two,three  默认参数为逗号
			
			traceString(array.join(''));
			//onetwothree  空字符作为连接符
			
			var phoneString:String = "(888) 867-5309";
			var specialChars:Array = new Array("(", ")", "-", " ");
			var myStr:String = phoneString;
			var ln:uint = specialChars.length;
			var arg:Array;
			for(var i:uint; i < ln; i++)
			{
				arg = myStr.split(specialChars[i]);
				traceString(arg);
				traceString(arg.join(''));
				myStr = myStr.split(specialChars[i]).join('');
			}
			var phoneNumber:Number = new Number(myStr);
			traceString(phoneString); // (888) 867-5309
			traceString(phoneNumber); // 8888675309
		}
		
	}
}