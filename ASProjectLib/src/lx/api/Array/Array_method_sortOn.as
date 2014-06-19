package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_sortOn extends Output
	{
		private var array:Array;
		override public function run():void
		{
			/********************************  TOP  数值数组  ********************************/
			array = [4,2,1,5,3,6,9,7,8,10,0,-1,11];
			
			traceString(copy.sortOn(Array.NUMERIC));
			traceString(copy.sortOn(Array.CASEINSENSITIVE));
			traceString(copy.sortOn(Array.DESCENDING));
			traceString(copy.sortOn(Array.UNIQUESORT));
			traceString(copy.sortOn(Array.RETURNINDEXEDARRAY));
			//			以上输出9,2,1,5,3,6,4,7,8,10,0,-1,11  数值数组不适用sortOn方法
			/********************************  BOTTOM  数值数组  ********************************/
			traceString('****************************');
			/********************************  TOP  对象数组  ********************************/
			array = [];
			array.push(new Vegetable(4,"lettuce", 1.49));
			array.push(new Vegetable(6,"spinach", 1.89));
			array.push(new Vegetable(3,"asparagus", 3.99));
			array.push(new Vegetable(1,"celery", 1.29));
			array.push(new Vegetable(5,"squash", 1.44));
			array.push(new Vegetable(2,"apple", 1.49));
			traceString(array);
			//			4-lettuce:1.49, 6-spinach:1.89, 3-asparagus:3.99, 1-celery:1.29, 5-squash:1.44, 2-apple:1.49
			
			traceString(array.sortOn('getName'));
			//			1-celery:1.29, 6-spinach:1.89, 3-asparagus:3.99, 4-lettuce:1.49, 5-squash:1.44, 2-apple:1.49  无法根据方法名排列
			
			traceString(array.sortOn('getPrice',Array.NUMERIC));
			//			4-lettuce:1.49, 6-spinach:1.89, 3-asparagus:3.99, 1-celery:1.29, 5-squash:1.44, 2-apple:1.49
			
			traceString(array.sortOn('id',Array.NUMERIC));
			//			1-celery:1.29, 2-apple:1.49, 3-asparagus:3.99, 4-lettuce:1.49, 5-squash:1.44, 6-spinach:1.89  升序排列
			
			traceString(array.sortOn('id',Array.NUMERIC|Array.DESCENDING));
			//			6-spinach:1.89, 5-squash:1.44, 4-lettuce:1.49, 3-asparagus:3.99, 2-apple:1.49, 1-celery:1.29  降序排列
			/********************************  BOTTOM  对象数组  ********************************/
		}
		
		private function get copy():Array
		{
			return array.slice();
		}
	}
}

class Vegetable
{
	public var id:int;
	private var name:String;
	private var price:Number;
	
	public function Vegetable(id:int, name:String, price:Number)
	{
		this.id = id;
		this.name = name;
		this.price = price;
	}
	
	public function getPrice():Number
	{
		return price;
	}
	
	public function getName():String
	{
		return name;
	}
	
	public function toString():String
	{
		return " " + id + "-" + name + ":" + price;
	}
}
/************************************************************************************************
 sortOn()	方法	 
 AS3 function sortOn(fieldName:Object, options:Object = null):Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 根据数组中的一个或多个字段对数组中的元素进行排序。数组应具有下列特性：
 该数组是索引数组，不是关联数组。
 该数组的每个元素都包含一个具有一个或多个属性的对象。
 所有这些对象都至少有一个公用属性，该属性的值可用于对该数组进行排序。这样的属性称为 field。
 如果您传递多个 fieldName 参数，则第一个字段表示主排序字段，第二个字段表示下一个排序字段，依此类推。Flash 根据 Unicode 值排序。（ASCII 是 Unicode 的一个子集。） 如果所比较的两个元素中均不包含 fieldName 参数中指定的字段，则认为将该字段设置为 undefined，在排序后的数组中将连续放置这些元素，不必遵循任何特定顺序。
 默认情况下，Array.sortOn() 按以下方式进行排序：
 排序区分大小写（Z 优先于 a）。
 按升序排序（a 优先于 b）。
 修改该数组以反映排序顺序；在排序后的数组中不按任何特定顺序连续放置具有相同排序字段的多个元素。
 数值字段按字符串方式进行排序，因此 100 优先于 99，因为 "1" 的字符串值比 "9" 的低。
 Flash Player 7 添加了 options 参数，您可以使用该参数覆盖默认排序行为。要对简单数组（例如，仅具有一个字段的数组）进行排序，或要指定一种 options 参数不支持的排序顺序，请使用 Array.sort()。
 要传递多个标志，请使用按位 OR (|) 运算符分隔它们：
 my_array.sortOn(someFieldName, Array.DESCENDING | Array.NUMERIC);
 Flash Player 8 添加了按多个字段进行排序时为每个字段指定不同的排序选项的功能。在 Flash Player 8 和更高版本中，options 参数接受排序选项的数组，以便每个排序选项对应于 fieldName 参数中的一个排序字段。下例使用降序排序对主排序字段 a 排序，使用数字排序对第二个排序字段 b 排序，使用不区分大小写的排序对第三个排序字段 c 排序：
 Array.sortOn (["a", "b", "c"], [Array.DESCENDING, Array.NUMERIC, Array.CASEINSENSITIVE]);
 注意：fieldName 和 options 数组必须具有相同数量的元素；否则，将忽略 options 数组。此外，Array.UNIQUESORT 和 Array.RETURNINDEXEDARRAY 选项只能用作数组中的第一个元素；否则，将忽略它们。
 参数
 fieldName:Object — 一个字符串，它标识要用作排序值的字段，或一个数组，其中的第一个元素表示主排序字段，第二个元素表示第二排序字段，依此类推。
 options:Object (default = null) — 所定义常数的一个或多个数字或名称，相互之间由 bitwise OR (|) 运算符隔开，它们可以更改排序行为。options 参数可接受以下值：
 Array.CASEINSENSITIVE 或 1
 Array.DESCENDING 或 2
 Array.UNIQUESORT 或 4
 Array.RETURNINDEXEDARRAY 或 8
 Array.NUMERIC 或 16
 如果您使用标志的字符串形式（例如，DESCENDING），而不是数字形式 (2)，则启用代码提示。
 返回
 Array — 返回值取决于您是否传递任何参数：
 如果您为 options 参数指定值 4 或 Array.UNIQUESORT，并且要排序的两个或多个元素具有相同的排序字段，则返回值 0 并且不修改数组。
 如果为 options 参数指定值 8 或 Array.RETURNINDEXEDARRAY，则返回反映排序结果的数组并且不修改数组。
 否则，不返回任何结果并修改该数组以反映排序顺序。
 ************************************************************************************************/