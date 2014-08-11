package lx.api.flash.display.Sprite
{
	import flash.display.Bitmap;
	import flash.display.BlendMode;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.BlurFilter;
	import flash.net.URLRequest;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Sprite_attribute_mask extends Output
	{
		private var _bitmap:Bitmap;
		private var _circleMask:Sprite;
		
		override public function run():void
		{
			_circleMask = new Sprite();
			_circleMask.graphics.beginFill(0xff0000);
			_circleMask.graphics.drawCircle(50,50,50);
			_circleMask.graphics.endFill();
			
			_circleMask.filters = [new BlurFilter(20, 20, BitmapFilterQuality.HIGH)];
			_circleMask.cacheAsBitmap = true;
			
			tracePattern(_circleMask);    
			
			_circleMask.startDrag(true);
			
			var loader:Loader = new Loader();
			var request:URLRequest = new URLRequest(resource+"\png.png");
			loader.load(request);    
			
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loaded);        
		}
		
		private function loaded(e:Event):void
		{
			e.target.contentLoaderInfo.addEventListener(Event.COMPLETE, loaded);    
			_bitmap = e.target.content as Bitmap;
			tracePattern(_bitmap);        
			
			_bitmap.cacheAsBitmap = true;
			
			_circleMask.blendMode = BlendMode.ERASE;
			_bitmap.mask = _circleMask;
		}
	}
}