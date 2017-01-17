package com.bjbr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bjbr.pojo.ExamSuit;

import com.bjbr.service.ItemService;

@Controller
public class ItemController {
   @Autowired
   private ItemService itemService;
	
	//读取项目列表
	@RequestMapping("/itemlist")
	public ModelAndView queryBasExamSuit()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<ExamSuit> itemlist = itemService.queryItemList();
		mv.addObject("itemlist", itemlist);
		
		
		mv.setViewName("precall");
		
		return mv;
	}
	
}
