package lx.designpatterns.Proxy.ArrayExample
{
	import flash.utils.Proxy;
	import flash.utils.flash_proxy;
	
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public dynamic class ProxyArray extends Proxy
	{
		private var _item:Array;
		
		public function ProxyArray()
		{
			_item = [];
		}
		
		override flash_proxy function deleteProperty(name:*):Boolean
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::deleteProperty(name);
		}
		
		override flash_proxy function getDescendants(name:*):*
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::getDescendants(name);
		}
		
		override flash_proxy function hasProperty(name:*):Boolean
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::hasProperty(name);
		}
		
		override flash_proxy function isAttribute(name:*):Boolean
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::isAttribute(name);
		}
		
		override flash_proxy function nextName(index:int):String
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::nextName(index);
		}
		
		override flash_proxy function nextNameIndex(index:int):int
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::nextNameIndex(index);
		}
		
		override flash_proxy function nextValue(index:int):*
		{
			// TODO Auto Generated method stub
			return super.flash_proxy::nextValue(index);
		}
		
		override flash_proxy function callProperty(methodName:*, ... args):*
		{
			var res:*;
			switch (methodName.toString())
			{
				case 'clear':
					_item = new Array();
					break;
				case 'sum':
					var sum:Number = 0;
					for each (var i:* in _item)
				{
					// ignore non-numeric values
					if (!isNaN(i))
					{
						sum += i;
					}
				}
					res = sum;
					break;
				default:
					res = _item[methodName].apply(_item, args);
					break;
			}
			return res;
		}
		
		override flash_proxy function getProperty(name:*):*
		{
			return _item[name];
		}
		
		override flash_proxy function setProperty(name:*, value:*):void
		{
			_item[name] = value;
		}
	}
}