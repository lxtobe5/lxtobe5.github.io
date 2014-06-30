package components.MathTool
{
	import flash.display.CapsStyle;
	import flash.display.JointStyle;
	import flash.display.LineScaleMode;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Point;

	public class Line extends Output
	{
		public function Line()
		{
		}
		
		private var p1:Point = new Point(0,0);
		private var p2:Point = new Point(10,0);
		private var p3:Point = new Point(0,10);
		private var s1:Sprite = new Sprite();
		private var s2:Sprite = new Sprite();
		private var s3:Sprite = new Sprite();
		private var sp:Sprite = new Sprite();
		
		override public function run():void
		{
			sp.graphics.lineStyle(1, 0xFFD700, 1, false, LineScaleMode.VERTICAL,
				CapsStyle.NONE, JointStyle.MITER, 10);
			sp.graphics.moveTo(0,0);
			sp.graphics.lineTo(10,0);
			sp.graphics.lineTo(0,10);
			sp.graphics.lineTo(0,0);
			tracePattern(sp);
			
			s1 = getCircle();
			s1.name = "s1";
			s2 = getCircle();
			s2.name = "s2";
			s3 = getCircle();
			s3.name = "s3";
			sp.addChild(s1);
			sp.addChild(s2);
			sp.addChild(s3);
			s1.x = -2;
			s1.y = -2;
			s2.x = 8;
			s2.y = -2;
			s3.x = -2;
			s3.y = 8;
			s1.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
			s2.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
			s3.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
			s1.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			s2.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			s3.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			s1.addEventListener(MouseEvent.RELEASE_OUTSIDE,onMouseReleaseOutside);
			s2.addEventListener(MouseEvent.RELEASE_OUTSIDE,onMouseReleaseOutside);
			s3.addEventListener(MouseEvent.RELEASE_OUTSIDE,onMouseReleaseOutside);
		}
		
		private function onMouseReleaseOutside(e:MouseEvent):void
		{
			isDown = false;
		}
		
		private var isDown:Boolean;
		private function onMouseDown(e:MouseEvent):void
		{
			isDown = true;
		}
		
		private function onMouseMove(e:MouseEvent):void
		{
			if(isDown)
			{
				if(e.target.name=="s1")
				{
					sp.graphics.lineStyle(1, 0xFFD700, 1, false, LineScaleMode.VERTICAL,
						CapsStyle.NONE, JointStyle.MITER, 10);
					sp.graphics.moveTo(0,0);
					sp.graphics.lineTo(10,0);
					sp.graphics.lineTo(0,10);
					sp.graphics.lineTo(0,0);
				}
			}
		}
		
		private function getCircle():Sprite
		{
			var c:Sprite = new Sprite();
			c.graphics.beginFill(0);
			c.graphics.drawCircle(0,0,2);
			c.graphics.endFill();
			return c;
		}
	}
}