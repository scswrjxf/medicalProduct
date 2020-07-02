package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.InitDao;
import com.pojo.About_us;

public class About_usController {
	//关于我们
		@RequestMapping("/about_us")
		public ModelAndView about(ModelAndView model) throws SQLException {
			InitDao dao = new InitDao();
			About_us au = new About_us();
			Connection conn = null;
			PreparedStatement ps = null;
			try {
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalproduct?useUnicode=true&characterEncoding=utf-8","root","200031");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String sql 
				= "SELECT * FROM about" ;
			try {
				ps = conn.prepareStatement(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				au.setAboutTitle(rs.getString("aboutTitle"));
				au.setAboutDesc(rs.getString("aboutDesc"));
				}
			model.addObject("au", au);
			model.setViewName("client/about_us");
			return model;
		}
		//grid
		@RequestMapping("/grid")
		public String grid() {
			return "client/grid";
		}
		//blog_single_post 
		@RequestMapping("/blog_single_post")
		public String blog_single_post() {
			return "client/blog_single_post";
		}
		//404error
			@RequestMapping("/404error")
			public String fzferror() {
				return "client/404error";
			}
		//newsletter
		@RequestMapping("/newsletter")
		public String newsletter() {
			return "client/newsletter";
		}
		//multiple_addresses
		@RequestMapping("/multiple_addresses")
		public String multiple_addresses() {
			return "client/multiple_addresses";
		}
		//dashboard
		@RequestMapping("/dashboard")
		public String dashboard() {
			return "client/dashboard";
		}
		//faq
		@RequestMapping("/aq")
		public String aq() {
			return "client/aq";
		}
		//wishlist
		@RequestMapping("/wishlist")
		public String wishlist() {
			return "client/wishlist";
		}
		//checkout
		@RequestMapping("/checkout")
		public String checkout() {
			return "client/checkout";
		}
		//shopping_cart
		@RequestMapping("/shopping_cart")
		public String shopping_cart() {
			return "client/shopping_cart";
		}
		//product_detail
		@RequestMapping("/product_detail")
		public String product_detail() {
			return "client/product_detail";
		}
		//list
		@RequestMapping("/list")
		public String list() {
			return "client/list";
		}
}
