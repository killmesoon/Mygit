package com.bjbr.mapper;

import java.util.List;

import com.bjbr.pojo.ExamSuit;


public interface ItemMapper {
	/**
	 *  查询套餐
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuit>  queryItemList() throws Exception;

}
