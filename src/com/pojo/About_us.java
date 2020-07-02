package com.pojo;

public class About_us {
	private String aboutTitle;
	private String aboutDesc;
	public About_us(String aboutTitle, String aboutDesc) {
		super();
		this.aboutTitle = aboutTitle;
		this.aboutDesc = aboutDesc;
	}
	public About_us() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAboutTitle() {
		return aboutTitle;
	}
	public void setAboutTitle(String aboutTitle) {
		this.aboutTitle = aboutTitle;
	}
	public String getAboutDesc() {
		return aboutDesc;
	}
	public void setAboutDesc(String aboutDesc) {
		this.aboutDesc = aboutDesc;
	}
	
}
