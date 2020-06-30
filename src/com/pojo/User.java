package com.pojo;

import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class User { 
	@NotBlank(message="账户不能为空")
	@Length(min=5,message="账户字符不能少于5个")
	private String userId; 
	@NotBlank(message="密码不能为空")
	@Length(min=5,message="密码字符不能少于5个")
	private String userPsw; 
	private String userAlice;
	private String userEmail;
	private String userSex;
	private String userPhoto;
	private Date userCreateDate;
	private Integer role;
	private Integer isPass;
	public User() {
		super(); 
	}
	public User(String userId, String userPsw, String userAlice, String userEmail, String userSex, String userPhoto,
			Date userCreateDate, Integer role, Integer isPass) {
		super();
		this.userId = userId;
		this.userPsw = userPsw;
		this.userAlice = userAlice;
		this.userEmail = userEmail;
		this.userSex = userSex;
		this.userPhoto = userPhoto;
		this.userCreateDate = userCreateDate;
		this.role = role;
		this.isPass = isPass;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPsw() {
		return userPsw;
	}
	public void setUserPsw(String userPsw) {
		this.userPsw = userPsw;
	}
	public String getUserAlice() {
		return userAlice;
	}
	public void setUserAlice(String userAlice) {
		this.userAlice = userAlice;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserPhoto() {
		return userPhoto;
	}
	public void setUserPhoto(String userPhoto) {
		this.userPhoto = userPhoto;
	}
	public Date getUserCreateDate() {
		return userCreateDate;
	}
	public void setUserCreateDate(Date userCreateDate) {
		this.userCreateDate = userCreateDate;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
	}
	public Integer getIsPass() {
		return isPass;
	}
	public void setIsPass(Integer isPass) {
		this.isPass = isPass;
	} 
}
