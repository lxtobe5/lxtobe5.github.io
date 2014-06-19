package lx.api.Object
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Object_static_attribute_prototype extends Output
	{
		override public function run():void
		{
			traceString(A.prototype is Object);      // true
			traceString(A.prototype is A);      // false
			traceString(A.prototype==Object);     // false
		}
	}
}
dynamic class A {}
/************************************************************************************************
 prototype	属性	 
public static var prototype:Object

语言版本: 	ActionScript 3.0
运行时版本: 	Flash Player 9, AIR 1.0, Flash Lite 4

对类或函数对象的原型对象的引用。prototype 属性会自动创建并附加到您创建的任何类或函数对象。此属性是静态的，因为它特定于您所创建的类或函数。例如，如果创建了一个类，则 prototype 属性的值由该类的所有实例共享，并且只能将其作为类属性进行访问。该类的实例不能直接访问 prototype 属性。

类的原型对象是一种特殊的类实例，它提供一种在类的所有实例中共享状态的机制。运行时，如果在类实例中找不到某属性，则会检查委托（该类的原型对象）中是否有该属性。如果原型对象不包含这种属性，此过程会继续在层次结构中连续的更高级别上对原型对象进行委托检查，直到 Flash 运行找到该属性为止。

注意：在 ActionScript 3.0 中，原型继承不是主要的继承机制。类继承可驱动类定义中固定属性的继承，它才是 ActionScript 3.0 中主要的继承机制。
 ************************************************************************************************/