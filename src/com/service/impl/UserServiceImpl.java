package com.service.impl;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service; 
import com.dao.UserMapper;
import com.pojo.User;
import com.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	@Qualifier("userMapper")
	private UserMapper userMapper; 
	// 根据账户和密码查找对应账户信息
	@Override
	public User findUserByIdAndPsw(String userId, String userPsw) {
		//对密码加密处理
		return userMapper.findUserByIdAndPsw(userId, DigestUtils.md5Hex(userPsw));
	}
	// 根据 userId 查找对应账户信息
	@Override
	public User findUserById(String userId) { 
		return userMapper.findUserById(userId);
	}
	// 添加新账户信息
	@Override
	public int addNewUser(User user) { 
		// 加密密码
		user.setUserPsw(DigestUtils.md5Hex(user.getUserPsw()));
		return userMapper.addNewUser(user);
	}
	// 根据 userId 修改 userPsw 
	@Override
	public int updateUserPswById(User user) {
		// 加密密码
		user.setUserPsw(DigestUtils.md5Hex(user.getUserPsw()));
		return userMapper.updateUserPswById(user);
	}

}
