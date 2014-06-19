package lx.api.flash.display.Graphics
{
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.utils.getTimer;
	
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public class Graphics_method_drawTriangles extends Output
	{
		// plane vertex coordinates (and t values) 
		public var x1:Number = -100,    y1:Number = -100,    z1:Number = 0,    t1:Number = 0; 
		public var x2:Number = 100,    y2:Number = -100,    z2:Number = 0,    t2:Number = 0; 
		public var x3:Number = 100,    y3:Number = 100,    z3:Number = 0,    t3:Number = 0; 
		public var x4:Number = -100,    y4:Number = 100,    z4:Number = 0,    t4:Number = 0; 
		public var focalLength:Number = 200;      
		// 2 triangles for 1 plane, indices will always be the same 
		public var indices:Vector.<int>; 
		public var container:Sprite; 
		public var bitmapData:BitmapData; // texture 
		public var loader:Loader; 
		
		override public function run():void
		{
			indices =  new Vector.<int>(); 
			indices.push(0,1,3, 1,2,3); 
			
			container = new Sprite(); // container to draw triangles in 
			container.x = 200; 
			container.y = 200; 
			tracePattern(container); 
			
			loader = new Loader(); 
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onImageLoaded);
			loader.load(new URLRequest(resource+"/google.png"));
		}
		
		override public function dispose():void
		{
			drawArea.removeEventListener(Event.ENTER_FRAME,rotatePlane);
		}
		
		private function onImageLoaded(event:Event):void
		{ 
			bitmapData = new BitmapData(loader.width,loader.height);
			bitmapData.draw(loader.content);
			// animate every frame 
			drawArea.addEventListener(Event.ENTER_FRAME, rotatePlane); 
		} 
		
		private function rotatePlane(event:Event):void 
		{ 
			// rotate vertices over time 
			var ticker:Number = getTimer()/400; 
			z2 = z3 = -(z1 = z4 = 100*Math.sin(ticker)); 
			x2 = x3 = -(x1 = x4 = 100*Math.cos(ticker)); 
			
			// calculate t values 
			t1 = focalLength/(focalLength + z1); 
			t2 = focalLength/(focalLength + z2); 
			t3 = focalLength/(focalLength + z3); 
			t4 = focalLength/(focalLength + z4); 
			
			// determine triangle vertices based on t values 
			var vertices:Vector.<Number> = new Vector.<Number>(); 
			vertices.push(x1*t1,y1*t1, x2*t2,y2*t2, x3*t3,y3*t3, x4*t4,y4*t4); 
			// set T values allowing perspective to change 
			// as each vertex moves around in z space 
			var uvtData:Vector.<Number> = new Vector.<Number>(); 
			uvtData.push(0,0,t1, 1,0,t2, 1,1,t3, 0,1,t4); 
			
			// draw 
			container.graphics.clear(); 
			container.graphics.beginBitmapFill(bitmapData); 
			container.graphics.drawTriangles(vertices, indices, uvtData); 
		}
	}
}
/************************************************************************************************
 drawTriangles	()	方法	 
 public function drawTriangles(vertices:Vector.<Number>, indices:Vector.<int> = null, uvtData:Vector.<Number> = null, culling:String = "none"):void
 
 语言版本: 	ActionScript 3.0
 运行时版本: 	Flash Player 10, AIR 1.5
 
 呈现一组三角形（通常用于扭曲位图），并为其指定三维外观。drawTriangles() 方法使用一组 (u,v) 坐标将当前填充或位图填充映射到三角形面。
 
 可以使用任何类型的填充，但如果填充有转换矩阵，则将忽略该转换矩阵。
 
 在使用位图填充时，uvtData 参数可改善纹理映射。
 
 参数
 vertices:Vector.<Number> — 由数字构成的矢量，其中的每一对数字将被视为一个坐标位置（一个 x, y 对）。vertices 参数是必需的。
 
 indices:Vector.<int> (default = null) — 一个由整数或索引构成的矢量，其中每三个索引定义一个三角形。如果 indexes 参数为 null，则每三个顶点（vertices 矢量中的 6 对 x,y）定义一个三角形。否则，每个索引将引用一个顶点，即 vertices 矢量中的一对数字。例如，indexes[1] 引用 (vertices[2], vertices[3])。indexes 参数是可选的，但 indexes 通常会减少提交的数据量和计算的数据量。
 
 uvtData:Vector.<Number> (default = null) — 由用于应用纹理映射的标准坐标构成的矢量。每个坐标引用用于填充的位图上的一个点。每个顶点必须具有一个 UV 或一个 UVT 坐标。对于 UV 坐标，(0,0) 是位图的左上角，(1,1) 是位图的右下角。
 
 如果此矢量的长度是 vertices 矢量长度的两倍，则使用标准坐标而不进行透视校正。
 
 如果此矢量的长度是 vertices 矢量长度的三倍，则将第三个坐标解释为“t”（即在视角空间中从视点到纹理的距离）。这有助于呈现引擎在三维中映射纹理时正确应用透视。
 
 如果 uvtData 参数为 null，则将应用普通填充规则（和任何填充类型）。
 
 culling:String (default = "none") — 指定是否呈现面向指定方向的三角形。此参数可防止呈现在当前视图中看不见的三角形。此参数可设置为由 TriangleCulling 类定义的任何值。 
 ************************************************************************************************/