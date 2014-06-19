package lx.api.flash.display.Graphics
{
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_beginBitmapFill extends Output
	{
		override public function run():void
		{
			var s1:Sprite = getColor(0x0000ff);
			var s2:Sprite = getColor(0xff0000);
			var s3:Sprite = getColor(0x00ff00);
			var s4:Sprite = getColor(0);
			
			var block:Sprite = new Sprite();
			block.addChild(s1);
			block.addChild(s2);
			block.addChild(s3);
			block.addChild(s4);
			s2.x = 10;
			s3.y = 10;
			s4.x = 10;
			s4.y = 10;
			
			tracePattern(block);
			
			var bmd:BitmapData = new BitmapData(block.width, block.height, false);
			bmd.draw(block);
			
			//不重复
			var noRepeat:Sprite = new Sprite();
			noRepeat.graphics.beginBitmapFill(bmd,null,false);
			noRepeat.graphics.drawRect(0, 0, 100, 100);
			noRepeat.graphics.endFill();
			noRepeat.x = 50;
			tracePattern(noRepeat);
			
			//重复
			var repeat:Sprite = new Sprite();
			repeat.graphics.beginBitmapFill(bmd,null,true);
			repeat.graphics.drawRect(0,0,100,100);
			repeat.graphics.endFill();
			repeat.x = 200;
			tracePattern(repeat);
			
			var matrix:Matrix = new Matrix();
			matrix.rotate(Math.PI/4);
			
			//不平滑
			var 	noSmooth:Sprite = new Sprite();
			noSmooth.graphics.beginBitmapFill(bmd,matrix,true);
			noSmooth.graphics.drawRect(0,0,100,100);
			noSmooth.graphics.endFill();
			noSmooth.x = 50;
			noSmooth.y = 150;
			tracePattern(noSmooth);
			
			//平滑
			var smooth:Sprite = new Sprite();
			smooth.graphics.beginBitmapFill(bmd,matrix,true);
			smooth.graphics.drawRect(0,0,100,100);
			smooth.graphics.endFill();
			smooth.x = 200;
			smooth.y = 150;
			tracePattern(smooth);
		}
		
		private function getColor(color:uint):Sprite
		{
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(color);
			sprite.graphics.drawRect(0,0,10,10);
			sprite.graphics.endFill();
			return sprite;
		}
	}   
}

/************************************************************************************************
beginBitmapFill()	方法
public function beginBitmapFill(bitmap:BitmapData, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

用位图图像填充绘图区。可以重复或平铺位图以填充该区域。该填充将保持有效，直到您调用 beginFill()、beginBitmapFill()、beginGradientFill() 或 beginShaderFill() 方法。调用 clear() 方法会清除填充。

只要绘制 3 个或更多个点，或者调用 endFill() 方法时，应用程序就会呈现填充。

参数
bitmap:BitmapData — 包含要显示的位的透明或不透明位图图像。

matrix:Matrix (default = null) — 一个 matrix 对象（属于 flash.geom.Matrix 类），您可以使用它在位图上定义转换。例如，可以使用以下矩阵将位图旋转 45 度（pi/4 弧度）：
	
	matrix = new flash.geom.Matrix(); 
	matrix.rotate(Math.PI / 4);
	
	repeat:Boolean (default = true) — 如果为 true，则位图图像按平铺模式重复。如果为 false，位图图像不会重复，并且位图边缘将用于所有扩展出位图的填充区域。
 ************************************************************************************************/ 