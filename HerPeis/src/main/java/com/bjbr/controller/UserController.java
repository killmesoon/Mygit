package com.bjbr.controller;





import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjbr.pojo.UserCustom;
import com.bjbr.service.UserService;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	
	/**
	 * 首页
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/")
	public String  indexShow()throws Exception {
		
		
		
		return "index";
	}
	
	
    /**
     * 验证用户登录
     * @param user
     * @return
     * @throws Exception
     */
	@RequestMapping("/userLogin")
	public void userLogin(HttpServletRequest request, HttpServletResponse response,UserCustom userCustom) throws Exception{
		
		
		 
		
		UserCustom u = userService.checkUserLogin(userCustom);
		
		if(u!=null){
			//用户存在
			response.getWriter().println("success");
		}else{
			response.getWriter().println("faile");
		}
		
		
	}
	
	/**
	 * 跳转到登录界面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toLoginJsp")
	public String toLoginJsp() throws Exception {
		
		
		return "login";
	}
	
	/**
	 * 跳转到注册页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/toRegisterJsp")
	public String toRegisterJsp() throws Exception{
		
		
		return "register";
	}
	
	/**
	 * 注册用户 传递参数
	 * @param request
	 * @param response
	 * @param userCustom
	 * @throws Exception
	 */
	@RequestMapping("/registerUser")
	public void registerUser(HttpServletRequest request, HttpServletResponse response,UserCustom userCustom) throws Exception{
		
		
		/*
		 * 1、判断用户名是否存在
		 * 2、不存在的话插入，存在的话返回说明
		 */
		
		UserCustom u = userService.checkUserIsExist(userCustom);
		
		if(u!=null){
			//用户名存在
			response.getWriter().println("exist");
			
		}else{
			
			//存入数据库
			userService.addUser(userCustom);
			
		}
		
		
		
	}
	
	/**
	 * 不需要参数 ，直接查询所有 ITEM
	 * 
	 * @return
	 * @throws Exception
	 */
//	@RequestMapping("/showItemList")
//	public ModelAndView showItemList()throws Exception{
//		ModelAndView mv = new ModelAndView();
//		List<ExamSuitCustom> itemlist = userService.showItemList();
//		mv.addObject("itemlist", itemlist);
//		mv.setViewName("service");
//		
//		return mv;
//		
//	}
	
	
	
	
	
	
	
	
}
