package com.bjbr.service;

import java.util.List;

import com.bjbr.pojo.ExamSuit;
import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryExample;


public interface ItemService {
	/**
	 * 查询用户列表
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuitCustom> queryItemList() throws Exception;
	/**
	 * 传入综合查询条件
	 * @param queryExample
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuitCustom> queryItemDeatilList(QueryExample queryExample)throws Exception;

}
