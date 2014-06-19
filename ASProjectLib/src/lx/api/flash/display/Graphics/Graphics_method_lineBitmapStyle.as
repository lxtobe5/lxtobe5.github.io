package lx.api.flash.display.Graphics
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_lineBitmapStyle extends Output
	{
		override public function run():void
		{
			var b1:BitmapData = getBitmapData(0x0000ff);
			var b2:BitmapData = getBitmapData(0xff0000);
			var b3:BitmapData = getBitmapData(0x00ff00);
			var b4:BitmapData = getBitmapData(0);
			var bm1:Bitmap = new Bitmap(b1);
			var bm2:Bitmap = new Bitmap(b2);
			var bm3:Bitmap = new Bitmap(b3);
			var bm4:Bitmap = new Bitmap(b4);
			
			var block:Sprite = new Sprite();
			block.addChild(bm1);
			block.addChild(bm2);
			block.addChild(bm3);
			block.addChild(bm4);
			bm2.x = 10;
			bm3.y = 10;
			bm4.x = 10;
			bm4.y = 10;
			tracePattern(block);
			
			var bitm:BitmapData = new BitmapData(100,100,false);
			bitm.draw(block);
			
			var s1:Sprite = new Sprite();
			s1.graphics.lineStyle(20);
			s1.graphics.lineBitmapStyle(bitm);
			s1.graphics.drawRect(0,0,50,50);
			s1.graphics.endFill();
			s1.x = s1.y = 50;
			tracePattern(s1);
			
			var s2:Sprite = new Sprite();
			s2.graphics.lineStyle(20);
			s2.graphics.lineBitmapStyle(bitm,null,false);
			s2.graphics.drawRect(0,0,50,50);
			s2.graphics.endFill();
			s2.x = s2.y = 200;
			tracePattern(s2);
		}
		
		private function getBitmapData(color:uint):BitmapData
		{
			var bmd:BitmapData = new BitmapData(10,10,false,color);
			return bmd;
		}
	}
}
/************************************************************************************************
 lineBitmapStyle	()	方法	 
public function lineBitmapStyle(bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 10, AIR 1.5

指定一个位图，用于绘制线条时的线条笔触。

位图线条样式将用于随后对 lineTo() 或 drawCircle() 等 Graphics 方法的调用。线条样式仍然有效，直到您使用不同的参数调用 lineStyle() 或 lineGradientStyle() 方法或再次调用 lineBitmapStyle() 方法。

可以在绘制路径的中间调用 lineBitmapStyle() 方法以为路径中的不同线段指定不同的样式。

请在调用 lineBitmapStyle() 方法之前调用 lineStyle() 方法以启用笔触，否则线条样式的值将为 undefined。

调用 clear() 方法会将线条样式设置回 undefined。

参数
	bitmap:BitmapData — 用于线条笔触的位图。
 
	matrix:Matrix (default = null) — 一个由 flash.geom.Matrix 类定义的可选转换矩阵。该矩阵可用于在将位图应用于线条样式之前缩放位图或以其他方式处理位图。
 
	repeat:Boolean (default = true) — 是否以平铺方式重复位图。
 
	smooth:Boolean (default = false) — 是否应对位图应用平滑处理。 
 ************************************************************************************************/