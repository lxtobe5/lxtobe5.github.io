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
	public class Graphics_method_beginShaderFill extends Output
	{
		private var canvas:Sprite; 
		private var shader:Shader; 
		private var loader:URLLoader; 
		
		private var topMiddle:Point; 
		private var bottomLeft:Point; 
		private var bottomRight:Point; 
		
		private var colorAngle:Number = 0.0; 
		private const d120:Number = 120 / 180 * Math.PI; // 120 degrees in radians 
		
		override public function run():void
		{
			canvas = new Sprite(); 
			tracePattern(canvas); 
			
			var size:int = 400; 
			topMiddle = new Point(size / 2, 10); 
			bottomLeft = new Point(0, size - 10); 
			bottomRight = new Point(size, size - 10); 
			
			loader = new URLLoader(); 
			loader.dataFormat = URLLoaderDataFormat.BINARY; 
			loader.addEventListener(Event.COMPLETE, onLoadComplete); 
			loader.load(new URLRequest(resource+"/ThreePointGradient.pbj")); 
		}
		
		private function onLoadComplete(event:Event):void 
		{ 
			shader = new Shader(loader.data); 
			
			shader.data.point1.value = [topMiddle.x, topMiddle.y]; 
			shader.data.point2.value = [bottomLeft.x, bottomLeft.y]; 
			shader.data.point3.value = [bottomRight.x, bottomRight.y]; 
			
			drawArea.stage.addEventListener(Event.ENTER_FRAME, updateShaderFill); 
		} 
		
		private function updateShaderFill(event:Event):void 
		{ 
			colorAngle += .06; 
			traceString("colorAngle:"+colorAngle);
			
			var c1:Number = 1 / 3 + 2 / 3 * Math.cos(colorAngle); 
			var c2:Number = 1 / 3 + 2 / 3 * Math.cos(colorAngle + d120); 
			var c3:Number = 1 / 3 + 2 / 3 * Math.cos(colorAngle - d120); 
			
			shader.data.color1.value = [c1, c2, c3, 1.0]; 
			shader.data.color2.value = [c3, c1, c2, 1.0]; 
			shader.data.color3.value = [c2, c3, c1, 1.0]; 
			
			canvas.graphics.clear(); 
			canvas.graphics.beginShaderFill(shader); 
			
			canvas.graphics.moveTo(topMiddle.x, topMiddle.y); 
			canvas.graphics.lineTo(bottomLeft.x, bottomLeft.y); 
			canvas.graphics.lineTo(bottomRight.x, bottomLeft.y); 
			
			canvas.graphics.endFill(); 
		} 
		
		override public function dispose():void
		{
			drawArea.stage.removeEventListener(Event.ENTER_FRAME, updateShaderFill); 
		}
	}
}
/************************************************************************************************
 beginShaderFill	()	方法	 
public function beginShaderFill(shader:Shader, matrix:Matrix = null):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 10, AIR 1.5

为对象指定着色器填充，供随后调用其他 Graphics 方法（如 lineTo() 或 drawCircle()）时使用。该填充将保持有效，直到您调用 beginFill()、beginBitmapFill()、beginGradientFill() 或 beginShaderFill() 方法。调用 clear() 方法会清除填充。

只要绘制 3 个或更多个点，或者调用 endFill() 方法时，应用程序就会呈现填充。

在 GPU 呈现下不支持着色器填充；填充的区域将以蓝绿色着色。

参数
	shader:Shader — 要用于填充的着色器。此 Shader 实例无需指定图像输入。但是，如果在着色器中指定图像输入，则必须手动提供输入。要指定输入，请设置 Shader.data 属性的对应 ShaderInput 属性的 input 属性。

传递 Shader 实例作为参数时，会在内部复制着色器。绘图填充操作将使用该内部副本，而不是对原始着色器的引用。对着色器进行的任何更改（比如更改参数值、输入或字节代码）不会应用于所复制的用于填充的着色器。
 
	matrix:Matrix (default = null) — 一个 matrix 对象（属于 flash.geom.Matrix 类），可用于对着色器定义转换。例如，可以使用以下矩阵将着色器旋转 45 度（pi/4 弧度）：

     matrix = new flash.geom.Matrix(); 
     matrix.rotate(Math.PI / 4);
     

着色器中收到的坐标基于为 matrix 参数指定的矩阵。对于默认 (null) 矩阵，着色器中的坐标是可用于对输入采样的局部像素坐标。


引发
	ArgumentError — 当着色器输出类型与此操作不兼容时（着色器必须指定 pixel3 或 pixel4 输出）。
 
	ArgumentError — 当着色器指定了未提供的图像输入时。
 
	ArgumentError — 当使用 ByteArray 或 Vector.<Number> 实例作为输入，并且没有为 ShaderInput 指定 width 和 height 属性或指定的值与输入对象中的数据量不匹配时。有关详细信息，请参阅 ShaderInput.input 属性。 
 ************************************************************************************************/