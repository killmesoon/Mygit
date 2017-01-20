package com.bjbr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjbr.mapper.ExamSuitMapper;
import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryVo;
import com.bjbr.pojo.SuitDetailCustom;
import com.bjbr.service.ExamSuitService;


@Service
public class ExamSuitServiceImpl implements ExamSuitService {

	  @Autowired
	  private ExamSuitMapper examSuitMapper;
	
	
	@Override
	public List<ExamSuitCustom> showItemList() throws Exception {
		// TODO Auto-generated method stub
		return examSuitMapper.showItemList();
	}


	@Override
	public List<SuitDetailCustom> showSuitItem(QueryVo queryVo) throws Exception {
		// TODO Auto-generated method stub
		return examSuitMapper.showSuitList(queryVo);
	}


	@Override
	public ExamSuitCustom showSuitBase(Integer examSuitId) throws Exception {
		
		
		return examSuitMapper.findBaseItem(examSuitId);
	}


	
	

  
	
	

}
