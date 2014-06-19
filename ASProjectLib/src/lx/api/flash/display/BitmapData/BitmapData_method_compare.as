package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_compare extends Output
	{
		override public function run():void
		{
			var bmd1:BitmapData = new BitmapData(50,50,true,0xFFFFAA00);
			var bmd2:BitmapData = new BitmapData(50,50,true,0xCCFFAA00);
			var diffBmpData:BitmapData = BitmapData(bmd1.compare(bmd2));
			var diffValue:String = diffBmpData.getPixel32(1,1).toString(16);
			traceString(diffValue);
			//			33ffffff 透明通道的差值
			
			var bm1:Bitmap = new Bitmap(bmd1);
			tracePattern(bm1);
			var bm2:Bitmap = new Bitmap(bmd2);
			tracePattern(bm2);
			bm2.x = 60;
			var bm3:Bitmap = new Bitmap(diffBmpData);
			tracePattern(bm3);
			bm3.x = 120;
			
			bmd1 = new BitmapData(50,50,true,0xFFFFAA00);
			bmd2 = new BitmapData(30,50,true,0xCCFFAA00);
			traceString(bmd1.compare(bmd2));
			//			-3 宽度不同 返回-3
			
			bmd1 = new BitmapData(50,50,true,0xFFFFAA00);
			bmd2 = new BitmapData(50,30,true,0xCCFFAA00);
			traceString(bmd1.compare(bmd2));
			//			-4 高度不同 返回-4
			
			bmd1 = new BitmapData(50,50,true,0xFFFFAA00);
			bmd2 = new BitmapData(30,30,true,0xCCFFAA00);
			traceString(bmd1.compare(bmd2));
			//			-3 宽度高度都不同，等同为宽度不同
			
			bmd1 = new BitmapData(50,50,true,0xFFFFAA00);
			bmd2 = new BitmapData(50,50,true,0xFFFFAA00);
			traceString(bmd1.compare(bmd2));
			//			0 完全一样，返回0
		}
	}
}
/************************************************************************************************
 compare()	方法
 public function compare(otherBitmapData:BitmapData):Object
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 比较两个 BitmapData 对象。如果两个 BitmapData 对象的尺寸（宽度和高度）相同，该方法将返回一个新的 BitmapData 对象，其中的每个像素都是两个源对象中的像素之间的“差”：
 如果两个像素相等，则差异像素为 0x00000000。
 如果两个像素具有不同的 RGB 值（忽略 Alpha 值），则差异像素为 0xRRGGBB，其中 RR/GG/BB 分别是红色、绿色和蓝色通道之间的个别差异值（源对象中的像素值减去 otherBitmapData 对象中的像素值）。本例中忽略了 Alpha 通道差异。
 如果只有 Alpha 通道值不同，则像素值为 0xZZFFFFFF，其中 ZZ 是 Alpha 值差异（源对象中的 Alpha 值减去 otherBitmapData 对象中的 Alpha 值）。
 例如，考虑下面两个 BitmapData 对象：
 var bmd1:BitmapData = new BitmapData(50, 50, true, 0xFFFF8800);
 var bmd2:BitmapData = new BitmapData(50, 50, true, 0xCCCC6600);
 var diffBmpData:BitmapData = bmd1.compare(bmd2) as BitmapData;
 trace ("0x" + diffBmpData.getPixel(0,0).toString(16); // 0x332200
 注意：用于填充这两个 BitmapData 对象的颜色具有略微不同的 RGB 值（0xFF0000 和 0xFFAA00）。compare() 方法的结果是一个新的 BitmapData 对象，其中的每个像素都显示两个位图之间 RGB 值的差异。
 以下面两个 BitmapData 对象为例，其中 RGB 颜色相同，但 Alpha 值不同。
 var bmd1:BitmapData = new BitmapData(50, 50, true, 0xFFFFAA00);
 var bmd2:BitmapData = new BitmapData(50, 50, true, 0xCCFFAA00);
 var diffBmpData:BitmapData = bmd1.compare(bmd2) as BitmapData;
 trace ("0x" + diffBmpData.getPixel32(0,0).toString(16); // 0x33ffffff
 compare() 方法的结果是一个新的 BitmapData 对象，其中的每个像素都显示两个位图之间 Alpha 值的差异。
 如果 BitmapData 对象相同（宽度、高度和像素值都相同），则方法返回数字 0。
 如果这两个 BitmapData 对象的宽度不相等，则该方法返回数字 -3。
 如果 BitmapData 对象的高度不相等，但宽度相同，则方法返回数字 -4。
 以下示例比较两个具有不同宽度（50 和 60）的 Bitmap 对象：
 var bmd1:BitmapData = new BitmapData(100, 50, false, 0xFFFF0000);
 var bmd2:BitmapData = new BitmapData(100, 60, false, 0xFFFFAA00);
 trace(bmd1.compare(bmd2)); // -4
 参数
 otherBitmapData:BitmapData — 要与源 BitmapData 对象比较的 BitmapData 对象。
 返回
 Object — 如果两个 BitmapData 对象的尺寸（宽度和高度）相同，则方法将返回一个新的 BitmapData 对象，其中包含两个对象之间的差异（请参阅主要讨论内容）。如果这两个 BitmapData 对象相同，则该方法返回数字 0。如果这两个 BitmapData 对象的宽度不相等，则该方法返回数字 -3。如果这两个 BitmapData 对象的高度不相等，则该方法返回数字 -4。
 ************************************************************************************************/