package lx.api.flash.utils.Timer
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Timer_method_Timer extends Output
	{
		private var _count:int;
		private var _time:int = 1000;
		private var _repeat:int = 5;
		private var _timer:Timer;
		override public function run():void
		{
			_timer = new Timer(_time, _repeat);
			_timer.addEventListener(TimerEvent.TIMER, onTime);
			_timer.addEventListener(TimerEvent.TIMER_COMPLETE,onTimeComplete);
			_timer.start();
		}
		
		private function onTime(e:TimerEvent):void
		{
			_count++;
			traceString(_time+"ms输出次数："+_count);
		}
		
		private function onTimeComplete(e:TimerEvent):void
		{
			_timer.removeEventListener(TimerEvent.TIMER,onTime);
			_timer.removeEventListener(TimerEvent.TIMER_COMPLETE,onTimeComplete);
			traceString("输出完毕");
		}
		
		override public function dispose():void
		{
			if(_timer.running)
			{
				_timer.stop();
			}
			_timer.removeEventListener(TimerEvent.TIMER,onTime);
			_timer.removeEventListener(TimerEvent.TIMER_COMPLETE,onTimeComplete);
		}
	}
}