package com.pojo;

public class Category {
	private Integer categoryId;
	private String category;
	public Category() {
		super();
	}
	public Category(Integer categoryId, String category) {
		super();
		this.categoryId = categoryId;
		this.category = category;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
}
