package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.User;

public interface UserMapper { 
	User findUserByIdAndPsw(@Param("userId") String userId,@Param("userPsw") String userPsw);
	
	User findUserById(String userId);
	
	int addNewUser(User user);
	
	int updateUserPswById(User user);

	List<User> findAllUsers();

	int updatePwdById(@Param("newPassword") String newPassword,@Param("userId") String userId);
}
