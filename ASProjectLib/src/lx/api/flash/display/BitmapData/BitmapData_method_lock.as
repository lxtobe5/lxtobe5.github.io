package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.utils.getTimer;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_lock extends Output
	{
		override public function run():void
		{
			var time:Number;
			var bitmap:Bitmap = new Bitmap();
			
			var bitmapdata:BitmapData = new BitmapData(1000,1000,true,0xff000000);
			bitmapdata.lock();
			bitmap.bitmapData = bitmapdata;
			tracePattern(bitmap);
			time = getTimer();
			for (var i:int = 0; i <= 1000; i++) 
			{
				for (var j:int = 0; j <= 1000; j++) 
				{
					bitmapdata.setPixel32(i,j,0xff00ff00);
				}
			}
			traceString(getTimer()-time);
			//			200ms     只有bitmapdata在显示列表中，lock才有性能效果
			bitmapdata.unlock();
		}
	}
}
/************************************************************************************************
 lock()	方法	 
 public function lock():void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0
 锁定图像，以使引用 BitmapData 对象的任何对象（如 Bitmap 对象）在此 BitmapData 对象更改时不会更新。要提高性能，
 请在对 setPixel() 或 setPixel32() 方法进行多次调用之前和之后使用此方法及 unlock() 方法。 
 ************************************************************************************************/