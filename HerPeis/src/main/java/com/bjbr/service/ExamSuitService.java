package com.bjbr.service;

import java.util.List;

import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryVo;
import com.bjbr.pojo.SuitDetailCustom;

public interface ExamSuitService {
  

	/**
	 * 查询套餐列表
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuitCustom> showItemList() throws Exception;

	/**
	 * 查看套餐详情
	 * @param examSuitId
	 * @return
	 */
	public List<SuitDetailCustom> showSuitItem(QueryVo queryVo)throws Exception;
   
	/**
	 * 查询主套餐名称ID
	 * @param examSuitId
	 * @return
	 */
	public ExamSuitCustom showSuitBase(Integer examSuitId)throws Exception;
	
	
	   
}
