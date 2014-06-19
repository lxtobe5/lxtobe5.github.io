package configs.apiconfig
{
	import lx.api.flash.display.BitmapData.BitmapData_method_BitmapData;
	import lx.api.flash.display.BitmapData.BitmapData_method_applyFilter;
	import lx.api.flash.display.BitmapData.BitmapData_method_colorTransform;
	import lx.api.flash.display.BitmapData.BitmapData_method_compare;
	import lx.api.flash.display.BitmapData.BitmapData_method_copyChannel;
	import lx.api.flash.display.BitmapData.BitmapData_method_copyPixels;
	import lx.api.flash.display.BitmapData.BitmapData_method_copyPixelsToByteArray;
	import lx.api.flash.display.BitmapData.BitmapData_method_dispose;
	import lx.api.flash.display.BitmapData.BitmapData_method_draw;
	import lx.api.flash.display.BitmapData.BitmapData_method_encode;
	import lx.api.flash.display.BitmapData.BitmapData_method_fillRect;
	import lx.api.flash.display.BitmapData.BitmapData_method_floodFill;
	import lx.api.flash.display.BitmapData.BitmapData_method_generateFilterRect;
	import lx.api.flash.display.BitmapData.BitmapData_method_getColorBoundsRect;
	import lx.api.flash.display.BitmapData.BitmapData_method_getPixel;
	import lx.api.flash.display.BitmapData.BitmapData_method_getPixel32;
	import lx.api.flash.display.BitmapData.BitmapData_method_getPixels;
	import lx.api.flash.display.BitmapData.BitmapData_method_getVector;
	import lx.api.flash.display.BitmapData.BitmapData_method_histogram;
	import lx.api.flash.display.BitmapData.BitmapData_method_hitTest;
	import lx.api.flash.display.BitmapData.BitmapData_method_lock;
	import lx.api.flash.display.BitmapData.BitmapData_method_merge;

	/**
	 *BitmapData 
	 * @author Liuxin
	 * 
	 */	
	dynamic final public class BitmapData_aggregation extends Array
	{
		public function BitmapData_aggregation()
		{
			super(
				BitmapData_method_applyFilter,
				BitmapData_method_BitmapData,
				BitmapData_method_colorTransform,
				BitmapData_method_compare,
				BitmapData_method_copyChannel,
				BitmapData_method_copyPixels,
				BitmapData_method_copyPixelsToByteArray,
				BitmapData_method_dispose,
				BitmapData_method_draw,
				BitmapData_method_encode,
				BitmapData_method_fillRect,
				BitmapData_method_floodFill,
				BitmapData_method_generateFilterRect,
				BitmapData_method_getColorBoundsRect,
				BitmapData_method_getPixel,
				BitmapData_method_getPixel32,
				BitmapData_method_getPixels,
				BitmapData_method_getVector,
				BitmapData_method_histogram,
				BitmapData_method_hitTest,
				BitmapData_method_lock,
				BitmapData_method_merge
				);
		}
	}
}