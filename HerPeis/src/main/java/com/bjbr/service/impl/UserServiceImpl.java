package com.bjbr.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjbr.mapper.UserMapper;

import com.bjbr.pojo.UserCustom;
import com.bjbr.service.UserService;

@Service
public class UserServiceImpl implements UserService {
         
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public UserCustom checkUserLogin(UserCustom userCustom) throws Exception {
		
		
		
		
		return userMapper.checkUserLogin(userCustom);
	}

	@Override
	public UserCustom checkUserIsExist(UserCustom userCustom) throws Exception {
		
		return userMapper.checkUserIsExist(userCustom);
		
	}

	@Override
	public void addUser(UserCustom userCustom) throws Exception {
		
		userMapper.addUserCustom(userCustom);
		
		
	}

	

	
	
}
