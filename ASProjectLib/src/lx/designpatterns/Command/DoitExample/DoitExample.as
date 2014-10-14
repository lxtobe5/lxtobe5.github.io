package lx.designpatterns.Command.DoitExample
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class DoitExample extends Output
	{
		override public function run():void
		{
			var receiver:Receiver = new Receiver();
			//创建命令对象，设定它的接收者
			var command:ConcreteCommand = new ConcreteCommand(receiver);
			//			//创建请求者，把命令对象设置进去
			var invoker:Invoker = new Invoker(command);
			//			//执行方法
			traceString(invoker.exceuteCommand());
		}
	}
}