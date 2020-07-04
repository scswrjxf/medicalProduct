package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.CategoryMapper;
import com.pojo.Category;
import com.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	@Resource
	private CategoryMapper categoryMapper;
	@Override
	public List<Category> findAllCategory() {
		return categoryMapper.findAllCategory();
	}
}
