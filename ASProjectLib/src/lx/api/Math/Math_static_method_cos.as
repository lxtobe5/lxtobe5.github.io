package lx.api.Math
{
	import flash.display.Sprite;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Math_static_method_cos extends Output
	{
		override public function run():void
		{
			var width:Number = 400;
			var cos:Sprite = new Sprite();
			var cosWavePosition:Number = 100; 
			var cosWaveColor:uint = 0x00FF00; 
			var waveMultiplier:Number = 10; 
			var waveStretcher:Number = 5; 
			
			var i:uint; 
			for(i = 1; i < width; i++) 
			{ 
				var cosPosY:Number = Math.cos(i / waveStretcher) * waveMultiplier; 
				traceString(cosPosY);
				cos.graphics.beginFill(cosWaveColor); 
				cos.graphics.drawRect(i, cosWavePosition + cosPosY, 2, 2);  
			}
			tracePattern(cos);
		}
	}
}