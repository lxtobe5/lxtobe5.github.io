package lx.designpatterns.Proxy.ArrayExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ArrayExample extends Output
	{
		override public function run():void
		{
			var arr:ProxyArray = new ProxyArray();
			arr.push(1);
			arr.push(-2);
			arr.push(3);
			arr.push(4);
			arr.push("five");
			
			trace(arr.length); // 5
			trace(arr[0]);     // 1
			trace(arr[1]);     // -2
			trace(arr[2]);     // 3
			trace(arr[3]);     // 4
			
			trace(arr.sum());  // 6
			
			arr.clear();
			trace(arr); // (empty string)
			
			arr[0] = "zero";
			trace(arr); // zero
		}
	}
}