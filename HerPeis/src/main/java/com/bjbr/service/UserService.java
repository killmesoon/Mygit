package com.bjbr.service;


import com.bjbr.pojo.UserCustom;

public interface UserService {
	/**
	 * 验证用户登录的service
	 * @param userCustom
	 * @return
	 * @throws Exception
	 */
	public UserCustom checkUserLogin(UserCustom userCustom) throws Exception;

	/**
	 * 判断用户名是否存在
	 * 
	 * @param userCustom
	 */
	public UserCustom checkUserIsExist(UserCustom userCustom) throws Exception;

	
	/**
	 * 插入用户信息
	 * @param userCustom
	 */
	public void addUser(UserCustom userCustom)throws Exception;
	
	

}
