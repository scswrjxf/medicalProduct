package com.controller;

import javax.validation.Valid;

import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.pojo.Cart;
import com.pojo.Category;
import com.pojo.Collect;
import com.pojo.Comment;
import com.pojo.Goods;
import com.pojo.Orders;
import com.pojo.User;
import com.service.CartService;
import com.service.CategoryService;
import com.service.CollectServiceXF;
import com.service.CommentsServiceXF;
import com.service.GoodsServiceXF;
import com.service.UserService;
import com.sun.mail.util.MailSSLSocketFactory;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	@Resource
	private GoodsServiceXF goodsServiceXF;
	@Resource
	private CategoryService categoryService;
	@Resource
	private CommentsServiceXF commentsServiceXF;
	@Resource
	private CollectServiceXF collectServiceXF;
	@Resource
	private CartService cartService;

	// 访问 index 页面
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/index");
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category", category);
		// 获取前四个热卖推荐
		List<Goods> remaiList = goodsServiceXF.findGoodsByReMai();
		mv.addObject("remaiList", remaiList);
		// 获取前四个新品推荐
		List<Goods> xinpinList = goodsServiceXF.findGoodsByXinPin();
		mv.addObject("xinpinList", xinpinList);
		// 获取前四个今日特惠
		List<Goods> tehuiList = goodsServiceXF.findGoodsByTeHui();
		mv.addObject("tehuiList", tehuiList);
		// 获取登录信息
		User loginer = (User) session.getAttribute("loginer");
		if (loginer != null) {
			// 获取所有的购物车信息
			List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
			mv.addObject("cartlist", cartlist);
		}
		return mv;
	}

	// 跳转到 login 页面
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute User user, Model model) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		return "client/login";
	}

	// 跳转到 regist 页面i
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist(@ModelAttribute User user, Model model) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		user.setUserSex("男");
		return "client/regist";
	}

	// 登录校验
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Valid User user, BindingResult bindingResult, HttpSession session, Model model) {
		model.addAttribute("user", user);
		// 判断是否有校验错误 JSR303 校验
		if (bindingResult.hasErrors())
			return "client/login";
		// 根据账户密码查找账户
		User result = userService.findUserByIdAndPsw(user.getUserId(), user.getUserPsw());
		// 没有找到
		if (null == result) {
			model.addAttribute("error", "账户或密码错误,或者账户未审核 ");
			return "client/login";
		}
		// 把账户放入 session
		session.setAttribute("loginer", result);
		// 判断其权限
		if (result.getRole().equals(1))// 1-系统管理员，0-一般用户
			return "manage/frame";
		return "redirect:/index";
	}

	// 实现注册功能
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String clientRegist(@Valid User user, BindingResult bindingResult, Model model) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		if (bindingResult.hasErrors()) {
			return "client/regist";
		}
		// 判断账户是否已经存在
		User result = userService.findUserById(user.getUserId());
		if (result != null) {
			model.addAttribute("error", "账户已经存在");
			return "client/regist";
		}
		// 添加账户信息然后跳转到登录页面
		user.setUserCreateDate(new Date()); // 设置创建时间
		userService.addNewUser(user);
		return "client/login";
	}

	// 跳转到 user_reset_password
	@RequestMapping(value = "/user_reset_password", method = RequestMethod.GET)
	public String userResetPassword(Model model, HttpSession session, ModelAndView mv) {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		return "client/user_reset_password";
	}

	// 用于给用户发送邮件的邮箱
	private static String from = "3347499617@qq.com";
	// 邮箱的用户名
	private static String username = "3347499617@qq.com";
	// 邮箱的密码
	private static String password = "pbzefqrhnsgsdbbj";
	// 发送邮件的服务器地址
	private String host = "smtp.qq.com";

	// 重置密码
	@RequestMapping(value = "/user_reset_password", method = RequestMethod.POST)
	public String userResetPassword(String userId, String yzm, HttpSession session, Model model) throws Exception {
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		model.addAttribute("category", category);
		if (StringUtils.isNullOrEmpty(userId) || StringUtils.isNullOrEmpty(yzm)) {
			model.addAttribute("error", "账户和验证码都不能为空");
			return "redirect:/user_reset_password";
		}
		Object obj = session.getAttribute("yzm");
		if (!yzm.equals(obj.toString())) {
			model.addAttribute("error", "验证码输入错误");
			return "redirect:/user_reset_password";
		}
		// 根据账户id查找账户
		User user = userService.findUserById(userId);
		if (null == user) {
			model.addAttribute("error", "账户不存在");
			return "redirect:/user_reset_password";
		}
		// 获取账户邮箱
		String email = user.getUserEmail();
		if (null == email) {
			model.addAttribute("error", "未设置邮箱，无法重置");
			return "redirect:/user_reset_password";
		}
		String regEx1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		Pattern p = Pattern.compile(regEx1);
		Matcher m = p.matcher(email);
		if (!m.matches()) {
			model.addAttribute("error", "邮箱错误，无法重置");
			return "redirect:/user_reset_password";
		}
		String code = ""; // 密码
		Random rand = new Random();// 生成随机数
		for (int a = 0; a < 6; a++) {
			code += rand.nextInt(10);// 生成6位验证码
		}
		// 重置密码为生成的6位随机数，并且发送到邮箱
		user.setUserPsw(code);
		userService.updateUserPswById(user);

		// 创建一个配置文件保存并读取信息
		Properties properties = new Properties();

		// 设置qq邮件服务器
		properties.setProperty("mail.host", host);
		// 设置发送的协议
		properties.setProperty("mail.transport.protocol", "smtp");
		// 设置用户是否需要验证
		properties.setProperty("mail.smtp.auth", "true");

		// =================================只有QQ存在的一个特性，需要建立一个安全的链接
		// 关于QQ邮箱，还要设置SSL加密，加上以下代码即可
		MailSSLSocketFactory sf = new MailSSLSocketFactory();
		sf.setTrustAllHosts(true);
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.ssl.socketFactory", sf);

		// =================================准备工作完毕

		// 1.创建一个session会话对象；
		Session session1 = Session.getDefaultInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		// 可以通过session开启Dubug模式，查看所有的过程
		session1.setDebug(true);

		// 2.获取连接对象，通过session对象获得Transport，需要捕获或者抛出异常；
		Transport tp = session1.getTransport();

		// 3.连接服务器,需要抛出异常；
		tp.connect(host, from, password);
		// 4、创建邮件 //4.连接上之后我们需要发送邮件；
		MimeMessage message = new MimeMessage(session1);
		message.setFrom(new InternetAddress(from)); // 发件人
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(user.getUserEmail())); // 收件人
		message.setSubject("用户重置密码"); // 邮件的标题

		String info = "恭喜您密码重置成功，您的账户：" + userId + ",您的新密码为：" + code + "，请妥善保管，如有问题请联系网站客服!!";

		message.setContent(info, "text/html;charset=UTF-8");
		message.saveChanges();

		// 5.发送邮件
		tp.sendMessage(message, message.getAllRecipients());

		// 6.关闭连接
		tp.close();

		model.addAttribute("error", "密码重置成功，请到邮箱查看");

		return "redirect:/user_reset_password";
	}

	// 实现登出功能
	@RequestMapping("/login_out")
	public String login_out(HttpSession session) {
		session.removeAttribute("loginer");
		return "redirect:/index";
	}

	// 访问 product_detail 页面
	@RequestMapping(value = "/product_detail/{gid}", method = RequestMethod.GET)
	public ModelAndView gotoproduct_detail(@PathVariable Integer gid, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("client/product_detail");
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category", category);
		// 获取登录信息
		User loginer = (User) session.getAttribute("loginer");
		if (loginer != null) {
			// 获取所有的购物车信息
			List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
			mv.addObject("cartlist", cartlist);
		}
		// 根据 gid 获取商品信息
		Goods good = goodsServiceXF.findGoodByGid(gid);
		mv.addObject("goodInfor", good);
		// 获取对应商品名称
		String goodsName = good.getGoodsName();
		// 根据 goodsName 获取所有通过审核的评论
		List<Comment> commentsList = commentsServiceXF.findAllCommentsByGoodsName(goodsName);
		mv.addObject("commentsList", commentsList);
		// 获取用户登录信息
		Object obj = session.getAttribute("loginer");
		if (obj != null) {
			// 查找商品是否收藏
			Collect coll = collectServiceXF.findCollectByUidAndCid(((User) obj).getUserId(), gid);
			mv.addObject("coll", coll);
		}
		return mv;
	}

	// 实现加入购物车功能
	@RequestMapping(value = "/addcart/{goodsId}")
	public String AddCart(@PathVariable Integer goodsId, Model model, HttpSession session) {
		// 获取用户信息
		User loginer = (User) session.getAttribute("loginer");
		// 通过goodsId获取goods
		Goods goods = cartService.findGoodsByGoodsId(goodsId);
		model.addAttribute("goods", goods);
		// 判断购物车商品是否已经存在
		Cart result = cartService.findCartByGoodsName(goods.getGoodsName(), loginer.getUserAlice());
		model.addAttribute("cart", result);
		if (result != null) {
			cartService.updateCartNumByGoodsName(result.getCid());
			return "redirect:/index";
		} else {

			cartService.addNewCart(loginer.getUserAlice(), goods.getGoodsName(), goodsId, goods.getGoodsPrice(),
					goods.getGoodsPhoto());
		}
		// 在model中设置一个cart值
		model.addAttribute("cart", new Cart());
		return "redirect:/index";
	}

	// 跳转到shopping_cart页面
	@RequestMapping("/cartlist")
	public ModelAndView gotoCartlist(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		// 获取前四个热卖推荐
		List<Goods> remaiList = goodsServiceXF.findGoodsByReMai();
		mv.addObject("remaiList", remaiList);
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category", category);
		mv.setViewName("client/shopping_cart");
		User loginer = (User) session.getAttribute("loginer");
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		mv.addObject("cartlist", cartlist);

		return mv;
	}

	// 根据cid修改goodsNumber
	@RequestMapping(value = "/updateNumber")
	@ResponseBody
	public Object updateNumber(Integer cid, String goodsName, Integer goodsNumber, Model model, HttpSession session,
			ModelAndView mv) {
		// 获取用户信息
		User loginer = (User) session.getAttribute("loginer");
		cartService.updateNumByGoodsName(cid, goodsNumber);
		Cart cart = cartService.findCartByGoodsName(goodsName, loginer.getUserAlice());
		model.addAttribute("cart", cart);
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		mv.addObject("cartlist", cartlist);
		// 把用户列表对象转换为 JSON 字符串
		return JSON.toJSONString(cartlist);
	}

	// 根据cid删除购物车商品
	@RequestMapping(value = "/delCartByCid/{cid}")
	public String delCartByCid(@PathVariable Integer cid) {
		cartService.delCartByCid(cid);

		return "redirect:/cartlist";
	}

	// 清除购物车
	@RequestMapping(value = "/delCart")
	public String delCart(String userAlice) {
		cartService.delCart(userAlice);

		return "成功";
	}

	// 搜索
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView search(String goodsName, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User loginer = (User) session.getAttribute("loginer");
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		mv.addObject("cartlist", cartlist);
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category", category);
		mv.setViewName("client/searchgoods");
		List<Goods> searchgoods = cartService.findGoodsByGoodsName(goodsName);
		mv.addObject("searchgoods", searchgoods);
		return mv;
	}

	// 生成订单
	@RequestMapping(value = "/addNewOrder", method = RequestMethod.GET)
	public String addNewOrder(String orderName, Integer total, String userAlice, HttpSession session) {
		User loginer = (User) session.getAttribute("loginer");
		// 生成订单编号
		Random random = new Random();
		String code = loginer.getUserId() + new Date().getTime() + random.nextInt(100);
		// 订单时间
		Date orderDate = new Date();
		// 生成订单
		cartService.addNewOrder(orderName, total, loginer.getUserId(), code, orderDate);
		// 清空购物车
		cartService.delCart(userAlice);
		return "redirect:/cartlist";
	}

	// 跳转到ordertlist页面
	@RequestMapping("/orderlist")
	public ModelAndView gotoOrderlist(HttpSession session, Model model) {
		ModelAndView mv = new ModelAndView();
		// 获取所有 分类
		List<Category> category = categoryService.findAllCategory();
		mv.addObject("category", category);
		mv.setViewName("client/orderlist");
		User loginer = (User) session.getAttribute("loginer");
		// 获取所有的购物车信息
		List<Cart> cartlist = cartService.findAllCart(loginer.getUserAlice());
		mv.addObject("cartlist", cartlist);
		// 获取所有的订单信息
		List<Orders> orderlist = cartService.findOrderByUserId(loginer.getUserId());
		mv.addObject("orderlist", orderlist);

		return mv;
	}

	// 确认收货
	@RequestMapping(value = "/orderPass", method = RequestMethod.GET)
	public String orderPass(Integer oid, HttpSession session) {
		cartService.orderPass(oid);
		return "redirect:/orderlist";
	}

	// 实现加入购物车功能
	@RequestMapping(value = "/addcartlist/{goodsId}")
	public String AddCartList(@PathVariable Integer goodsId, Model model, HttpSession session) {
		// 获取用户信息
		User loginer = (User) session.getAttribute("loginer");
		// 通过goodsId获取goods
		Goods goods = cartService.findGoodsByGoodsId(goodsId);
		model.addAttribute("goods", goods);
		// 判断购物车商品是否已经存在
		Cart result = cartService.findCartByGoodsName(goods.getGoodsName(), loginer.getUserAlice());
		model.addAttribute("cart", result);
		if (result != null) {
			cartService.updateCartNumByGoodsName(result.getCid());
			return "redirect:/list";
		} else {

			cartService.addNewCart(loginer.getUserAlice(), goods.getGoodsName(), goodsId, goods.getGoodsPrice(),
					goods.getGoodsPhoto());
		}
		// 在model中设置一个cart值
		model.addAttribute("cart", new Cart());
		return "redirect:/list";
	}

	// 实现分类页加入购物车功能
	@RequestMapping(value = "/addcartgrid", method = RequestMethod.GET)
	public String AddCartListGrid(Integer goodsId, Integer categoryId, Model model, HttpSession session) {
		// 获取用户信息
		User loginer = (User) session.getAttribute("loginer");
		// 通过goodsId获取goods
		Goods goods = cartService.findGoodsByGoodsId(goodsId);
		model.addAttribute("goods", goods);
		// 判断购物车商品是否已经存在
		Cart result = cartService.findCartByGoodsName(goods.getGoodsName(), loginer.getUserAlice());
		model.addAttribute("cart", result);
		model.addAttribute("categoryId", categoryId);

		if (result != null) {
			cartService.updateCartNumByGoodsName(result.getCid());
			return "redirect:/grid";
		} else {

			cartService.addNewCart(loginer.getUserAlice(), goods.getGoodsName(), goodsId, goods.getGoodsPrice(),
					goods.getGoodsPhoto());
		}
		// 在model中设置一个cart值
		model.addAttribute("cart", new Cart());
		return "redirect:/grid";
	}

	// 实现详情页加入购物车功能
	@RequestMapping(value = "/addcartP/{goodsId}")
	public String AddCartP(@PathVariable Integer goodsId, Model model, HttpSession session) {
		// 获取用户信息
		User loginer = (User) session.getAttribute("loginer");
		// 通过goodsId获取goods
		Goods goods = cartService.findGoodsByGoodsId(goodsId);
		model.addAttribute("goods", goods);
		// 判断购物车商品是否已经存在
		Cart result = cartService.findCartByGoodsName(goods.getGoodsName(), loginer.getUserAlice());
		model.addAttribute("cart", result);
		if (result != null) {
			cartService.updateCartNumByGoodsName(result.getCid());
			return "redirect:/product_detail/{goodsId}";
		} else {

			cartService.addNewCart(loginer.getUserAlice(), goods.getGoodsName(), goodsId, goods.getGoodsPrice(),
					goods.getGoodsPhoto());
		}
		// 在model中设置一个cart值
		model.addAttribute("cart", new Cart());
		return "redirect:/product_detail/{goodsId}";
	}
}
