package lx.api.flash.display.BitmapData
{
	import flash.display.BitmapData;
	import flash.system.System;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_dispose extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(8000, 8000, false, 0xFF00FFFF);
			traceString(System.freeMemory);
			traceString(System.totalMemory);
			//			65536
			//			260009984
			
			bitmapdata.dispose();
			traceString(System.freeMemory);
			traceString(System.totalMemory);
			//			196608
			//			4009984
		}
	}
}
/************************************************************************************************
 dispose()	方法	 
 public function dispose():void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 释放用来存储 BitmapData 对象的内存。
 对图像调用 dispose() 方法时，该图像的宽度和高度将设置为 0。对此 BitmapData 实例的方法或属性的所有后续调用都将失败，并引发异常。
 BitmapData.dispose() 立即释放由实际的位图数据占用的内存（一个位图最多可使用 64 MB 的内存）。使用 BitmapData.dispose() 后，BitmapData 对象不再可用，而且，如果对 BitmapData 对象调用函数，Flash 运行时将引发异常。但是，BitmapData.dispose() 不会将 BitmapData 对象（大约 128 个字节）作为垃圾回收；由实际的 BitmapData 对象占用的内存在垃圾回收器收集 BitmapData 对象时释放。
 ************************************************************************************************/