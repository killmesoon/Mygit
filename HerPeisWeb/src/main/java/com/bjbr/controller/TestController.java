package com.bjbr.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



import com.bjbr.service.ItemService;

@Controller
public class TestController {
	
	@Autowired
	
	private ItemService itemService;

	@RequestMapping("/")
	public String testSpringmvc(){
		
		
		
		return "index";
	}
	
	//登录界面
	@RequestMapping("/l")
	public String testLogin(){
		
		
		return "login";
	}
	
	//套餐界面
//	@RequestMapping("/list")
//	public String testList(){
//		
//		//去后台获取套餐详情
//		
//		
//		
//		
//		return "precall";
//	}
	
	
//	@RequestMapping("/testlist")
//	public ModelAndView testItemList() throws Exception{
//		ModelAndView mv = new ModelAndView();
//		List<ExamSuitCustom> itemlist = itemService.queryItemList();
//		mv.addObject("itemlist", itemlist);
//		for(ExamSuitCustom ex:itemlist){
//			
//			System.out.println(ex.getID_ExamSuite()+ex.getExamSuite_Name()+ex.getPrice()+ex.isSex());
//		}
//		
//		
//		mv.setViewName("precall");
//		return mv;
//	}
	
}
