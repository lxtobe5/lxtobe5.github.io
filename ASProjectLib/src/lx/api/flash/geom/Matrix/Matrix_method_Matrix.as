package lx.api.flash.geom.Matrix
{
	import flash.display.Sprite;
	import flash.geom.Matrix;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Matrix_method_Matrix extends Output
	{
		override public function run():void
		{
			var matrix:Matrix = new Matrix();
			traceString(matrix);
			//			(a=1, b=0, c=0, d=1, tx=0, ty=0)  默认
			
			var sprite:Sprite;
			var textField:TextField;
			var array:Array = [];
			var tfArg:Array = [];
			for (var i:int = 0; i < 7; i++) 
			{
				array.push(getSprite());
				array[i].x = 100;
				array[i].y = i*(array[i].height+20);
				tracePattern(array[i]);
				
				textField = new TextField();
				textField.autoSize = TextFieldAutoSize.LEFT;
				tfArg.push(textField);
				tfArg[i].x = 200;
				tracePattern(tfArg[i]);
			}
			
			sprite = array[0];
			matrix = new Matrix(1,0,0,1,100,0);
			sprite.transform.matrix = matrix;
			textField = tfArg[0];
			textField.y = sprite.y;
			textField.text = matrix.toString();
			
			sprite = array[1];
			matrix = new Matrix(-1,0,0,1,100,30);
			sprite.transform.matrix = matrix;
			textField = tfArg[1];
			textField.y = sprite.y;
			textField.text = matrix.toString();
			
			sprite = array[2];
			matrix = new Matrix(1,0,0,-1,100,90);
			sprite.transform.matrix = matrix;
			textField = tfArg[2];
			textField.y = sprite.y;
			textField.text = matrix.toString();
			
			sprite = array[3];
			matrix = new Matrix(2,0,0,1,100,120);
			sprite.transform.matrix = matrix;
			textField = tfArg[3];
			textField.y = sprite.y;
			textField.text = matrix.toString();
			
			sprite = array[4];
			matrix = new Matrix(1,0,0,2,100,150);
			sprite.transform.matrix = matrix;
			textField = tfArg[4];
			textField.y = sprite.y;
			textField.text = matrix.toString();
			
			sprite = array[5];
			var rad:Number = Math.PI/4; //弧度为单位的角度
			matrix = new Matrix(Math.cos(rad),Math.sin(rad),-Math.sin(rad),Math.cos(rad),100,230);
			sprite.transform.matrix = matrix;
			textField = tfArg[5];
			textField.y = sprite.y;
			textField.text = matrix.toString();
			
			sprite = array[6];
			var radX:Number = Math.PI/30;
			var radY:Number = Math.PI/60;
			matrix = new Matrix(1,Math.tan(radY),Math.tan(radX),1,100,270);
			sprite.transform.matrix = matrix;
			textField = tfArg[6];
			textField.y = sprite.y;
			textField.text = matrix.toString();
		}
		
		private function getSprite():Sprite
		{
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(0);
			sprite.graphics.drawRect(0,0,20,20);
			sprite.graphics.endFill();
			return sprite;
		}
	}
}
/************************************************************************************************
 Matrix()	构造函数
 public function Matrix(a:Number = 1, b:Number = 0, c:Number = 0, d:Number = 1, tx:Number = 0, ty:Number = 0)
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 使用指定参数创建新的 Matrix 对象。在矩阵表示法中，按如下方式组织属性：
 a c tx
 b d ty
 0 0 1
 以矩阵表示法表示的 Matrix 类属性显示 u、v 和 w 的假设值
 如果不向 new Matrix() 构造函数提供任何参数，它将创建一个具有以下值的恒等矩阵：
 a = 1 b = 0 c = 0 d = 1 tx = 0 ty = 0
 在矩阵表示法中，恒等矩阵如下所示：
 1 0 0
 0 1 0
 0 0 1
 以矩阵表示法表示的 Matrix 类属性
 参数
 a:Number (default = 1) — 缩放或旋转图像时影响像素沿 x 轴定位的值。
 b:Number (default = 0) — 旋转或倾斜图像时影响像素沿 y 轴定位的值。
 c:Number (default = 0) — 旋转或倾斜图像时影响像素沿 x 轴定位的值。
 d:Number (default = 1) — 缩放或旋转图像时影响像素沿 y 轴定位的值。
 tx:Number (default = 0) — 沿 x 轴平移每个点的距离。
 ty:Number (default = 0) — 沿 y 轴平移每个点的距离。 
 ************************************************************************************************/