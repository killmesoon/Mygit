package com.bjbr.mapper;

import java.util.List;

import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryVo;
import com.bjbr.pojo.SuitDetailCustom;

public interface ExamSuitMapper {
	
	/**
	 * 查询套餐列表
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuitCustom> showItemList()throws Exception;
	
	
	/**
	 * 传入综合查询条件
	 * @param queryVo
	 * @return
	 * @throws Exception
	 */
	public List<SuitDetailCustom> showSuitList(QueryVo queryVo)throws Exception;
	
	/**
	 * 查询当前套餐信息
	 * @param examSuitId
	 * @return
	 * @throws Exception
	 */
	public ExamSuitCustom findBaseItem(Integer examSuitId)throws Exception;

}
