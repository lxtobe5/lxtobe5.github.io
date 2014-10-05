package lx.api.flash.desktop
{
	import flash.desktop.NativeApplication;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class NativeApplication_static_attribute extends Output
	{
		
		override public function run():void
		{
			traceString("NativeApplication 对象的单一实例 : "+NativeApplication.nativeApplication);
			traceString("表示当前平台是否支持 setAsDefaultApplication()、removeAsDefaultApplication() 和 isSetAsDefaultApplication() : "+NativeApplication.supportsDefaultApplication);
			traceString("表示 AIR 是否支持当前操作系统上的停靠式应用程序图标 : "+NativeApplication.supportsDockIcon);
			traceString("指定当前操作系统是否支持全局应用程序菜单栏 : "+NativeApplication.supportsMenu);
			traceString("表示当前平台是否支持 startAtLogin : "+NativeApplication.supportsStartAtLogin);
			traceString(" 指定 AIR 是否支持当前操作系统上的系统任务栏图标 : "+NativeApplication.supportsSystemTrayIcon);
		}
	}
}