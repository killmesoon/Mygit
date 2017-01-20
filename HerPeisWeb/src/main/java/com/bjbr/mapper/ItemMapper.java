package com.bjbr.mapper;

import java.util.List;

import com.bjbr.pojo.ExamSuit;
import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryExample;


public interface ItemMapper {
	/**
	 *  查询套餐
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuitCustom>  queryItemList() throws Exception;
	
	/**
	 * 传入综合查询条件
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuitCustom> queryItemDeatilList(QueryExample queryExample) throws Exception;

}
