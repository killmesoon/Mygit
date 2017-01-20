package com.bjbr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bjbr.pojo.ExamSuit;
import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryExample;
import com.bjbr.service.ItemService;

@Controller

public class ItemController {
   @Autowired
   private ItemService itemService;
	
	//读取项目列表
	@RequestMapping("/item")
	public ModelAndView queryBasExamSuit()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ExamSuitCustom> list = itemService.queryItemList();
		
		mv.addObject("list", list);
		mv.setViewName("precall");
		return  mv;
		
	}
	
	//单个项目详情的需求
	
	@RequestMapping("/itemdetail/{iD_ExamSuite}")
	public ModelAndView queryItemList(@PathVariable Integer iD_ExamSuite ) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//查询套餐详情 已经传来了套餐ID，iD_ExamSuite,根据这个查询每个套餐包含的项目
		QueryExample queryExample = new QueryExample();
		ExamSuitCustom ex = new ExamSuitCustom();
		ex.setID_ExamSuite(iD_ExamSuite);
		queryExample.setExamSuitCustom(ex);
		//某个套餐所有收费项目明细ID
		List<ExamSuitCustom> ItemDetailist = itemService.queryItemDeatilList(queryExample);
		
		
		//套餐详细列表
		mv.addObject("ItemDetailist", ItemDetailist);
		mv.setViewName("itemFee");
		return mv;
	}
	
	
	
}
