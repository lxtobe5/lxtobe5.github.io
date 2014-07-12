package lx.api.Math
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Math_static_method_atan2 extends Output
	{
		private var circle:Sprite = new Sprite();
		private var rotationPoint:Point = new Point(200,200);
		override public function run():void
		{
			var k:Number;
			for (var i:Number = -1; i <= 1; i+=0.1) 
			{
				k = Math.round(i*10)/10;
				traceString('atan2('+k+','+k*10+'):'+Math.atan2(k,k*5));
			}
			
			circle.graphics.lineStyle(1);
			circle.graphics.drawRect(0,0,100,100);
			tracePattern(circle);
			circle.x = 100;
			circle.y = 100;
			stage.addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		
		private function onEnterFrame(e:Event):void
		{
			var dx:Number = stage.mouseX - circle.x; 
			var dy:Number = stage.mouseY - circle.y; 
			circle.rotation = Math.atan2(dy, dx) * 180 / Math.PI; 
		}
		
		override public function dispose():void
		{
			stage.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
	}
}
/************************************************************************************************
 atan2()	方法	 
 public static function atan2(y:Number, x:Number):Number
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 以弧度为单位计算并返回点 y/x 的角度，该角度从圆的 x 轴（0 点在其上，0 表示圆心）沿逆时针方向测量。返回值介于正 pi 和负 pi 之间。请注意，atan2 的第一个参数始终是 y 坐标。
 参数
 y:Number — 该点的 y 坐标。
 x:Number — 该点的 x 坐标。
 返回
 Number — 一个数字。 
 ************************************************************************************************/