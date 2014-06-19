package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_sort extends Output
	{
		private var array:Array;
		
		override public function run():void
		{
			/********************************  TOP 数值数组  ********************************/
			array = [4,2,1,5,3,6,9,7,8,10,0,-1,11];
			
			traceString(copy.sort());
			//			-1,0,1,10,11,2,3,4,5,6,7,8,9 作为字符串按 Unicode 值排序，'10'的'1' 的Unicode值小于 '2'
			traceString(copy.sort(Array.CASEINSENSITIVE));
			//			-1,0,1,10,11,2,3,4,5,6,7,8,9 Unicode 值升序排列
			traceString(copy.sort(Array.DESCENDING));
			//			9,8,7,6,5,4,3,2,11,10,1,0,-1 Unicode 值降序排列
			traceString(copy.sort(Array.UNIQUESORT));
			//			-1,0,1,10,11,2,3,4,5,6,7,8,9 升序排列
			traceString(copy.sort(Array.RETURNINDEXEDARRAY));
			//			11,10,2,9,12,1,4,0,3,5,7,8,6 返回排序后的索引数值数组以反映排序结果，并且不修改数组
			traceString(copy.sort(Array.NUMERIC));
			//			-1,0,1,2,3,4,5,6,7,8,9,10,11 不是按字符串排列 按数值升序
			traceString(copy.sort(Array.CASEINSENSITIVE|Array.NUMERIC));
			//			-1,0,1,2,3,4,5,6,7,8,9,10,11 升序排列
			traceString(copy.sort(Array.DESCENDING|Array.NUMERIC));
			//			11,10,9,8,7,6,5,4,3,2,1,0,-1 降序排列
			/********************************  BOTTOM  数值数组  ********************************/
			traceString('****************************');
			/********************************  TOP  数字字符数组  ********************************/
			array = ['4','2','1','5','3','6','9','7','8','10','0','-1','11'];
			
			traceString(copy.sort());
			//			-1,0,1,10,11,2,3,4,5,6,7,8,9 作为字符串按 Unicode 值排序，'10'的'1' 的Unicode值小于 '2'
			traceString(copy.sort(Array.CASEINSENSITIVE));
			//			-1,0,1,10,11,2,3,4,5,6,7,8,9 Unicode 值升序排列
			traceString(copy.sort(Array.DESCENDING));
			//			9,8,7,6,5,4,3,2,11,10,1,0,-1 Unicode 值降序排列
			traceString(copy.sort(Array.UNIQUESORT));
			//			-1,0,1,10,11,2,3,4,5,6,7,8,9 升序排列
			traceString(copy.sort(Array.RETURNINDEXEDARRAY));
			//			11,10,2,9,12,1,4,0,3,5,7,8,6 返回排序后的索引数值数组以反映排序结果，并且不修改数组
			traceString(copy.sort(Array.NUMERIC));
			//			-1,0,1,2,3,4,5,6,7,8,9,10,11 不是按字符串排列 按数值升序
			traceString(copy.sort(Array.CASEINSENSITIVE|Array.NUMERIC));
			//			-1,0,1,2,3,4,5,6,7,8,9,10,11 升序排列
			traceString(copy.sort(Array.DESCENDING|Array.NUMERIC));
			//			11,10,9,8,7,6,5,4,3,2,1,0,-1 降序排列
			/********************************  BOTTOM  数字字符数组  ********************************/
			traceString('****************************');
			/********************************  TOP  字符数组  ********************************/
			array = ['b','A','c','B','a','C'];
			
			traceString(copy.sort());
			//			A,B,C,a,b,c 作为字符串按 Unicode 值升序排序
			traceString(copy.sort(Array.CASEINSENSITIVE));
			//			a,A,B,b,c,C 不区分大小写的排序
			traceString(copy.sort(Array.DESCENDING));
			//			c,b,a,C,B,A 作为字符串按 Unicode 值降序排序
			traceString(copy.sort(Array.UNIQUESORT));
			//			A,B,C,a,b,c 作为字符串按 Unicode 值升序排序
			traceString(copy.sort(Array.RETURNINDEXEDARRAY));
			//			1,3,5,4,0,2 返回元素在原数组的索引值，字符按 Unicode 值升序排列
			try
			{
				traceString(copy.sort(Array.NUMERIC));
				//				尝试将任何非数字值转换为整数。如果转换失败，运行时将引发错误。
			} 
			catch(error:Error) 
			{
				traceString(error);
				//				TypeError: Error #1034: 强制转换类型失败:无法将 "C" 转换为 Number。
			}
			/********************************  BOTTOM  字符数组  ********************************/
			traceString('****************************');
			/********************************  TOP  有重复元素的数组  ********************************/
			array = [2,1,3,'3','1','2'];
			
			traceString(copy.sort(Array.UNIQUESORT));
			//			0 任何两个要排序的元素或字段的值相同，唯一排序选项就会终止排序
			traceString(copy);
			//			2,1,3,3,1,2 终止排序，并且不修改数组
			
			array = ['a','b','a'];
			
			traceString(copy.sort(Array.UNIQUESORT));
			//			0 任何两个要排序的元素或字段的值相同，唯一排序选项就会终止排序
			traceString(copy);
			//			a,b,a 终止排序，并且不修改数组
			/********************************  BOTTOM  有重复元素的数组  ********************************/
			traceString('****************************');
			/********************************  TOP  关联数组  ********************************/
			array = [];
			array['a'] = 1;
			array['b'] = 2;
			array['c'] = 3;
			traceString(copy);
			//			(空) 关联数组不适用排序
			/********************************  BOTTOM  关联数组  ********************************/
			traceString('****************************');
			/********************************  TOP  对象数组  ********************************/
			array = [];
			array.push(new Vegetable("lettuce", 1.49));
			array.push(new Vegetable("spinach", 1.89));
			array.push(new Vegetable("asparagus", 3.99));
			array.push(new Vegetable("celery", 1.29));
			array.push(new Vegetable("squash", 1.44));
			array.push(new Vegetable("apple", 1.49));
			traceString(array);
			//			lettuce:1.49, spinach:1.89, asparagus:3.99, celery:1.29, squash:1.44, apple:1.49
			
			traceString(array.sort(sortOnPrice));
			//			 celery:1.29, squash:1.44, lettuce:1.49, apple:1.49, spinach:1.89, asparagus:3.99 按价格升序排列
			
			traceString(array.sort(sortOnName,Array.DESCENDING));
			//			spinach:1.89, squash:1.44, lettuce:1.49, celery:1.29, apple:1.49, asparagus:3.99 按名字降序排列
			/********************************  BOTTOM  对象数组  ********************************/
		}
		
		private function sortOnName(a:Vegetable, b:Vegetable):int
		{
			var aName:String = a.getName();
			var bName:String = b.getName();
			
			if(aName.charCodeAt() > bName.charCodeAt())
			{
				return 1;
			}else if(aName.charCodeAt() < bName.charCodeAt())
			{
				return -1;
			}else
			{
				return 0;
			}
		}
		
		private function sortOnPrice(a:Vegetable, b:Vegetable):Number
		{
			var aPrice:Number = a.getPrice();
			var bPrice:Number = b.getPrice();
			
			if(aPrice > bPrice)
			{
				return 1;
				//				若返回值为正，则表示 A 在排序后的序列中出现在 B 之后。
			} else if(aPrice < bPrice)
			{
				return -1;
				//				若返回值为负，则表示 A 在排序后的序列中出现在 B 之前。
			} else
			{
				return 0;
				//				若返回值为 0，则表示 A 和 B 具有相同的排序顺序。
			}
		}
		
		private function get copy():Array
		{
			return array.slice();
		}
	}
}

class Vegetable
{
	private var name:String;
	private var price:Number;
	
	public function Vegetable(name:String, price:Number)
	{
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
		return " " + name + ":" + price;
	}
}
/************************************************************************************************
 sort()	方法	 
 AS3 function sort(... args):Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 对数组中的元素进行排序。此方法按 Unicode 值排序。（ASCII 是 Unicode 的一个子集。）
 默认情况下，Array.sort() 按以下方式进行排序：
 排序区分大小写（Z 优先于 a）。
 按升序排序（a 优先于 b）。
 修改该数组以反映排序顺序；在排序后的数组中不按任何特定顺序连续放置具有相同排序字段的多个元素。
 元素无论属于何种数据类型，都作为字符串进行排序，所以 100 在 99 之前，这是因为 "1" 的字符串值小于 "9" 的字符串值。
 如果要使用与默认设置不同的设置对数组进行排序，可以使用 ...args 参数说明中 sortOptions 部分所描述的某种排序选项，也可以创建自定义函数来进行排序。如果创建自定义函数，请调用 sort() 方法，并将自定义函数的名称作为第一个参数 (compareFunction)。
 参数
 ... args — 指定一个比较函数和确定排序行为的一个或多个值的参数。
 此方法使用语法和参数顺序 Array.sort(compareFunction, sortOptions)，其参数定义如下：
 compareFunction - 一个用来确定数组元素排序顺序的比较函数。此参数是可选的。比较函数应该用两个参数进行比较。给定元素 A 和 B，compareFunction 的结果可以具有负值、0 或正值：
 若返回值为负，则表示 A 在排序后的序列中出现在 B 之前。
 若返回值为 0，则表示 A 和 B 具有相同的排序顺序。
 若返回值为正，则表示 A 在排序后的序列中出现在 B 之后。
 sortOptions - 一个或多个数字或定义的常数，相互之间由 |（按位 OR）运算符隔开，它们将更改排序的默认行为。此参数是可选的。下面是 sortOptions 可接受的值：
 1 或 Array.CASEINSENSITIVE
 2 或 Array.DESCENDING
 4 或 Array.UNIQUESORT
 8 或 Array.RETURNINDEXEDARRAY
 16 或 Array.NUMERIC
 有关详细信息，请参阅 Array.sortOn() 方法。
 返回
 Array — 返回值取决于您是否传递任何参数，如以下列表中所述：
 如果为 ...args 参数的 sortOptions 变量指定值 4 或 Array.UNIQUESORT，并且所排序的两个或更多个元素具有相同的排序字段，则 Flash 返回值 0 并且不修改数组。
 如果为 ...args 参数的 sortOptions 变量指定值 8 或 Array.RETURNINDEXEDARRAY，则 Flash 返回排序后的索引数值数组以反映排序结果，并且不修改数组。
 否则，Flash 不返回任何内容并修改该数组以反映排序顺序。
 ************************************************************************************************/

/************************************************************************************************
 CASEINSENSITIVE常量
 public static const CASEINSENSITIVE:uint = 1
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 指定 Array 类排序方法为不区分大小写的排序。您可以对 sort() 方法或 sortOn() 方法中的 options 参数使用此常数。
 此常数的值为 1。
 ************************************************************************************************/

/************************************************************************************************
 DESCENDING常量	 
 public static const DESCENDING:uint = 2
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 指定 Array 类排序方法为降序排序。您可以对 sort() 方法或 sortOn() 方法中的 options 参数使用此常数。
 此常数的值为 2。
 ************************************************************************************************/

/************************************************************************************************
 UNIQUESORT常量	 
 public static const UNIQUESORT:uint = 4
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 指定 Array 类排序方法的唯一排序要求。您可以对 sort() 方法或 sortOn() 方法中的 options 参数使用此常数。如果任何两个要排序的元素或字段的值相同，唯一排序选项就会终止排序。
 此常数的值为 4。
 ************************************************************************************************/

/************************************************************************************************
 RETURNINDEXEDARRAY常量	 
 public static const RETURNINDEXEDARRAY:uint = 8
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 指定排序返回的数组包含数组索引。可以将此常数用于 sort() 或 sortOn() 方法中的 options 参数，以便您能够访问数组元素的多个视图，同时又不修改原始数组。
 此常数的值为 8。
 ************************************************************************************************/

/************************************************************************************************
 NUMERIC常量	 
 public static const NUMERIC:uint = 16
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 指定 Array 类排序方法为数值（而不是字符串）排序。在 options 参数中包括此常数会导致 sort() 方法和 sortOn() 方法将数字作为数值排序，而不是作为数字字符的字符串排序。如果不使用 NUMERIC 常数，则排序将每个数组元素视为一个字符串，并且按照 Unicode 顺序生成结果。
 例如，以值为 [2005, 7, 35] 的数组为例，如果 NUMERIC 常数未包括在 options 参数中，则排序后的数组为 [2005, 35, 7]，但如果包括了 NUMERIC 常数，则排序后的数组为 [7, 35, 2005]。
 此常数仅应用于数组中的数字；不应用于包含数值数据（如 ["23", "5"]）的字符串。
 此常数的值为 16。
 ************************************************************************************************/