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
	public List<ExamSuit> queryItemList() throws Exception {
		List<ExamSuit> list = itemMapper.queryItemList();
		
		
		return list;
	}


	@Override
	public List<ExamSuitCustom> queryItemDeatilList(QueryExample queryExample) throws Exception {
		
		
		
		
		return itemMapper.queryItemDeatilList(queryExample);
	}
	
	
	

	
}
