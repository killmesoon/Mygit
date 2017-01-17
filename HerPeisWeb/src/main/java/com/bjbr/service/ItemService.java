package com.bjbr.service;

import java.util.List;

import com.bjbr.pojo.ExamSuit;


public interface ItemService {
	/**
	 * 查询用户列表
	 * @return
	 * @throws Exception
	 */
	public List<ExamSuit> queryItemList() throws Exception;

}
