package com.bjbr.mapper;

import com.bjbr.pojo.QueryExample;
import com.bjbr.pojo.UserCustom;

public interface UserMapper {
	
	public UserCustom findUserById(QueryExample  queryExample)throws Exception;

}
