package lx.api.flash.geom.ColorTransform
{
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class ColorTransform_method_ColorTransform extends Output
	{
		override public function run():void
		{
			var sprite:Sprite;
			var array:Array = [];
			var txtArg:Array = [];
			var colorTransform:ColorTransform;
			var colorArg:Array = [0,0xff0000,0xff0000,0xff0000,0x00ff00,0x00ff00,0x00ff00,0x0000ff,0x0000ff,0x0000ff,0xff0000,0xff0000,0xff0000,0x00ff00,0x00ff00,0x00ff00,0x0000ff,0x0000ff,0x0000ff,0];
			for (var i:int = 0; i < colorArg.length; i++) 
			{
				sprite = getSprite(colorArg[i]);
				array.push(sprite);
				sprite.y = i*(sprite.height+4);
				tracePattern(sprite);
				txtArg.push(new TextField());
				txtArg[i].x = 30;
				txtArg[i].y = sprite.y;
				txtArg[i].autoSize = TextFieldAutoSize.LEFT;
				tracePattern(txtArg[i]);
			}
			
			//			alphaMultiplier为0.5  透明值减半
			sprite = array[0];
			colorTransform = new ColorTransform(1,1,1,0.5);
			sprite.transform.colorTransform = colorTransform;
			txtArg[0].text = colorArg[0].toString(16)+' : '+colorTransform+'透明值减半';
			
			//			redMultiplier为0  红色图形去掉红色通道
			sprite = array[1];
			colorTransform = new ColorTransform(0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[1].text = colorArg[1].toString(16)+' : '+colorTransform+'红色图形去掉红色通道';
			
			//			greenMultiplier为0  红色图形去掉绿色通道
			sprite = array[2];
			colorTransform = new ColorTransform(1,0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[2].text = colorArg[2].toString(16)+' : '+colorTransform+'红色图形去掉绿色通道';
			
			//			blueMultiplier为0  红色图形去掉蓝色通道
			sprite = array[3];
			colorTransform = new ColorTransform(1,1,0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[3].text = colorArg[2].toString(16)+' : '+colorTransform+'红色图形去掉蓝色通道';
			
			//			redMultiplier为0  绿色图形去掉红色通道
			sprite = array[4];
			colorTransform = new ColorTransform(0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[4].text = colorArg[4].toString(16)+' : '+colorTransform+'绿色图形去掉红色通道';
			
			//			greenMultiplier为0  绿色图形去掉绿色通道
			sprite = array[5];
			colorTransform = new ColorTransform(1,0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[5].text = colorArg[5].toString(16)+' : '+colorTransform+'绿色图形去掉绿色通道';
			
			//			blueMultiplier为0  绿色图形去掉蓝色通道
			sprite = array[6];
			colorTransform = new ColorTransform(1,1,0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[6].text = colorArg[6].toString(16)+' : '+colorTransform+'绿色图形去掉蓝色通道';
			
			//			redMultiplier为0  蓝色图形去掉红色通道
			sprite = array[7];
			colorTransform = new ColorTransform(0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[7].text = colorArg[7].toString(16)+' : '+colorTransform+'蓝色图形去掉红色通道';
			
			//			greenMultiplier为0  蓝色图形去掉绿色通道
			sprite = array[8];
			colorTransform = new ColorTransform(1,0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[8].text = colorArg[8].toString(16)+' : '+colorTransform+'蓝色图形去掉绿色通道';
			
			//			blueMultiplier为0  蓝色图形去掉蓝色通道
			sprite = array[9];
			colorTransform = new ColorTransform(1,1,0);
			sprite.transform.colorTransform = colorTransform;
			txtArg[9].text = colorArg[9].toString(16)+' : '+colorTransform+'蓝色图形去掉蓝色通道';
			
			//			redOffset为255  红色图形偏移红色通道
			sprite = array[10];
			colorTransform = new ColorTransform(1,1,1,1,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[10].text = colorArg[10].toString(16)+' : '+colorTransform+'红色图形偏移红色通道';
			
			//			greenOffset为255  红色图形偏移绿色通道
			sprite = array[11];
			colorTransform = new ColorTransform(1,1,1,1,0,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[11].text = colorArg[11].toString(16)+' : '+colorTransform+'红色图形偏移绿色通道';
			
			//			blueOffset为255 红色图形偏移蓝色通道
			sprite = array[12];
			colorTransform = new ColorTransform(1,1,1,1,0,0,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[12].text = colorArg[12].toString(16)+' : '+colorTransform+'红色图形偏移蓝色通道';
			
			//			redOffset为255 绿色图形偏移红色通道
			sprite = array[13];
			colorTransform = new ColorTransform(1,1,1,1,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[13].text = colorArg[13].toString(16)+' : '+colorTransform+'绿色图形偏移红色通道';
			
			//			greenOffset为255 绿色图形偏移绿色通道
			sprite = array[14];
			colorTransform = new ColorTransform(1,1,1,1,0,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[14].text = colorArg[14].toString(16)+' : '+colorTransform+'绿色图形偏移绿色通道';
			
			//			blueOffset为255 绿色图形偏移蓝色通道
			sprite = array[15];
			colorTransform = new ColorTransform(1,1,1,1,0,0,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[15].text = colorArg[15].toString(16)+' : '+colorTransform+'绿色图形偏移蓝色通道';
			
			//			redOffset为255 蓝色图形偏移红色通道
			sprite = array[16];
			colorTransform = new ColorTransform(1,1,1,1,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[16].text = colorArg[16].toString(16)+' : '+colorTransform+'蓝色图形偏移红色通道';
			
			//			greenOffset为255 蓝色图形偏移绿色通道
			sprite = array[17];
			colorTransform = new ColorTransform(1,1,1,1,0,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[17].text = colorArg[17].toString(16)+' : '+colorTransform+'蓝色图形偏移绿色通道';
			
			//			blueOffset为255 蓝色图形偏移蓝色通道
			sprite = array[18];
			colorTransform = new ColorTransform(1,1,1,1,0,0,255);
			sprite.transform.colorTransform = colorTransform;
			txtArg[18].text = colorArg[18].toString(16)+' : '+colorTransform+'蓝色图形偏移蓝色通道';
			
			//			alphaOffset为-128 透明值减半
			sprite = array[19];
			colorTransform = new ColorTransform(1,1,1,1,0,0,0,-128);
			sprite.transform.colorTransform = colorTransform;
			txtArg[19].text = colorArg[19].toString(16)+' : '+colorTransform+'透明值减半';
		}
		
		private function getSprite(color:uint):Sprite
		{
			var sprite:Sprite = new Sprite();
			sprite.graphics.beginFill(color);
			sprite.graphics.drawRect(0,0,20,20);
			return sprite;
		}
	}
}
/************************************************************************************************
 ColorTransform()	构造函数
 public function ColorTransform(redMultiplier:Number = 1.0, greenMultiplier:Number = 1.0, blueMultiplier:Number = 1.0, alphaMultiplier:Number = 1.0, redOffset:Number = 0, greenOffset:Number = 0, blueOffset:Number = 0, alphaOffset:Number = 0)
 语言版本: 	ActionScript 3.0
 运行时版本: 	AIR 1.0, Flash Player 9, Flash Lite 4
 用指定的颜色通道值和 Alpha 值为显示对象创建 ColorTransform 对象。
 参数
 redMultiplier:Number (default = 1.0) — 红色乘数的值，在 0 到 1 范围内。
 greenMultiplier:Number (default = 1.0) — 绿色乘数的值，在 0 到 1 范围内。
 blueMultiplier:Number (default = 1.0) — 蓝色乘数的值，在 0 到 1 范围内。
 alphaMultiplier:Number (default = 1.0) — Alpha 透明度乘数的值，在 0 到 1 范围内。
 redOffset:Number (default = 0) — 红色通道值的偏移量，在 -255 到 255 范围内。
 greenOffset:Number (default = 0) — 绿色通道值的偏移量，在 -255 到 255 范围内。
 blueOffset:Number (default = 0) — 蓝色通道值的偏移量，在 -255 到 255 范围内。
 alphaOffset:Number (default = 0) — Alpha 透明度通道值的偏移量，在 -255 到 255 范围内。 
 ************************************************************************************************/