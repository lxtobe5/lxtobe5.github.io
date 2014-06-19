package lx.api.Array
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Array_method_splice extends Output
	{
		override public function run():void
		{
			var array:Array = ["spinach","green pepper","cilantro","onion","avocado"];
			
			var spliced:Array = array.splice(2, 2);
			traceString(array);
			//			spinach,green pepper,avocado 删除了索引2位置的两个元素cilantro和onion
			traceString(spliced);
			//			cilantro,onion 返回被删除的元素
			
			array.splice(1, 0, spliced);
			traceString(array);
			//			spinach,cilantro,onion,green pepper,avocado 在索引1的位置删除0个元素，并添加cilantro,onion
		}
		
	}
}
/************************************************************************************************
 splice()	方法	 
 AS3 function splice(startIndex:int, deleteCount:uint, ... values):Array
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 给数组添加元素以及从数组中删除元素。此方法会修改数组但不制作副本。
 注意：要在 Array 的子类中覆盖此方法，请使用 ...args 作为参数，如本例所示：
 public override function splice(...args) {
 // your statements here
 }
 参数
 startIndex:int — 一个整数，它指定数组中开始进行插入或删除的位置处的元素的索引。您可以用一个负整数来指定相对于数组结尾的位置（例如，-1 是数组的最后一个元素）。
 deleteCount:uint — 一个整数，它指定要删除的元素数量。该数量包括 startIndex 参数中指定的元素。如果没有为 deleteCount 参数指定值，则该方法将删除从 startIndex 元素到数组中最后一个元素的所有值。如果该参数的值为 0，则不删除任何元素。
 ... values — 用逗号分隔的一个或多个值的可选列表，此可选列表将插入 startIndex 参数中的指定位置处的数组中。如果插入的值是数组类型，则保持此数组的原样并将其作为单个元素插入。例如，如果您将长度为 3 的现有数组与另一长度为 3 的数组结合，则生成的数组将只包含 4 个元素。但是，其中的一个元素将是长度为 3 的一个数组。
 返回
 Array — 一个数组，包含从原始数组中删除的元素。
 ************************************************************************************************/