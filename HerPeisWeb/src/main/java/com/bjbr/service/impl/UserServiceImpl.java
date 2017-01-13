package com.bjbr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjbr.mapper.UserMapper;
import com.bjbr.pojo.QueryExample;
import com.bjbr.pojo.UserCustom;
import com.bjbr.service.UserService;

@Service
public class UserServiceImpl implements UserService {
   @Autowired
   private UserMapper userMapper;

@Override
public UserCustom findUserById(QueryExample queryExample) throws Exception {
	
	UserCustom userCustom = userMapper.findUserById(queryExample);
	
	return userCustom;
}
   
   
   
	
	
}
