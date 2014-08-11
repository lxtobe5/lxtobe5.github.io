package components.MathTool
{
	import flash.display.Shape;
	import flash.geom.Point;
	

	public class Line extends Output
	{
		private var line1:Shape = new Shape();
		private var line2:Shape = new Shape();
		public function Line()
		{
			
		}
		
		override public function run():void
		{
			var p0:Point = new Point();
			var p1:Point = new Point();
			
			var offX:Number = 100;
			var offY:Number = 100;
			var length:Number = 100;
			
			p0.x = offX;
			p0.y = offY;
			
			p1.x = offX+length;
			p1.y = offY;
			line1.graphics.lineStyle(1);
			line1.graphics.moveTo(p0.x,p0.y);
			line1.graphics.lineTo(p1.x,p1.y);
			tracePattern(line1);
			
			var radian:Number;
			radian = angleToRadian(30);
			
			line2.graphics.lineStyle(1);
			line2.graphics.moveTo(p0.x,p0.y);
			line2.graphics.lineTo(offX,offY+Math.sin(radian));
			tracePattern(line2);
		}
		
		private function angleToRadian(angle:Number):Number
		{
			return angle*(Math.PI/180);
		}
	}
}