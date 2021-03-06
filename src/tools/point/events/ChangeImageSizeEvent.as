package tools.point.events 
{
	import flash.events.Event;
	
	/**
	 * 改变图标大小事件
	 * @author Zhenyu Yao
	 */
	public class ChangeImageSizeEvent extends Event 
	{
		
////////////////////////////////////////////////////////////////////////////////////////////////////
// 事件类型定义
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/// 改变图片大小事件
		public static const CHANGE_SIZE : String = "ChangeSize";
		
		/// 固定图片的缩放比例大小
		public static const FIXED_SIZE : String = "FixedSize";

////////////////////////////////////////////////////////////////////////////////////////////////////
// Public Functions
////////////////////////////////////////////////////////////////////////////////////////////////////

		/**
		 * 图片改变的大小
		 * @author Zhenyu Yao
		 */
		public function get changedScale() : Number
		{
			return m_changedScale;
		}
		
		/**
		 * 构造函数
		 * @param	type 事件类型
		 * @param	changedScale 图片改变的大小
		 * @author Zhenyu Yao
		 */
		public function ChangeImageSizeEvent(type : String, changedScale : Number) 
		{ 
			super(type);
			m_changedScale = changedScale;
		} 
		
		/**
		 * 复制事件
		 * @return ChangeImageSizeEvent 事件
		 * @author Zhenyu Yao
		 */
		public override function clone() : Event 
		{ 
			return new ChangeImageSizeEvent(type, m_changedScale);
		} 
		
////////////////////////////////////////////////////////////////////////////////////////////////////
// Private vars
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		private var m_changedScale : Number = 0.0;
		
	}
	
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// end file