package lx.api.flash.system
{
	import flash.system.Capabilities;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Capabilities_static_attribute extends Output
	{
		override public function run():void
		{
			traceString("指定对用户的摄像头和麦克风的访问是已经通过管理方式禁止 (true) 还是允许 (false) : "+Capabilities.avHardwareDisable);
			traceString("指定当前 CPU 体系结构 : "+Capabilities.cpuArchitecture);
			traceString("指定系统是否支持与辅助功能通信，如果是，则为 true，否则为 false : "+Capabilities.hasAccessibility);
			traceString("指定系统是否有音频功能 : "+Capabilities.hasAudio);
			traceString("指定系统是否可以对音频流（如来自麦克风的音频流）进行编码，如果是，则为 true，否则为 false : "+Capabilities.hasAudioEncoder);
			traceString("指定系统是否支持嵌入的视频，如果是，则为 true，否则为 false : "+Capabilities.hasEmbeddedVideo);
			traceString("指定系统是否安装了输入法编辑器 (IME)，如果是，则为 true，否则为 false : "+Capabilities.hasIME);
			traceString("指定系统是否具有 MP3 解码器，如果是，则为 true，否则为 false : "+Capabilities.hasMP3);
			traceString("指定系统是否支持打印，如果是，则为 true，否则为 false : "+Capabilities.hasPrinting);
			traceString("指定系统是否支持开发通过 Flash Media Server 运行的屏幕广播应用程序，如果是，则为 true，否则为 false : "+Capabilities.hasScreenBroadcast);
			traceString("指定系统是否支持播放通过 Flash Media Server 运行的屏幕广播应用程序，如果是，则为 true，否则为 false : "+Capabilities.hasScreenPlayback);
			traceString("指定系统是否可以播放音频流，如果是，则为 true，否则为 false : "+Capabilities.hasStreamingAudio);
			traceString("指定系统是否可以播放视频流，如果是，则为 true，否则为 false : "+Capabilities.hasStreamingVideo);
			traceString("指定系统是否通过 NetConnection 支持本机 SSL 套接字，如果是，则为 true，否则为 false : "+Capabilities.hasTLS);
			traceString("指定系统是否可以对视频流（如来自 Web 摄像头的视频流）进行编码，如果是，则为 true，否则为 false : "+Capabilities.hasVideoEncoder);
			traceString("指定系统是特殊的调试版本 (true)，还是正式发布的版本 (false) : "+Capabilities.isDebugger);
			traceString("指定 Flash 运行时是否嵌入用 Acrobat 9.0 或更高版本打开的 PDF 文件中，如果是，则为 true，否则为 false : "+Capabilities.isEmbeddedInAcrobat);
			traceString("指定运行内容的系统的语言代码 : "+Capabilities.language);
			traceString("包含用户的首选用户界面语言相关信息的字符串数组，通过操作系统设置 : "+Capabilities.languages);
			traceString("指定对用户硬盘的读取权限是已经通过管理方式禁止 (true) 还是允许 (false) : "+Capabilities.localFileReadDisable);
			traceString("指定 Flash Player 的运行版本或 AIR 运行时的制造商，其格式为“Adobe OSName” : "+Capabilities.manufacturer);
			traceString("检索客户端硬件支持的最高 H.264 级 IDC : "+Capabilities.maxLevelIDC);
			traceString("指定当前的操作系统 : "+Capabilities.os);
			traceString("指定屏幕的像素高宽比 : "+Capabilities.pixelAspectRatio);
			traceString("指定运行时环境的类型 : "+Capabilities.playerType);
			traceString("指定屏幕的颜色 : "+Capabilities.screenColor);
			traceString("指定屏幕的每英寸点数 (dpi) 分辨率，以像素为单位 : "+Capabilities.screenDPI);
			traceString("指定屏幕的最大水平分辨率 : "+Capabilities.screenResolutionX);
			traceString("指定屏幕的最大垂直分辨率 : "+Capabilities.screenResolutionY);
			traceString("URL 编码的字符串，用于指定每个 Capabilities 属性的值 : "+Capabilities.serverString);
			traceString("指定系统是否支持运行 32 位的进程 : "+Capabilities.supports32BitProcesses);
			traceString("指定系统是否支持运行 64 位的进程 : "+Capabilities.supports64BitProcesses);
			traceString("指定支持的触摸屏的类型（如果有） : "+Capabilities.touchscreenType);
			traceString("指定 Flash Player 或 Adobe® AIR® 平台和版本信息 : "+Capabilities.version);
		}
	}
}