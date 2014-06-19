package lx.api.flash.display.BitmapData
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_getVector extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(2, 2, true);
			
			var rectangle:Rectangle = new Rectangle(0, 0, bitmapdata.width, bitmapdata.height);
			var vector:Vector.<uint> = bitmapdata.getVector(rectangle);
			traceString(vector);
			//			4294967295,4294967295,4294967295,4294967295
		}
	}
}
/************************************************************************************************
 getVector()	方法	 
 public function getVector(rect:Rectangle):Vector.<uint>
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 10, AIR 1.5, Flash Lite 4
 从像素数据的矩形区域生成一个矢量数组。为指定矩形返回一个无符号整数（32 位未经相乘的像素值）的 Vector 对象。
 参数
 rect:Rectangle — 当前 BitmapData 对象中的一个矩形区域。
 返回
 Vector.<uint> — 表示给定矩形的 Vector。
 引发
 TypeError — 矩形是空的。 
 ************************************************************************************************/