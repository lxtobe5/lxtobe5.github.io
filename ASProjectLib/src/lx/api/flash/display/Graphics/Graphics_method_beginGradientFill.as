package lx.api.flash.display.Graphics
{
	import flash.display.GradientType;
	import flash.display.InterpolationMethod;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.Matrix;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_beginGradientFill extends Output
	{
		override public function run():void
		{
			var fillType:String = GradientType.LINEAR;
			var colors:Array = [0xFF0000, 0x0000FF];
			var alphas:Array = [1, 1];
			var ratios:Array = [0x00, 0xFF];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(20, 20, 0, 0, 0);
			
			//SpreadMethod.PAD
			var spreadMethod:String = SpreadMethod.PAD;
			var  s1:Sprite = new Sprite();
			s1.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);        
			s1.graphics.drawRect(0,0,100,100);
			tracePattern(s1);
			
			//SpreadMethod.REFLECT
			spreadMethod = SpreadMethod.REFLECT;
			var s2:Sprite = new Sprite();
			s2.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod);
			s2.graphics.drawRect(0,0,100,100);
			tracePattern(s2);
			s2.y = 110;
			
			//SpreadMethod.REPEAT  默认interpolationMethod=InterpolationMethod.RGB
			spreadMethod = SpreadMethod.REPEAT;
			var s3:Sprite = new Sprite();
			s3.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod);
			s3.graphics.drawRect(0,0,100,100);
			tracePattern(s3);
			s3.y = 220;
			
			//SpreadMethod.REPEAT  interpolationMethod=InterpolationMethod.LINEAR_RGB
			var s4:Sprite = new Sprite();
			s4.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod,InterpolationMethod.LINEAR_RGB);
			s4.graphics.drawRect(0,0,100,100);
			tracePattern(s4);
			s4.y = 330;
			
			//SpreadMethod.REPEAT  interpolationMethod=InterpolationMethod.LINEAR_RGB focalPointRatio=0.75
			var s5:Sprite = new Sprite();
			s5.graphics.beginGradientFill(fillType,colors,alphas,ratios,matr,spreadMethod,InterpolationMethod.LINEAR_RGB,0.75);
			s5.graphics.drawRect(0,0,100,100);
			tracePattern(s5);
			s5.y = 440;
		}
	}
}
/************************************************************************************************
 
 ************************************************************************************************/