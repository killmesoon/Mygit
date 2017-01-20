package com.bjbr.mapper;


import com.bjbr.pojo.UserCustom;

public interface UserMapper {
	/**
	 * 验证登录
	 * @param userCustom
	 * @return
	 * @throws Exception
	 */
	public UserCustom checkUserLogin(UserCustom userCustom) throws Exception;
	
	/**
	 * 验证用户名是否存在
	 * @param userCustom
	 * @return
	 * @throws Exception
	 */
	public UserCustom checkUserIsExist(UserCustom userCustom) throws Exception;
    
	/**
	 * 插入用户信息
	 * @param userCustom
	 */
	public void addUserCustom(UserCustom userCustom)throws Exception;
	
	
	

}
