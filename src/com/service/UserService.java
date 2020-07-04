package com.service;

import java.util.List;

import com.pojo.User;

public interface UserService { 
	User findUserByIdAndPsw(String userId, String userPsw);

	User findUserById(String userId);

	int addNewUser(User user);

	int updateUserPswById(User user);

	List<User> findAllUsers();

	int updatePwdById(String newPassword, String userId);
}
