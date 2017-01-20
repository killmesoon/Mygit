package com.bjbr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.bjbr.pojo.ExamSuitCustom;
import com.bjbr.pojo.QueryVo;
import com.bjbr.pojo.SuitDetailCustom;
import com.bjbr.service.ExamSuitService;


@Controller

public class ExamSuitController {

	@Autowired
	private ExamSuitService examSuitService;
	
	
	/**
	 * 查询套餐列表
	 * @return
	 * @throws Exception
	 */
	
	@RequestMapping("/showItemList")
	public String showItemList(ModelMap model)throws Exception{
		
		List<ExamSuitCustom> itemlist = examSuitService.showItemList();
//		mv.addObject("itemlist", itemlist);
		model.addAttribute("itemlist", itemlist);
		
//		mv.setViewName("service");
		
		return "service";
		
	}
	
	
	
	
	
	/**
	 * 套餐详情页面
	 * @param examSuitId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/itemDetail/{examSuitId}")
	public ModelAndView showItemDetailList(@PathVariable Integer examSuitId) throws Exception{
		
//		System.out.println(itemlist);
		//根据体检号查询套餐
	  ExamSuitCustom exnew=	examSuitService.showSuitBase(examSuitId);
	     //通过ID查询套餐明细
		ModelAndView mv = new ModelAndView();
		QueryVo q = new QueryVo();
		ExamSuitCustom ex = new ExamSuitCustom();
		ex.setExamSuitId(examSuitId);
		q.setExamSuitCustom(ex);
//		examSuitService.showSuitItem();
		List<SuitDetailCustom> suitlist = examSuitService.showSuitItem(q);
		mv.addObject("suitlist", suitlist);
		mv.addObject("baseSuit", exnew);
		mv.setViewName("detail");
		return mv;
	}
	
	
	@RequestMapping("/detail")
	public String testJSP(){
		
		
		return "detail";
	}
	
	
	
	
}
