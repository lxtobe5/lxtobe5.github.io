package 
{
	import configs.apiconfig.Array_aggregation;
	import configs.apiconfig.BitmapData_aggregation;
	import configs.apiconfig.Function_aggregation;
	import configs.apiconfig.Graphics_aggregation;
	import configs.apiconfig.Matrix_aggregation;
	import configs.apiconfig.Object_aggregation;
	import configs.apiconfig.Shader_aggregation;
	import configs.apiconfig.String_aggregation;
	import configs.apiconfig.XML_aggregation;
	import configs.flexcomponentconfig.ApplicationControlBar_aggregation;
	import configs.flexcomponentconfig.DataGridExtend_aggregation;
	import configs.flexcomponentconfig.DataGrid_aggregation;
	import configs.flexcomponentconfig.FileSystemTree_aggregation;

	/**
	 * 配置
	 * @author Liuxin
	 * 
	 */	
	 public class ClassConfig
	{
		private var _arg:Array;
		public function ClassConfig()
		{
			_arg = [
				Array_aggregation,
				BitmapData_aggregation,
				Function_aggregation,
				Graphics_aggregation,
				Matrix_aggregation,
				Object_aggregation,
				Shader_aggregation,
				String_aggregation,
				XML_aggregation
				];
			
			_arg.push(
				ApplicationControlBar_aggregation,
				DataGrid_aggregation,
				DataGridExtend_aggregation,
				FileSystemTree_aggregation
				);
		}
		
		public function get configList():Array
		{
			var list:Array = [];
			for (var i:int = 0; i < _arg.length; i++) 
			{
				list = list.concat(new _arg[i]());
			}
			return list;
		}
	}
}