package lx.api.Math
{
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Math_static_method_sin extends Output
	{
		override public function run():void
		{
			var width:Number = 400;
			var sin:Sprite = new Sprite();
			var sinWavePosition:Number = 100; 
			var sinWaveColor:uint = 0xFF0000; 
			var waveMultiplier:Number = 10; 
			var waveStretcher:Number = 5; 
			
			var i:uint; 
			for(i = 1; i < width; i++) 
			{ 
				var sinPosY:Number = Math.sin(i / waveStretcher) * waveMultiplier; 
				traceString(sinPosY);
				sin.graphics.beginFill(sinWaveColor); 
				sin.graphics.drawRect(i, sinWavePosition + sinPosY, 2, 2);  
			}
			tracePattern(sin);
		}
	}
}