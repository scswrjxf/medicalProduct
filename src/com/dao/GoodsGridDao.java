package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.pojo.Category; 
import com.pojo.Goods;
import com.tool.BaseDao; 

public class GoodsGridDao {
	/**
	 * 2021/01/30  下午
	 */
	
	/**
	 * 返回当前页的信息
	 * @param numbers
	 * @param currentPage
	 * @return
	 */
	public ArrayList<Goods> pageGoods(Integer categoryId,Integer numbers,Integer currentPage){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Goods> goods = new ArrayList<>();// 返回的列表
		try {
			conn = BaseDao.getConnection();
			String sql = "select * from Goods where categoryId=? limit ?,?";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps, new Object[] {
				(currentPage-1)*numbers,	// 从这个位置开始
				numbers	// 返回条数
			});
			// 格式化日期时间
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
			while(rs.next()) {
				goods.add(new Goods(
						rs.getInt("gid"),rs.getString("goodsName"),rs.getString("goodsPhoto"),
						rs.getInt("goodsPrice"), rs.getString("goodsDesc"),
						sdf.parse(rs.getString("inputDate")),
						rs.getInt("goodsNumber"),null));
			}
		} catch (Exception e) {e.printStackTrace();
		}
		finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return goods;
	}
	/**
	 * 返回gallery在数据库中的数量
	 * @return
	 */
	public int goodsLength(Integer categoryId) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count = 0;
		try {
			conn = BaseDao.getConnection();
			String sql = "select count(gid) from Goods where categoryId=?";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps, null);
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {e.printStackTrace();
		}
		finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return count;
	}
	
	/**
	 * 获取所有分类
	 * @return
	 */
	public ArrayList<Category> findAllCategory() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Category> array = new ArrayList<>();
		try {
			conn = BaseDao.getConnection();
			String sql = "select * from Category";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps, null); 
			while(rs.next()) {
				array.add(
					new Category(rs.getInt(1),
							rs.getString(2)
							));
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return array; 
	} 
}




























