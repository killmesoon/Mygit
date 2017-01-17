package com.bjbr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjbr.pojo.QueryExample;
import com.bjbr.pojo.UserCustom;
import com.bjbr.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
    
	 @RequestMapping("/user/{key_id}")
	 @ResponseBody
	 public UserCustom findUserById(@PathVariable Integer key_id)throws Exception{
		 
		 QueryExample queryExample= new QueryExample();
		 UserCustom u = new UserCustom();
		 u.setKey_id(key_id);
		 queryExample.setUserCustom(u);
		 
		 UserCustom userCustom = userService.findUserById(queryExample);
		 
		 
		 return userCustom;
		 
	 }
	 
	 //登录注册
	 
	 
	
}
