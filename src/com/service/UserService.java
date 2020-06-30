package com.service;

import com.pojo.User;

public interface UserService { 
	User findUserByIdAndPsw(String userId, String userPsw);

	User findUserById(String userId);

	int addNewUser(User user);
}
