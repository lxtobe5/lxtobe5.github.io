package lx.api.flash.display.Graphics
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.display.Shape;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_lineTo extends Output
	{
		override public function run():void
		{
			var trapezoid:Shape = new Shape();    
			
			trapezoid.graphics.lineStyle(10, 0xFFD700, 1, false, LineScaleMode.VERTICAL,
				CapsStyle.NONE, JointStyle.MITER, 10);
			
			trapezoid.graphics.moveTo(100, 100);
			
			trapezoid.graphics.lineTo(120, 50);
			trapezoid.graphics.lineTo(200, 50);
			trapezoid.graphics.lineTo(220, 100);
			trapezoid.graphics.lineTo(100, 100); 
			
			tracePattern(trapezoid);
		}
	}
}
/************************************************************************************************
 lineTo	()	方法	 
public function lineTo(x:Number, y:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4

使用当前线条样式绘制一条从当前绘图位置开始到 (x, y) 结束的直线；当前绘图位置随后会设置为 (x, y)。如果正在其中绘制的显示对象包含用 Flash 绘图工具创建的内容，则调用 lineTo() 方法将在该内容下面进行绘制。如果在对 moveTo() 方法进行任何调用之前调用了 lineTo()，则当前绘图的默认位置为 (0, 0)。如果缺少任何一个参数，则此方法将失败，并且当前绘图位置不改变。

参数
	x:Number — 一个表示相对于父显示对象注册点的水平位置的数字（以像素为单位）。
 
	y:Number — 一个表示相对于父显示对象注册点的垂直位置的数字（以像素为单位）。
 ************************************************************************************************/