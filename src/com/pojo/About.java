package com.pojo;

public class About {
	private Integer aid;
	private String aboutTitle;
	private String aboutDesc;
	public About(Integer aid, String aboutTitle, String aboutDesc) {
		super();
		this.aid = aid;
		this.aboutTitle = aboutTitle;
		this.aboutDesc = aboutDesc;
	}
	public About() {
		super();
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
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
