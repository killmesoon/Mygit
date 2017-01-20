package com.bjbr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjbr.mapper.ItemMapper;
import com.bjbr.pojo.ExamSuit;
import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryExample;
import com.bjbr.service.ItemService;
@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private ItemMapper itemMapper;
	
	
	@Override
	public List<ExamSuitCustom> queryItemList() throws Exception {
		List<ExamSuitCustom> lists = itemMapper.queryItemList();
		
		
		return lists;
	}


	@Override
	public List<ExamSuitCustom> queryItemDeatilList(QueryExample queryExample) throws Exception {
		
		
		
		
		return itemMapper.queryItemDeatilList(queryExample);
	}
	
	
	

	
}
