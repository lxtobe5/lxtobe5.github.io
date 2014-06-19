package configs.apiconfig
{
	import lx.api.flash.display.Graphics.Graphics_method_beginBitmapFill;
	import lx.api.flash.display.Graphics.Graphics_method_beginFill;
	import lx.api.flash.display.Graphics.Graphics_method_beginGradientFill;
	import lx.api.flash.display.Graphics.Graphics_method_beginShaderFill;
	import lx.api.flash.display.Graphics.Graphics_method_copyFrom;
	import lx.api.flash.display.Graphics.Graphics_method_cubicCurveTo;
	import lx.api.flash.display.Graphics.Graphics_method_curveTo;
	import lx.api.flash.display.Graphics.Graphics_method_drawCircle;
	import lx.api.flash.display.Graphics.Graphics_method_drawEllipse;
	import lx.api.flash.display.Graphics.Graphics_method_drawGraphicsData;
	import lx.api.flash.display.Graphics.Graphics_method_drawPath;
	import lx.api.flash.display.Graphics.Graphics_method_drawRect;
	import lx.api.flash.display.Graphics.Graphics_method_drawRoundRect;
	import lx.api.flash.display.Graphics.Graphics_method_drawTriangles;
	import lx.api.flash.display.Graphics.Graphics_method_endFill;
	import lx.api.flash.display.Graphics.Graphics_method_lineBitmapStyle;
	import lx.api.flash.display.Graphics.Graphics_method_lineGradientStyle;
	import lx.api.flash.display.Graphics.Graphics_method_lineShaderStyle;
	import lx.api.flash.display.Graphics.Graphics_method_lineStyle;
	import lx.api.flash.display.Graphics.Graphics_method_lineTo;
	import lx.api.flash.display.Graphics.Graphics_method_moveTo;
	import lx.api.flash.display.Graphics.Graphics_method_readGraphicsData;

	/**
	 *Graphics 
	 * @author Liuxin
	 * 
	 */	
	public final dynamic class Graphics_aggregation extends Array
	{
		public function Graphics_aggregation()
		{
			super(
				Graphics_method_beginBitmapFill,
				Graphics_method_beginFill,
				Graphics_method_beginGradientFill,
				Graphics_method_beginShaderFill,
				Graphics_method_copyFrom,
				Graphics_method_cubicCurveTo,
				Graphics_method_curveTo,
				Graphics_method_drawCircle,
				Graphics_method_drawEllipse,
				Graphics_method_drawGraphicsData,
				Graphics_method_drawPath,
				Graphics_method_drawRect,
				Graphics_method_drawRoundRect,
				Graphics_method_drawTriangles,
				Graphics_method_endFill,
				Graphics_method_lineBitmapStyle,
				Graphics_method_lineGradientStyle,
				Graphics_method_lineShaderStyle,
				Graphics_method_lineStyle,
				Graphics_method_lineTo,
				Graphics_method_moveTo,
				Graphics_method_readGraphicsData
				);
		}
	}
}