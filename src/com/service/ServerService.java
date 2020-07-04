package com.service;

import java.util.List;

import com.pojo.About;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.User;

public interface ServerService {
	List<User> findAllUsers();
	
	User findUserById(String userId);
	
	int userIsPassById(String userId,Integer isPass);
	
	List<Goods> findAllGoods();
	
	Category findCategoryByTitle(String category);
	
	int addNewCategory(String category);
	
	Goods findGoodsByGid(Integer gid);
	
	List<Category> findAllCategory();
	
	int updateGoodsByGid(Goods goods);
	
	int updateGoodsPhotoByGid(Integer gid,String goodsPhoto);
	
	int addNewGoods(Goods goods);
	
	Goods findGoodsByGoodsName(String goodsName);
	
	int delGoods(Integer gid);
	
	int delCategory(Integer categoryId);
	
	List<About> findAbout();
	
	int updateAboutByAid(About about);
}
