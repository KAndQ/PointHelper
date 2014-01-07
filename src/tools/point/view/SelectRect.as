package tools.point.view 
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	/**
	 * 选择的矩形框
	 * @author Zhenyu Yao
	 */
	public final class SelectRect extends Sprite 
	{
		
		public function SelectRect() 
		{
			super();
			m_shape = new Shape();
			this.addChild(m_shape);
			
			m_points = new Vector.<Point>(4, true);
			m_points[0] = new Point();
			m_points[1] = new Point();
			m_points[2] = new Point();
			m_points[3] = new Point();
		}
		
		/// 矩形的坐标点
		public function get points() : Vector.<Point> 
		{
			return m_points.concat();
		}
		
		/**
		 * 更新鼠标位置, 绘制矩形
		 * @param	mousePosition 鼠标所在的位置
		 */
		public function updateRect(mousePosition : Point) : void
		{	
			var origin : Point = new Point(this.x, this.y);
			var target : Point = mousePosition;
			
			if (target.x >= origin.x && target.y <= origin.y)		// 第四象限
			{
				m_points[0] = new Point(origin.x, target.y);
				m_points[1] = new Point(origin.x, origin.y);
				m_points[2] = new Point(target.x, origin.y);
				m_points[3] = new Point(target.x, target.y);
				drawSelectRect(0, -(origin.y - target.y), target.x - origin.x, origin.y - target.y);
			}
			else if (target.x > origin.x && target.y > origin.y)	// 第一象限
			{
				m_points[0] = new Point(origin.x, origin.y);
				m_points[1] = new Point(origin.x, target.y);
				m_points[2] = new Point(target.x, target.y);
				m_points[3] = new Point(target.x, origin.y);
				drawSelectRect(0, 0, target.x - origin.x, target.y - origin.y);
			}
			else if (target.x < origin.x && target.y > origin.y)	// 第二象限
			{
				m_points[0] = new Point(target.x, origin.y);
				m_points[1] = new Point(target.x, target.y);
				m_points[2] = new Point(origin.x, target.y);
				m_points[3] = new Point(origin.x, origin.y);
				drawSelectRect(target.x - origin.x, 0, origin.x - target.x, target.y - origin.y);
			}
			else if (target.x < origin.x && target.y < origin.y)	// 第三象限
			{
				m_points[0] = new Point(target.x, target.y);
				m_points[1] = new Point(target.x, origin.y);
				m_points[2] = new Point(origin.x, origin.y);
				m_points[3] = new Point(origin.x, target.y);
				drawSelectRect(target.x - origin.x, target.y - origin.y, origin.x - target.x, origin.y - target.y);
			}
		}
		
		/**
		 * 绘制矩形
		 * @param	x 绘制的坐标 x
		 * @param	y 绘制的坐标 y
		 * @param	w 绘制的宽度
		 * @param	h 绘制的高度
		 */
		private function drawSelectRect(x : Number, y : Number, w : Number, h : Number) : void
		{
			m_shape.graphics.clear();
			m_shape.x = x;
			m_shape.y = y;
			m_shape.graphics.lineStyle(1, 0x00ffff, 1);
			m_shape.graphics.drawRect(0, 0, w, h);
		}
		
		private var m_points : Vector.<Point> = null;
		private var m_shape : Shape = null;
	}

}


