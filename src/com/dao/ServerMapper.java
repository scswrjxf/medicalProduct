package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.About;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.User;

public interface ServerMapper {
	List<User> findAllUsers();
	
	User findUserById(String id);
	
	int userIsPassById(@Param("userId") String userId,
			@Param("isPass") Integer isPass);
	
	List<Goods> findAllGoods();
	
	Category findCategoryByTitle(String category);
	
	int addNewCategory(String category);
	
	Goods findGoodsByGid(Integer gid);
	
	List<Category> findAllCategory();
	
	int updateGoodsByGid(Goods goods);
	
	int updateGoodsPhotoByGid(@Param("gid") Integer gid,
			@Param("goodsPhoto") String goodsPhoto);
	
	int addNewGoods(Goods goods);
	
	Goods findGoodsByGoodsName(@Param("goodsName") String goodsName);
	
	int delGoods(Integer gid);
	
	int delCategory(Integer categoryId);
	
	List<About> findAbout();
	
	int updateAboutByAid(About about);
}
