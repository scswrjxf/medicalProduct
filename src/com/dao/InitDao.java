package com.dao;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.pojo.User;  
public class InitDao {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {e.printStackTrace();}
	}
	private String URL = null;
	private String USER = null;
	private String PASSWORD = null;
	public InitDao() {
		try {
			InputStream in = InitDao.class.getClassLoader()
					.getResourceAsStream("database.properties");
			 Properties prop = new Properties();   
			 prop.load(in);
			 URL = prop.getProperty("url");
			 USER = prop.getProperty("user");
			 PASSWORD = prop.getProperty("password");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	} 

//	/**
//	 * 根据 role 查找对应用户列表
//	 * @param role
//	 * @return 用户列表
//	 */
//	public List<User> findUsersByRole(Integer role) {
//		List<User> users = new ArrayList<>();
//		Connection conn = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		try {
//			conn = DriverManager.getConnection(URL,USER,PASSWORD);
//			String sql = "select * from user where role=?";
//			ps = conn.prepareStatement(sql);
//			ps.setInt(1, role); 
//			rs = ps.executeQuery();
//			while(rs.next()) {
//				users.add(new User());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				rs.close();
//				ps.close();
//				conn.close();
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//		return users;
//	}
//	/**
//	 * 添加用户到数据库
//	 * @param user
//	 * @return
//	 */
//	public int addNewUser(User user) {
//		Connection conn = null;
//		PreparedStatement ps = null;
//		try {
//			conn = DriverManager.getConnection(URL,USER,PASSWORD);
//			String sql 
//				= "insert into bbs_user(userId,userPsw,role,userCreateDate,userAlice)" 
//						+" values(?,?,?,?,?)";
//			ps = conn.prepareStatement(sql);
//			ps.setString(1,user.getUserId());
//			ps.setString(2,user.getUserPsw()); 
//			ps.setObject(4,user.getUserCreateDate());
//			ps.setString(5,user.getUserAlice());
//			return ps.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				ps.close();
//				conn.close();
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
//		return 0;
//	} 
}

















