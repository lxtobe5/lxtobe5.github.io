package lx.api.flash.display.Graphics
{
	import flash.display.GraphicsPathCommand;
	import flash.display.GraphicsPathWinding;
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_drawPath extends Output
	{
		/**
		 * 充两个 Vector 对象，然后将其传递给 drawPath() 方法以呈现一个蓝星。第一个矢量 star_commands 包含 GraphicsPathCommand 类中表示绘图命令的一系列常量。
		 * 第二个 Vector 对象 star_coord 包含 5 组 x 和 y 坐标对。drawPath() 方法将命令与位置进行匹配以绘制一个星形。 
		 */
		override public function run():void
		{
			var star_commands:Vector.<int> = new Vector.<int>(5, true);
			
			star_commands[0] = GraphicsPathCommand.MOVE_TO;
			star_commands[1] = GraphicsPathCommand.LINE_TO;
			star_commands[2] = GraphicsPathCommand.LINE_TO;
			star_commands[3] = GraphicsPathCommand.LINE_TO;
			star_commands[4] = GraphicsPathCommand.LINE_TO;
			
			var star_coord:Vector.<Number> = new Vector.<Number>(10, true);
			star_coord[0] = 66; //x
			star_coord[1] = 10; //y 
			star_coord[2] = 23; 
			star_coord[3] = 127; 
			star_coord[4] = 122; 
			star_coord[5] = 50; 
			star_coord[6] = 10; 
			star_coord[7] = 49; 
			star_coord[8] = 109; 
			star_coord[9] = 127;
			
			//默认evenOdd的情况
			var evenOdd:Sprite = new Sprite();
			evenOdd.graphics.beginFill(0x003366);
			evenOdd.graphics.drawPath(star_commands, star_coord,GraphicsPathWinding.EVEN_ODD);
			tracePattern(evenOdd);
			
			//nonZero的情况
			var nonZero:Sprite = new Sprite();
			nonZero.graphics.beginFill(0xff00ff);
			nonZero.graphics.drawPath(star_commands, star_coord,GraphicsPathWinding.NON_ZERO);
			nonZero.x = 150;
			tracePattern(nonZero);
		}
	}
}
/************************************************************************************************
 drawPath	()	方法	 
public function drawPath(commands:Vector.<int>, data:Vector.<Number>, winding:String = "evenOdd"):void

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 10, AIR 1.5

提交一系列绘制命令。drawPath() 方法接受一个矢量，它由单个的 moveTo()、lineTo() 和 curveTo() 绘图命令构成，这三个命令合并为一个单独的调用。drawPath() 方法参数将绘图命令与 x、y 坐标值对以及绘图方向合并起来。这几个绘图命令是整数，表示为 GraphicsPathCommand 类中定义的常量。x 和 y 坐标值对是数组中的数字，其中的每对数字定义一个坐标位置。绘图方向为 GraphicsPathWinding 类中的值。

通常，与使用一系列单个 lineTo() 和 curveTo() 方法调用相比，使用 drawPath() 呈现绘图的速度会更快。

drawPath() 方法使用浮动计算，因此形状的旋转和缩放更准确，可以获得更好的结果。但是，通过使用 drawPath() 方法提交的曲线在与 lineTo() 和 curveTo() 方法结合使用时，可能会存在小的子像素对齐误差。

drawPath() 方法还使用稍有不同的规则进行填充和绘制线条。这些规则是：

    在应用填充以呈现路径时：
        不呈现少于 3 个点的子路径。（但请注意，笔触呈现仍将发生，并与下面的笔触规则相一致。）
        隐式闭合未闭合的子路径（结束点不等于开始点）。
    在应用笔触以呈现路径时：
        子路径可以由任何数量的点组成。
        从不隐式闭合子路径。

参数
	commands:Vector.<int> — 由表示绘图命令的整数构成的矢量。可接受的值集由 GraphicsPathCommand 类中的常量定义。
 
	data:Vector.<Number> — 由数字实例构成的矢量，其中的每一对数字将被视为一个坐标位置（一个 x, y 对）。x 和 y 坐标值对不是 Point 对象；data 矢量是一系列数字，其中的每个由两个数字构成的组表示一个坐标位置。
 
	winding:String (default = "evenOdd") — 使用 GraphicsPathWinding 类中定义的值指定缠绕规则。 
 ************************************************************************************************/