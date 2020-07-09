package com.pojo;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class Touch {
	private Integer tid;
	@NotBlank(message="姓名不能为空")
	private String name;
	@NotBlank(message="邮箱不能为空")
	@Email(message="必须为邮箱格式")
	private String email;
	private String phone;
	private String address;
	@NotBlank(message="信息不能为空")
	private String message;
	private Integer touchIspass;
	public Touch() {}
	public Touch(Integer tid, String name, String email, String phone, String address, String message,
			Integer touchIspass) {
		super();
		this.tid = tid;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.message = message;
		this.touchIspass = touchIspass;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Integer getTouchIspass() {
		return touchIspass;
	}
	public void setTouchIspass(Integer touchIspass) {
		this.touchIspass = touchIspass;
	}
	
}
