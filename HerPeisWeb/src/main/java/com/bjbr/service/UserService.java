package com.bjbr.service;

import com.bjbr.pojo.QueryExample;
import com.bjbr.pojo.UserCustom;

public interface UserService {
	
	public UserCustom findUserById(QueryExample queryExample) throws Exception;

}
