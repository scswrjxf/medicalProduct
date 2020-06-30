package com.dao;

import org.apache.ibatis.annotations.Param;

import com.pojo.User;

public interface UserMapper { 
	User findUserByIdAndPsw(@Param("userId") String userId,@Param("userPsw") String userPsw);
	
	User findUserById(String userId);
	
	int addNewUser(User user);
}
