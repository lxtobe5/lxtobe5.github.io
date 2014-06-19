package configs.apiconfig
{
	import lx.api.flash.geom.Matrix.Matrix_method_Matrix;
	import lx.api.flash.geom.Matrix.Matrix_method_concat;
	import lx.api.flash.geom.Matrix.Matrix_method_copyFrom;
	import lx.api.flash.geom.Matrix.Matrix_method_createBox;
	import lx.api.flash.geom.Matrix.Matrix_method_createGradientBox;
	import lx.api.flash.geom.Matrix.Matrix_method_deltaTransformPoint;
	import lx.api.flash.geom.Matrix.Matrix_method_identity;
	import lx.api.flash.geom.Matrix.Matrix_method_invert;
	import lx.api.flash.geom.Matrix.Matrix_method_rotate;
	import lx.api.flash.geom.Matrix.Matrix_method_scale;
	import lx.api.flash.geom.Matrix.Matrix_method_setTo;
	import lx.api.flash.geom.Matrix.Matrix_method_transformPoint;
	import lx.api.flash.geom.Matrix.Matrix_method_translate;

	public final dynamic class Matrix_aggregation extends Array
	{
		public function Matrix_aggregation()
		{
			super(
				Matrix_method_concat,
				Matrix_method_copyFrom,
				Matrix_method_createBox,
				Matrix_method_createGradientBox,
				Matrix_method_deltaTransformPoint,
				Matrix_method_identity,
				Matrix_method_invert,
				Matrix_method_Matrix,
				Matrix_method_rotate,
				Matrix_method_scale,
				Matrix_method_setTo,
				Matrix_method_transformPoint,
				Matrix_method_translate
				);
		}
	}
}