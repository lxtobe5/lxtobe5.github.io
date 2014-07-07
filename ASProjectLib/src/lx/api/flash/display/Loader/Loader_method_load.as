package lx.api.flash.display.Loader
{
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.events.HTTPStatusEvent;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Loader_method_load extends Output
	{
		private var loader:Loader;
		private var array:Array;
		private var string:String;
		private var _select:int;
		private var _loadDomain:int;
		private var loaderContext:LoaderContext;
		private var applicationDomain:ApplicationDomain;
		private var urlrequest:URLRequest;
		
		override public function run():void
		{
			array = ['swf.swf','gif.gif','jpg.jpg','png.png'];
			string = 'SpriteObject';
			urlrequest = new URLRequest();
			loader = new Loader();
			configureListeners(loader.contentLoaderInfo);
			
			select = 0;
			
			loadDomain =  2;
		}
		
		private function set loadDomain(value:int):void
		{
			_loadDomain = value;
			switch(value)
			{
				case 1:
				{
					//					默认放置在父SWF所在的应用程序域（当前应用程序域）
					loaderContext = null;
					break;
				}
					
				case 2:
				{
					//					放置到父SWF所在的应用程序域（当前应用程序域）
					applicationDomain = ApplicationDomain.currentDomain;
					loaderContext = new LoaderContext(false,applicationDomain);
					break;
				}
					
				case 3:
				{
					//					放置到父SWF所在的应用程序域的的子域
					applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
					loaderContext = new LoaderContext(false,applicationDomain);
					break;
				}
					
				case 4:
				{
					//					放置到父SWF所在的应用程序域的系统域
					applicationDomain = new ApplicationDomain();
					loaderContext = new LoaderContext(false,applicationDomain);
				}
			}
			loader.load(urlrequest,loaderContext);
		}
		
		private function get loadDomain():int
		{
			return _loadDomain;
		}
		
		private function set select(index:int):void
		{
			urlrequest.url = resource + "/" + array[index];
			_select = index;
		}
		
		private function get select():int
		{
			return _select;
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
		
		private function completeHandler(event:Event):void
		{
			traceString("completeHandler: " + event);
			
			var loaderInfo:LoaderInfo = LoaderInfo(event.target);
			
			traceString(loaderInfo.bytes);
			/************************************************************************************************
			 bytes属性	 
			 bytes:ByteArray  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9.0.115.0, Flash Lite 4
			 与 LoaderInfo 对象相关联的字节数。
			 实现
			 public function get bytes():ByteArray
			 引发
			 SecurityError — 如果由于安全限制的缘故而阻止访问此 API 的对象访问加载的对象。例如，如果 Loader 对象尝试访问 contentLoaderInfo.content 属性，但未向其授予访问加载的内容的安全权限，则可能会出现此情况。
			 有关安全性的详细信息，请参阅 Flash Player 开发人员中心主题：安全性。
			 ************************************************************************************************/
			
			traceString(loaderInfo.childAllowsParent);
			/************************************************************************************************
			 childAllowsParent属性	 
			 childAllowsParent:Boolean  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 表示内容（子级）对加载者（父级）的信任关系。如果子项允许父项访问，则为 true；否则为 false。如果子对象已调用 allowDomain() 方法向父域授予权限，或者在子域中加载了向父域授予权限的 URL 策略，则将此属性设置为 true。如果子级和父级在同一域中，则此属性设置为 true。
			 有关安全性的详细信息，请参阅 Flash Player 开发人员中心主题：安全性。
			 实现
			 public function get childAllowsParent():Boolean
			 引发
			 Error — 文件未完整下载而不足以检索到所请求的信息时引发。 
			 ************************************************************************************************/
			
			traceString(loaderInfo.childSandboxBridge);
			/************************************************************************************************
			 childSandboxBridge属性	 
			 childSandboxBridge:Object
			 运行时版本: 	AIR 1.0, Flash Player 11.4, Flash Lite 4
			 一个对象，它可以通过所加载内容的代码进行设置以公开可以由 Loader 对象的沙箱中的代码访问的属性和方法。此沙箱桥 使来自非应用程序域的内容对 应用程序沙箱中的脚本具有受控的访问权，反之亦然。沙箱桥充当沙箱之间的通道，在应用程序安全沙箱和非应用程序安全沙箱之间提供显式交互。
			 实现
			 public function get childSandboxBridge():Object
			 public function set childSandboxBridge(value:Object):void
			 引发
			 SecurityError — 只有所加载内容的沙箱中的内容可以设置此属性。
			 ************************************************************************************************/
			
			traceString(loaderInfo.bytesTotal);
			/************************************************************************************************
			 bytesTotal属性	 
			 bytesTotal:uint  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 整个媒体文件中压缩的字节数。
			 在此 LoaderInfo 对象相应的 Loader 对象调度第一个 progress 事件之前，bytesTotal 为 0。在该 Loader 对象调度第一个 progress 事件之后，bytesTotal 反映的是要下载的实际字节数。
			 注意（仅限 iOS）：在 iOS 上运行应用程序时，返回值与其他平台上的返回值不同。
			 实现
			 public function get bytesTotal():uint
			 ************************************************************************************************/
			
			traceString(loaderInfo.bytesLoaded);
			/************************************************************************************************
			 bytesLoaded属性	 
			 bytesLoaded:uint  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 媒体已加载的字节数。如果此数字与 bytesTotal 的值相等，则会加载所有字节。
			 实现
			 public function get bytesLoaded():uint
			 ************************************************************************************************/
			
			traceString(loaderInfo.contentType);
			/************************************************************************************************
			 contentType属性	 
			 contentType:String  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 被加载文件的 MIME 类型。如果所加载的文件内容不足以确定类型，则该值为 null。以下列表给出了可能的值：
			 "application/x-shockwave-flash"
			 "image/jpeg"
			 "image/gif"
			 "image/png"
			 实现
			 public function get contentType():String
			 ************************************************************************************************/
			
			traceString(loaderInfo.loaderURL);
			/************************************************************************************************
			 loaderURL属性	 
			 loaderURL:String  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 SWF 文件的 URL，该 SWF 文件启动对此 LoaderInfo 对象所描述的媒体的加载。对于 SWF 文件的主类的实例，此 URL 与 SWF 文件自己的 URL 相同。
			 实现
			 public function get loaderURL():String
			 ************************************************************************************************/
			
			traceString(loaderInfo.parameters);
			/************************************************************************************************
			 parameters属性	 
			 parameters:Object  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 包含名称-值对的对象，表示为被加载的 SWF 文件提供的参数。
			 可以使用 for-in 循环来提取 parameters 对象中的所有名称和值。
			 参数的两个源为：主 SWF 文件的 URL 中的查询字符串和 FlashVars HTML 参数（这只影响主 SWF 文件）的值。
			 parameters 属性替换了 ActionScript 1.0 和 2.0 提供 SWF 文件参数作为主时间轴的技术。
			 Loader 对象（该对象包含使用 ActionScript 1.0 或 2.0 的 SWF 文件）的 parameters 属性的值为 null。只有对于包含使用 ActionScript 3.0 的 SWF 文件的 Loader 对象，该值才非 null。
			 实现
			 public function get parameters():Object
			 ************************************************************************************************/
			
			traceString(loaderInfo.sameDomain);
			/************************************************************************************************
			 sameDomain属性	 
			 sameDomain:Boolean  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 表示加载者和内容之间的域关系：如果它们具有相同的原始域，则为 true；否则为 false。
			 实现
			 public function get sameDomain():Boolean
			 引发
			 Error — 文件未完整下载而不足以检索到所请求的信息时引发。 
			 ************************************************************************************************/
			
			traceString(loaderInfo.url);
			/************************************************************************************************
			 url属性	 
			 url:String  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 所加载媒体的 URL。
			 在此 LoaderInfo 对象的对应 Loader 对象调度第一个 progress 事件之前，url 属性的值可能只反映在对 Loader 对象的 load() 方法的调用中指定的初始 URL。在第一个 progress 事件之后，url 属性将在解析了任何重定向和相对 URL 后反映媒体的最终 URL。
			 在某些情况下，url 属性的值会被截断；有关详细信息，请参阅 isURLInaccessible 属性。
			 实现
			 public function get url():String
			 ************************************************************************************************/
			
			traceString(loaderInfo.applicationDomain);
			/************************************************************************************************
			 applicationDomain属性	 
			 applicationDomain:ApplicationDomain  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 加载外部 SWF 文件后，包含在已加载类中的所有 ActionScript 3.0 定义将存储在 applicationDomain 属性中。
			 SWF 文件中的所有代码被定义为存在于应用程序域中。主应用程序就在当前的应用程序域中运行。系统域包含所有应用程序域，包括当前域和由 Flash Player 或 Adobe AIR 使用的所有类。
			 所有应用程序域（系统域除外）都有关联的父域。主应用程序的 applicationDomain 的父域为系统域。已加载的类仅在其父级中没有相关定义时才进行定义。不能用较新的定义覆盖已加载的类定义。
			 有关应用程序域的使用示例，请参阅《ActionScript 3.0 开发人员指南》中的“客户端系统环境”一章。
			 实现
			 public function get applicationDomain():ApplicationDomain
			 引发
			 SecurityError — 不允许调用方的此安全沙箱访问此 ApplicationDomain。
			 ************************************************************************************************/
			
			traceString(loaderInfo.applicationDomain.domainMemory);
			/************************************************************************************************
			 domainMemory属性	 
			 domainMemory:ByteArray
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	Flash Player 10, AIR 1.5, Flash Lite 4
			 获取并设置将在此 ApplicationDomain 中对其执行域全局内存操作的对象。
			 注意：同时使用 ApplicationDomain.domainMemory 和硬件加速 Stage3D 的相关内容将要求具备许可证。要了解详细信息，请访问 adobe.com/go/fpl_cn。
			 实现
			 public function get domainMemory():ByteArray
			 public function set domainMemory(value:ByteArray):void
			 ************************************************************************************************/
			
			traceString(loaderInfo.applicationDomain.parentDomain);
			/************************************************************************************************
			 parentDomain属性	 
			 parentDomain:ApplicationDomain  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 获取该应用程序域的父域。
			 实现
			 public function get parentDomain():ApplicationDomain
			 ************************************************************************************************/
			
			traceString(ApplicationDomain.currentDomain);
			/************************************************************************************************
			 currentDomain属性
			 currentDomain:ApplicationDomain  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
			 获取正在其中执行代码的当前应用程序域。
			 实现
			 public static function get currentDomain():ApplicationDomain
			 ************************************************************************************************/
			
			traceString(ApplicationDomain.MIN_DOMAIN_MEMORY_LENGTH);
			/************************************************************************************************
			 MIN_DOMAIN_MEMORY_LENGTH属性	 
			 MIN_DOMAIN_MEMORY_LENGTH:uint  [只读]
			 语言版本: 	ActionScript 3.0
			 运行时版本: 	Flash Player 10, AIR 1.5, Flash Lite 4
			 获取用作 ApplicationDomain.domainMemory 所需的最小内存对象长度。
			 实现
			 public static function get MIN_DOMAIN_MEMORY_LENGTH():uint
			 ************************************************************************************************/
			
			switch(select)
			{
				//				加载swf格式
				case 0:
				{
					traceString(loaderInfo.actionScriptVersion);
					//					 [只读] 被加载的 SWF 文件的 ActionScript 版本
					
					switch(loadDomain)
					{
						//						LoaderContext没有设置ApplicationDomain.currentDomain
						case 1:
						{
							traceString(loader.contentLoaderInfo.applicationDomain.getDefinition(string));
							traceString(loaderInfo.applicationDomain.getDefinition(string));
							//							获得参数名称的类  loader.contentLoaderInfo==e.target
							
							traceString(loaderInfo.applicationDomain.getQualifiedDefinitionNames());
							//							MovieClipObject,SpriteObject,BitmapDataObject   获得loaderInfo里面所有的类
							
							traceString(loaderInfo.applicationDomain.parentDomain.getQualifiedDefinitionNames());
							//							Common::CommonLib,APIManager.Loader::Function_load,Common::CommonConst
							traceString(ApplicationDomain.currentDomain.getQualifiedDefinitionNames());
							//							Common::CommonLib,APIManager.Loader::Function_load,Common::CommonConst
							
							traceString(ApplicationDomain.currentDomain==loaderInfo.applicationDomain.parentDomain)
							//							false 域不能比较，但ApplicationDomain.currentDomain等同loaderInfo.applicationDomain.parentDomain
							
							try
							{
								traceString(ApplicationDomain.currentDomain.getDefinition(string));
								/************************************************************************************************
								 getDefinition()	方法
								 public function getDefinition(name:String):Object
								 语言版本: 	ActionScript 3.0
								 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
								 从指定的应用程序域获取一个公共定义。该定义可以是一个类、一个命名空间或一个函数的定义。
								 参数
								 name:String — 定义的名称。
								 返回
								 Object — 与此定义关联的对象。
								 引发
								 ReferenceError — 不存在具有指定名称的公共定义。 
								 ************************************************************************************************/
							} 
							catch(error:Error) 
							{
								traceString(error);
								//								ReferenceError: Error #1065: 变量 SpriteObject 未定义。
							}
							break;
						}
							
							//						LoaderContext设置applicationDomain=ApplicationDomain.currentDomain，放置到父SWF所在的应用程序域（当前应用程序域）
						case 2:
						{
							traceString(loader.contentLoaderInfo.applicationDomain.getDefinition(string));
							traceString(loaderInfo.applicationDomain.getDefinition(string));
							traceString(applicationDomain.getDefinition(string));
							traceString(ApplicationDomain.currentDomain.getDefinition(string));
							
							traceString(loaderInfo.applicationDomain.getQualifiedDefinitionNames());
							
							traceString(ApplicationDomain.currentDomain.getQualifiedDefinitionNames());
							/************************************************************************************************
							 getQualifiedDefinitionNames()	方法	 
							 public function getQualifiedDefinitionNames():Vector.<String>
							 语言版本: 	ActionScript 3.0
							 运行时版本: 	Flash Player 11.3, AIR 3.3
							 从指定应用程序域获取各个公共定义的所有完全限定名称。该定义可以是一个类、一个命名空间或一个函数的定义。可将从此方法返回的名称传递给 getDefinition() 方法，以获取实际定义的对象。
							 返回的矢量为 String 类型，每个字符串的格式为：package。path::definitionName
							 如果 definitionName 在顶级包中，则去除 package。path::。
							 以下面的类定义为例：
							 package my.Example
							 {
							 public class SampleClass extends Sprite
							 { }
							 }
							 此方法返回“my.Example::SampleClass”。
							 返回
							 Vector.<String> — 作为定义名称的无序字符串矢量。如果无定义，则是一个空矢量。返回 <String>。
							 引发
							 SecurityError — 此定义属于调用代码不具有访问权限的域。 
							 ************************************************************************************************/
							break;
						}
							
							//						LoaderContext设置applicationDomain=new ApplicationDomain(ApplicationDomain.currentDomain)，放置到父SWF所在的应用程序域的的子域
						case 3:
						{
							traceString(loaderInfo.applicationDomain.getDefinition(string));
							traceString(loader.contentLoaderInfo.applicationDomain.getDefinition(string));
							traceString(applicationDomain.getDefinition(string));
							
							try
							{
								traceString(ApplicationDomain.currentDomain.getDefinition(string));
							} 
							catch(error:Error) 
							{
								traceString(error);
								//								ReferenceError: Error #1065: 变量 SpriteObject 未定义。
							}
							break;
						}
							
							//						LoaderContext设置applicationDomain=new ApplicationDomain()，放置到父SWF所在的应用程序域的系统域
						case 4:
						{
							traceString(loaderInfo.applicationDomain.getDefinition(string));
							traceString(loader.contentLoaderInfo.applicationDomain.getDefinition(string));
							traceString(applicationDomain.getDefinition(string));
							
							try
							{
								traceString(ApplicationDomain.currentDomain.getDefinition(string));
							} 
							catch(error:Error) 
							{
								traceString(error);
								//								ReferenceError: Error #1065: 变量 SpriteObject 未定义。
							}
						}
					}
					break;
				}
					//				加载gif,jpg,png格式
				default:
				{
					traceString(loaderInfo.applicationDomain);
					
					tracePattern(loaderInfo.content);
					/************************************************************************************************
					 content属性	 
					 content:DisplayObject  [只读]
					 语言版本: 	ActionScript 3.0
					 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
					 与此 LoaderInfo 对象关联的已加载对象。
					 实现
					 public function get content():DisplayObject
					 引发
					 SecurityError — 如果由于安全限制的缘故而阻止访问此 API 的对象访问加载的对象。例如，如果 Loader 对象尝试访问 contentLoaderInfo.content 属性，但未向其授予访问加载的内容的安全权限，则可能会出现此情况。
					 有关安全性的详细信息，请参阅 Flash Player 开发人员中心主题：安全性。
					 ************************************************************************************************/
					
					try
					{
						traceString(loaderInfo.actionScriptVersion);
					} 
					catch(error:Error) 
					{
						traceString(error);
						//						Error: Error #2098: 正在加载的对象不是一个 .swf 文件，无法请求获取其 SWF 属性。
					}
					break;
				}
			}
		}
		
		private function httpStatusHandler(event:HTTPStatusEvent):void
		{
			traceString("httpStatusHandler: " + event);
		}
		
		private function initHandler(event:Event):void
		{
			traceString("initHandler: " + event);
		}
		
		private function ioErrorHandler(event:IOErrorEvent):void
		{
			traceString("ioErrorHandler: " + event);
		}
		
		private function openHandler(event:Event):void
		{
			traceString("openHandler: " + event);
		}
		
		private function progressHandler(event:ProgressEvent):void
		{
			traceString("progressHandler: bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);
		}
		
		private function unLoadHandler(event:Event):void
		{
			traceString("unLoadHandler: " + event);
		}
		
		private function clickHandler(event:MouseEvent):void
		{
			traceString("clickHandler: " + event);
			var loader:Loader = Loader(event.target);
			loader.unload();
		}
	}
}
/************************************************************************************************
 load()	方法	 
 public function load(request:URLRequest, context:LoaderContext = null):void
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 将 SWF、JPEG、渐进式 JPEG、非动画 GIF 或 PNG 文件加载到此 Loader 对象的子对象中。如果加载 GIF 动画文件，将仅显示第一帧。由于 Loader 对象可以只包含一个子级，因此，发出后续 load() 请求将终止先前的请求，如果仍然存在未处理的请求，则会开始新的加载。
 注意：在 AIR 1.5 和 Flash Player 10 中，所加载图像的最大宽度或高度为 8,191 像素，并且像素总数不能超过 16,777,215 像素。（因此，如果所加载图像的宽度为 8,191 像素，则其高度只能为 2,048 像素。）在 Flash Player 9 及早期版本和 AIR 1.1 及早期版本中，高度最大为 2,880 像素，宽度最大为 2,880 像素。
 加载到 Loader 对象中的 SWF 文件或图像会继承该 Loader 对象的父显示对象的位置、旋转和缩放属性。
 使用 unload() 方法可删除用此方法加载的影片或图像，或者取消正在进行中的加载操作。
 可以在包含 SWF 内容的 HTML 页中设置 object 和 embed 标签的 allowNetworking 参数，防止 SWF 文件使用此方法。
 iOS 注意事项
 在 iOS 上的 AIR 应用程序中，只能从应用程序包加载包含 ActionScript 的 SWF 文件。此限制针对的是任何 ActionScript，如为 ActionScript 导出类名称的资源。若想加载 SWF 文件，加载的 SWF 必须与父 SWF 使用相同的应用程序域，如下例所示：
 var loader:Loader = new Loader();
 var url:URLRequest = new URLRequest("swfs/SecondarySwf.swf");
 var loaderContext:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain, null);
 loader.load(url, loaderContext);
 此外，在 iOS 上，不能加载 SWF 文件，然后卸载它又重新加载。如果这样做，会发生错误。
 在 AIR 3.6 之前，无论是从应用程序包还是通过网络加载 SWF 文件，只能加载不包含 ActionScript 字节代码的 SWF 文件。若想使用包含 ActionScript 的外部 SWF 文件，可用一种替代方法，即创建一个 SWC 库，然后将其链接到您的主 SWF。
 当应用程序运行在 iOS 模拟器中（ipa-test-interpreter-simulator 或 ipa-debug-interpreter-simulator）或解释器模式下（ipa-test-interpreter 或 ipa-debug-interpreter）时，这些限制不适用。
 Loader 安全性
 使用此方法时，请考虑 Loader 类说明中描述的 Flash Player 安全模型。
 在 Flash Player 10 和更高版本中，如果使用包含上载（由 POST 体内的“content-disposition”标头中的“filename”参数表示）的 multipart Content-Type（例如“multipart/form-data”），则 POST 操作会受应用于上载的安全规则的约束：
 必须执行 POST 操作以响应用户启动的操作（如鼠标单击或按键）。
 如果 POST 操作是跨域的（POST 目标与发送 POST 请求的 SWF 文件不在同一台服务器上），则目标服务器必须提供一个允许跨域访问的 URL 策略文件。
 同样，对于任何 multipart Content-Type，语法必须有效（根据 RFC2046 标准）。如果语法无效，则 POST 操作受应用于上载的安全规则约束。
 有关安全性的详细信息，请参阅 Flash Player 开发人员中心主题：安全性。
 参数
 request:URLRequest — 要加载的 SWF、JPEG、GIF 或 PNG 文件的绝对或相对 URL。相对路径必须相对于主 SWF 文件。绝对 URL 必须包括协议引用，如 http:// 或 file:///。文件名不能包括磁盘驱动器指定。
 context:LoaderContext (default = null) — LoaderContext 对象，它具有定义下列内容的属性：
 是否应在加载对象时检查策略文件是否存在
 被加载的对象的 ApplicationDomain
 加载的对象的 SecurityDomain
 加载的图像对象的 ImageDecodingPolicy
 如果未指定 context 参数或者该参数引用了 null 对象，则已加载的内容将保留在自己的安全域中。
 仅限 iOS：当在 AIR for iOS 中调用 load() 方法时，LoaderContext 实例必须指定主应用程序域 (ApplicationDomain.currentDomain)。
 有关完整的详细信息，请参阅 LoaderContext 类中的属性说明。
 事件
 asyncError:AsyncErrorEvent — 如果 LoaderContext.requestedContentParent 属性已指定并且不可能将加载的内容作为子级添加到指定的 DisplayObjectContainer，则由 contentLoaderInfo 对象调度。如果加载的内容为 flash.display.AVM1Movie，或者 addChild() 调用 requestedContentParent 时引发了错误，则可能发生这种情况。
 complete:Event — 在文件完成加载时由 contentLoaderInfo 对象调度。complete 事件始终在 init 事件之后调度。
 httpStatus:HTTPStatusEvent — 在通过 HTTP 发出网络请求并且 Flash Player 可以检测到 HTTP 状态代码时，由 contentLoaderInfo 对象调度。
 init:Event — 在可以访问所加载的 SWF 文件的属性和方法时，由 contentLoaderInfo 对象调度。init 事件始终在 complete 事件之前。
 ioError:IOErrorEvent — 在发生会导致加载操作失败的输入或输出错误时，由 contentLoaderInfo 对象调度。
 open:Event — 在加载操作开始时，由 contentLoaderInfo 对象调度。
 progress:ProgressEvent — 在加载操作进行过程中接收到数据时，由 contentLoaderInfo 对象调度。
 securityError:SecurityErrorEvent — 当位于只能与本地文件系统内容交互的沙箱中的 SWF 文件尝试加载只能与远程内容交互的沙箱中的内容时（反之亦然），由 contentLoaderInfo 对象调度。
 securityError:SecurityErrorEvent — 如果 LoaderContext.requestedContentParent 属性已指定并且 LoaderContext.requestedContentParent 的安全沙箱不能访问加载的 SWF，则由 contentLoaderInfo 对象调度。
 unload:Event — 在删除所加载的对象时，由 contentLoaderInfo 对象调度。
 引发
 IOError — request 对象的 digest 属性不是 null。如果在加载 SWZ 文件（一个 Adobe 平台组件）时调用 URLLoader.load() 方法，仅应设置 URLRequest 对象的 digest 属性。
 SecurityError — LoaderContext.securityDomain 的值必须是 null 或 SecurityDomain.currentDomain。这说明您只能将被加载的媒体放置在其原始的安全沙箱或您自己的安全沙箱中（后者需要策略文件）。
 SecurityError — 本地 SWF 文件只能将 LoaderContext.securityDomain 设置为 null。不允许将非本地媒体导入到本地沙箱中，或者将其它本地媒体放置在除其原始沙箱以外的其它位置。
 SecurityError — 无法连接到常用的保留端口。有关已阻止的端口的完整列表，请参阅《ActionScript 3.0 开发人员指南》中的“限制网络 API”。
 SecurityError — 如果 context 参数的 applicationDomain 或 securityDomain 属性来自不允许的域。
 SecurityError — 如果本地 SWF 文件尝试使用 context 参数的 securityDomain 属性。
 IllegalOperationError — 如果 context 参数的 requestedContentParent 属性为 Loader。
 IllegalOperationError — 如果 LoaderContext.parameters 参数设置为非 null，并且具有不是字符串的某些值。
 IllegalOperationError — 在 iOS 上，如果应用程序试图加载的 SWF 文件使用的应用程序域与主应用程序域不同。
 IllegalOperationError — 在 iOS 上，如果应用程序试图重新加载曾经加载过、然后又卸载的 SWF。
 Error — 在 iOS 上，如果应用程序试图从外部应用程序包加载包含 ActionScript 代码的 SWF 文件。无法捕获此错误。应用程序屏幕上将出现一个对话框，标题为“未编译的 ActionScript”。在 AIR 3.6 之前，当试图加载的 SWF 文件包含 ActionScript 时，无论该文件是外部文件还是包括在应用程序包中，都会发生此错误。 
 ************************************************************************************************/