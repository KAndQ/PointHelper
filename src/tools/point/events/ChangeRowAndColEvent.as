package tools.point.events 
{
	import flash.events.Event;
	
	/**
	 * 改变图片网格行和列事件
	 * @author Zhenyu Yao
	 */
	public class ChangeRowAndColEvent extends Event 
	{
		
////////////////////////////////////////////////////////////////////////////////////////////////////
// 事件类型定义
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/// 改变行和列
		public static const CHANGE_ROW_AND_COL : String		= "ChangeRowAndCol";

////////////////////////////////////////////////////////////////////////////////////////////////////
// Properties
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
		 * 行
		 * @author Zhenyu Yao
		 */
		public function get row() : int
		{
			return m_row;
		}
		
		/**
		 * 列
		 * @author Zhenyu Yao
		 */
		public function get col() : int
		{
			return m_col;
		}

////////////////////////////////////////////////////////////////////////////////////////////////////
// Public Functions
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		/**
		 * 构造函数
		 * @param	type 事件类型
		 * @param	row 行
		 * @param	col 列
		 * @author Zhenyu Yao
		 */
		public function ChangeRowAndColEvent(type : String, row : int, col : int) 
		{ 
			super(type);
			
			m_row = row;
			m_col = col;
		} 
		
////////////////////////////////////////////////////////////////////////////////////////////////////
// Override Functions
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		public override function clone():Event 
		{ 
			return new ChangeRowAndColEvent(type, row, col);
		} 
		
////////////////////////////////////////////////////////////////////////////////////////////////////
// Private vars
////////////////////////////////////////////////////////////////////////////////////////////////////
		
		private var m_row : int = 0;
		private var m_col : int = 0;
		
	}
	
}

////////////////////////////////////////////////////////////////////////////////////////////////////
// end file