package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.ServerMapper;
import com.pojo.About;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.Touch;
import com.pojo.User;
import com.service.ServerService;

@Service("serverService")
public class ServerServiceImpl implements ServerService {
	@Resource
	private ServerMapper serverMapper;
	/**
	 * 查找所有用户信息
	 */
	@Override
	public List<User> findAllUsers() {
		return serverMapper.findAllUsers();
	}
	/**
	 * 根据id获取用户信息
	 */
	@Override
	public User findUserById(String userId) {
		return serverMapper.findUserById(userId);
	}
	/**
	 * 根据userId审核
	 */
	@Override
	public int userIsPassById(String userId, Integer isPass) {
		return serverMapper.userIsPassById(userId, isPass);
	}
	/**
	 * 获取所有商品信息
	 */
	@Override
	public List<Goods> findAllGoods() {
		return serverMapper.findAllGoods();
	}
	/**
	 *  根据分类名称查找分类
	 */
	@Override
	public Category findCategoryByTitle(String category) {
		return serverMapper.findCategoryByTitle(category);
	}
	/**
	 *  添加新分类
	 */
	@Override
	public int addNewCategory(String category) {
		if(findCategoryByTitle(category) != null)
			return 0;
		return serverMapper.addNewCategory(category);
	}
	/**
	 *  根据gid查找商品
	 */
	@Override
	public Goods findGoodsByGid(Integer gid) {
		return serverMapper.findGoodsByGid(gid);
	}
	/**
	 * 查找所有分类信息
	 */
	@Override
	public List<Category> findAllCategory() {
		return serverMapper.findAllCategory();
	}
	/**
	 * 根据Gid修改商品信息
	 */
	@Override
	public int updateGoodsByGid(Goods goods) {
		return serverMapper.updateGoodsByGid(goods);
	}
	/**
	 * 根据Gid修改商品图片
	 */
	@Override
	public int updateGoodsPhotoByGid(Integer gid, String goodsPhoto) {
		return serverMapper.updateGoodsPhotoByGid(gid, goodsPhoto);
	}
	/**
	 * 添加新商品
	 */
	@Override
	public int addNewGoods(Goods goods) {
		return serverMapper.addNewGoods(goods);
	}
	/**
	 * 根据goodsName判断商品是否存在
	 */
	@Override
	public Goods findGoodsByGoodsName(String goodsName) {
		return serverMapper.findGoodsByGoodsName(goodsName);
	}
	/**
	 * 根据 gid 删除商品
	 */
	@Override
	public int delGoods(Integer gid) {
		return serverMapper.delGoods(gid);
	}
	/**
	 * 根据 categoryId 删除商品
	 */
	@Override
	public int delCategory(Integer categoryId) {
		return serverMapper.delCategory(categoryId);
	}
	/**
	 * 获取about信息
	 */
	@Override
	public List<About> findAbout() {
		return serverMapper.findAbout();
	}
	/**
	 * 修改about
	 */
	@Override
	public int updateAboutByAid(About about) {
		return serverMapper.updateAboutByAid(about);
	}
	@Override
	public List<Touch> findAllTouch() {
		return serverMapper.findAllTouch();
	}
	@Override
	public Touch findTouchByTid(Integer tid) {
		return serverMapper.findTouchByTid(tid);
	}
	@Override
	public int touchIspassByTid(Integer tid) {
		return serverMapper.touchIspassByTid(tid);
	}
	@Override
	public List<Goods> findGoodsByName(String goodsName) {
		return serverMapper.findGoodsByName(goodsName);
	}
}
