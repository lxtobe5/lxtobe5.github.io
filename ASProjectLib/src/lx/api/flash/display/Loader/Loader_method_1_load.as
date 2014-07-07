package lx.api.flash.display.Loader
{
	import flash.display.BlendMode;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.HTTPStatusEvent;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Loader_method_1_load extends Output
	{
		private var _btn0:Sprite;
		private var _btn1:Sprite;
		private var _btn2:Sprite;
		private var _btn3:Sprite;
		private var _btn4:Sprite;
		private var _swfPath:String;
		private var _loader:Loader;
		private var _loaderContext:LoaderContext;
		private var _applicationDomain:ApplicationDomain;
		private var _urlrequest:URLRequest;
		private var _element:String = "SpriteObject";
		private var _isTrace:Boolean;
		public function Loader_method_1_load()
		{
			_btn0 = getBtn("是否输出\ngetQualifiedDefinitionNames");
			_btn1 = getBtn("当前应用程序域\nloaderContext = null");
			_btn2 = getBtn("当前应用程序域\nnew LoaderContext(false,ApplicationDomain.currentDomain)");
			_btn3 = getBtn("当前应用程序域的子域\nnew LoaderContext(false,new ApplicationDomain(ApplicationDomain.currentDomain))");
			_btn4 = getBtn("应用程序域的系统域\nnew LoaderContext(false,new ApplicationDomain())");
		}
		
		override public function run():void
		{
			_swfPath = resource + "\\swf.swf";
			tracePattern(_btn0);
			tracePattern(_btn1);
			tracePattern(_btn2);
			tracePattern(_btn3);
			tracePattern(_btn4);
			
			_btn1.y = _btn0.height + _btn0.y + 5;
			_btn2.y = _btn1.height + _btn1.y + 5;
			_btn3.y = _btn2.height + _btn2.y + 5;
			_btn4.y = _btn3.height + _btn3.y + 5;
			_btn0.addEventListener(MouseEvent.CLICK,onClickBtn0);
			_btn1.addEventListener(MouseEvent.CLICK,onClickBtn1);
			_btn2.addEventListener(MouseEvent.CLICK,onClickBtn2);
			_btn3.addEventListener(MouseEvent.CLICK,onClickBtn3);
			_btn4.addEventListener(MouseEvent.CLICK,onClickBtn4);
			_loader = new Loader();
			_urlrequest = new URLRequest(_swfPath);
			configureListeners(_loader.contentLoaderInfo);
		}
		
		private function configureListeners(dispatcher:IEventDispatcher):void
		{
			dispatcher.addEventListener(Event.COMPLETE, completeHandler);
			dispatcher.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
			dispatcher.addEventListener(Event.INIT, initHandler);
			dispatcher.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			dispatcher.addEventListener(Event.OPEN, openHandler);
			dispatcher.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			dispatcher.addEventListener(Event.UNLOAD, unLoadHandler);
		}
		
		private function completeHandler(e:Event):void
		{
			var loaderInfo:LoaderInfo = LoaderInfo(e.target);
			
			traceString("loaderInfo.applicationDomain.getDefinition("+_element+"):"+loaderInfo.applicationDomain.getDefinition(_element));
			traceString("ApplicationDomain.currentDomain==loaderInfo.applicationDomain.parentDomain:"+(ApplicationDomain.currentDomain==loaderInfo.applicationDomain.parentDomain)+"域不能比较，但ApplicationDomain.currentDomain等同loaderInfo.applicationDomain.parentDomain");
			try
			{
				traceString("ApplicationDomain.currentDomain.getDefinition("+_element+"):"+ApplicationDomain.currentDomain.getDefinition(_element));
			} 
			catch(error:Error) 
			{
				traceString(error);
			}
			if(_isTrace)
			{
				traceString("loaderInfo.applicationDomain.getQualifiedDefinitionNames():"+loaderInfo.applicationDomain.getQualifiedDefinitionNames());
				traceString("loaderInfo.applicationDomain.parentDomain.getQualifiedDefinitionNames():"+loaderInfo.applicationDomain.parentDomain.getQualifiedDefinitionNames());
				traceString("ApplicationDomain.currentDomain.getQualifiedDefinitionNames():"+ApplicationDomain.currentDomain.getQualifiedDefinitionNames());
			}
		}
		
		private function httpStatusHandler(e:HTTPStatusEvent):void
		{
			
		}
		
		private function initHandler(e:Event):void
		{
			
		}
		
		private function openHandler(e:Event):void
		{
			
		}
		
		private function ioErrorHandler(e:IOErrorEvent):void
		{
			
		}
		
		private function progressHandler(e:ProgressEvent):void
		{
			
		}
		
		private function unLoadHandler(e:Event):void
		{
			
		}
		
		private function onClickBtn0(e:MouseEvent):void
		{
			_isTrace = !_isTrace;
			_btn0.blendMode = _isTrace ? BlendMode.DIFFERENCE : BlendMode.NORMAL;
		}
		
		private function onClickBtn1(e:MouseEvent):void
		{
			_loader.unload();
			printArea.text = "";
			_loader.load(_urlrequest);
		}
		
		private function onClickBtn2(e:MouseEvent):void
		{
			_loader.unload();
			printArea.text = "";
			_applicationDomain = ApplicationDomain.currentDomain;
			_loaderContext = new LoaderContext(false,_applicationDomain);
			_loader.load(_urlrequest,_loaderContext);
		}
		
		private function onClickBtn3(e:MouseEvent):void
		{
			_loader.unload();
			printArea.text = "";
			_applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
			_loaderContext = new LoaderContext(false,_applicationDomain);
			_loader.load(_urlrequest,_loaderContext);
		}
		
		private function onClickBtn4(e:MouseEvent):void
		{
			_loader.unload();
			printArea.text = "";
			_applicationDomain = new ApplicationDomain();
			_loaderContext = new LoaderContext(false,_applicationDomain);
			_loader.load(_urlrequest,_loaderContext);
		}
		
		override public function dispose():void
		{
			_btn1.removeEventListener(MouseEvent.CLICK,onClickBtn1);
			_btn2.removeEventListener(MouseEvent.CLICK,onClickBtn2);
			_btn3.removeEventListener(MouseEvent.CLICK,onClickBtn3);
			
			_loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, completeHandler);
			_loader.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
			_loader.contentLoaderInfo.removeEventListener(Event.INIT, initHandler);
			_loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
			_loader.contentLoaderInfo.removeEventListener(Event.OPEN, openHandler);
			_loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, progressHandler);
			_loader.contentLoaderInfo.removeEventListener(Event.UNLOAD, unLoadHandler);
		}
		
		private function getBtn(label:String):Sprite
		{
			var textField:TextField = new TextField();
			textField.autoSize = TextFieldAutoSize.LEFT;
			textField.mouseEnabled = false;
			textField.text = label;
			var btn:Sprite = new Sprite();
			btn.graphics.beginFill(0xcccccc);
			btn.graphics.drawRoundRect(0,0,textField.width,textField.height,5,5);
			btn.graphics.endFill();
			btn.buttonMode = true;
			btn.addChild(textField);
			return btn;
		}
	}
}