package lx.api.Object
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Object_attribute_constructor extends Output
	{
		override public function run():void
		{
			/**如果使用 class 关键字定义一个类，则该类的原型对象被赋予名为 constructor 的属性，
			 * 该属性具有对类对象的引用。该类的实例从原型对象继承该属性。例如，以下代码创建
			 * 一个新类 A，以及一个名为 myA 的类实例：*/
			traceString(A.prototype.constructor);      // [class A]
			traceString(A.prototype.constructor == A); // true
			var myA:A = new A();
			traceString(myA.constructor == A);         // true
			
			traceString(B.prototype.constructor);    // [class B]
			traceString(B.prototype.constructor == B); // true
			traceString(B.prototype.constructor.prototype.constructor == B);  //true
			var myB:B = new B();
			traceString(myB.constructor == B);   //true
		}
	}
}
dynamic class A {}
dynamic class B extends A {}
