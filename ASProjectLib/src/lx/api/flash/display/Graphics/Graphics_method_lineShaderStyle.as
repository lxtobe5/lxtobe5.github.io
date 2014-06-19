package lx.api.flash.display.Graphics
{
	import flash.display.Shader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_lineShaderStyle extends Output
	{
		private var shader:Shader; 
		private var loader:URLLoader; 
		
		private var topMiddle:Point; 
		private var bottomLeft:Point; 
		private var bottomRight:Point; 
		
		override public function run():void
		{
			var size:int = 400; 
			topMiddle = new Point(size / 2, 10); 
			bottomLeft = new Point(0, size - 10); 
			bottomRight = new Point(size, size - 10); 
			
			loader = new URLLoader(); 
			loader.dataFormat = URLLoaderDataFormat.BINARY; 
			loader.addEventListener(Event.COMPLETE, onLoadComplete); 
			loader.load(new URLRequest("resource/ThreePointGradient.pbj")); 
		}
		
		private function onLoadComplete(event:Event):void 
		{ 
			shader = new Shader(loader.data); 
			
			shader.data.point1.value = [topMiddle.x, topMiddle.y]; 
			shader.data.point2.value = [bottomLeft.x, bottomLeft.y]; 
			shader.data.point3.value = [bottomRight.x, bottomRight.y];
			
			var sprite:Sprite = new Sprite();
			sprite.graphics.lineStyle(10);
			sprite.graphics.lineShaderStyle(shader);
			sprite.graphics.drawRect(0,0,100,100);
			sprite.graphics.endFill();
			tracePattern(sprite);
		} 
	}
}
/************************************************************************************************
 lineShaderStyle	()	方法	 
public function lineShaderStyle(shader:Shader, matrix:Matrix = null):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 10, AIR 1.5

指定一个着色器以用于绘制线条时的线条笔触。

着色器线条样式将用于随后对 lineTo() 或 drawCircle() 等 Graphics 方法的调用。线条样式仍然有效，直到您使用不同的参数调用 lineStyle() 或 lineGradientStyle() 方法或再次调用 lineBitmapStyle() 方法。

可以在绘制路径的中间调用 lineShaderStyle() 方法，以便为路径中的不同线段指定不同的样式。

请在调用 lineShaderStyle() 方法之前调用 lineStyle() 方法以启用笔触，否则线条样式的值将为 undefined。

调用 clear() 方法会将线条样式设置回 undefined。

参数
	shader:Shader — 用于线条笔触的着色器。
 
	matrix:Matrix (default = null) — 一个由 flash.geom.Matrix 类定义的可选转换矩阵。该矩阵可用于在将位图应用于线条样式之前缩放位图或以其他方式处理位图。 
 ************************************************************************************************/