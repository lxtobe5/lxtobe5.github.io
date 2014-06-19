package lx.api.flash.display.BitmapData
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class BitmapData_method_colorTransform extends Output
	{
		override public function run():void
		{
			var bitmapdata:BitmapData = new BitmapData(100,100,false,0);
			var bitmap:Bitmap = new Bitmap(bitmapdata);
			var colorTransform:ColorTransform = new ColorTransform();
			colorTransform.color = 0xffcc00;
			var rectangle:Rectangle = new Rectangle(10,10,80,80);
			bitmapdata.colorTransform(rectangle,colorTransform);
			
			tracePattern(bitmap);
		}
	}
}
/************************************************************************************************
 colorTransform()	方法	 
 public function colorTransform(rect:Rectangle, colorTransform:flash.geom:ColorTransform):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4
 使用 ColorTransform 对象调整位图图像的指定区域中的颜色值。如果矩形与位图图像的边界匹配，则此方法将转换整个图像的颜色值。
 参数
 rect:Rectangle — 一个 Rectangle 对象，它定义在其中应用 ColorTransform 对象的图像区域。
 colorTransform:flash.geom:ColorTransform — 一个 ColorTransform 对象，它描述要应用的颜色转换值。
 引发
 TypeError — rect 或 colorTransform 为空。 
 ************************************************************************************************/