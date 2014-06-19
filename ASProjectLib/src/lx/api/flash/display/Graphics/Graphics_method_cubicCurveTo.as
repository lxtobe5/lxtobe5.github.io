package lx.api.flash.display.Graphics
{
	import flash.display.Shape;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_cubicCurveTo extends Output
	{
		override public function run():void
		{
			var rounderObject:Shape = new Shape();
			
			rounderObject.graphics.beginFill(0x0000FF);
			rounderObject.graphics.moveTo(250, 0);
			rounderObject.graphics.cubicCurveTo(275, 0, 300, 25, 300, 50);
			rounderObject.graphics.cubicCurveTo(300, 75, 275, 100, 250, 100);
			rounderObject.graphics.cubicCurveTo(225, 100, 200, 75, 200, 50);
			rounderObject.graphics.cubicCurveTo(200, 25, 225, 0, 250, 0);
			rounderObject.graphics.endFill();
			
			tracePattern(rounderObject);
		}
	}
}
/************************************************************************************************
 cubicCurveTo	()	方法	 
public function cubicCurveTo(controlX1:Number, controlY1:Number, controlX2:Number, controlY2:Number, anchorX:Number, anchorY:Number):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 11, AIR 3

从当前绘图位置到指定的锚点绘制一条三次贝塞尔曲线。三次贝塞尔曲线由两个锚点和两个控制点组成。该曲线内插这两个锚点，并向两个控制点弯曲。

cubic bezier

用于使用 cubicCurveTo() 方法绘制三次贝塞尔曲线的四个点如下所示：

    当前绘图位置为首个锚点。
    anchorX 和 anchorY 参数指定第二个锚点。
    controlX1 和 controlY1 参数指定首个控制点。
    controlX2 和 controlY2 参数指定第二个控制点。

如果调用 cubicCurveTo() 方法后才调用 moveTo() 方法，则曲线从位置 (0, 0) 处开始。

如果 cubicCurveTo() 方法成功调用，则 Flash 运行时将当前绘图位置设置为 (anchorX, anchorY)。如果 cubicCurveTo() 方法调用失败，则当前绘图位置保持不变。

如果影片剪辑包含使用 Flash 绘图工具创建的内容，则调用 cubicCurveTo() 方法的结果将在该内容下绘制。

参数
	controlX1:Number — 指定首个控制点相对于父显示对象的注册点的水平位置。
 
	controlY1:Number — 指定首个控制点相对于父显示对象的注册点的垂直位置。
 
	controlX2:Number — 指定第二个控制点相对于父显示对象的注册点的水平位置。
 
	controlY2:Number — 指定第二个控制点相对于父显示对象的注册点的垂直位置。
 
	anchorX:Number — 指定锚点相对于父显示对象的注册点的水平位置。
 
	anchorY:Number — 指定锚点相对于父显示对象的注册点的垂直位置。
 ************************************************************************************************/