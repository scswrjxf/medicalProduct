package com.controller; 
import javax.validation.Valid;

import java.util.Date;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.StringUtils;
import com.pojo.User;
import com.service.UserService;
import com.sun.mail.util.MailSSLSocketFactory; 

@Controller
public class LoginController{
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	// 访问 index 页面
	@RequestMapping("/index")
	public String index() {
		return "client/index";
	}
	// 跳转到 login 页面
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute User user) {
		return "client/login";
	}
	// 跳转到 regist 页面
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String regist(@ModelAttribute User user) { 
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
			model.addAttribute("error", "账户或密码错误");
			return "client/login";
		}  
		// 把账户放入 session 
		session.setAttribute("loginer", result);
		// 判断其权限
		if (result.getRole().equals(1))//1-系统管理员，0-一般用户
			return "manage/frame";
		return "redirect:/index";
	}
	// 实现注册功能
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String clientRegist(@Valid User user, BindingResult bindingResult, Model model) {
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
		user.setUserCreateDate(new Date());   //设置创建时间
		userService.addNewUser(user); 
		return "client/login";
	}
	// 跳转到 user_reset_password
	@RequestMapping(value="/user_reset_password",method=RequestMethod.GET)
	public String userResetPassword() {
		return "client/user_reset_password";
	}
	//用于给用户发送邮件的邮箱
    private static String from = "3347499617@qq.com";
    //邮箱的用户名
    private static String username = "3347499617@qq.com";
    //邮箱的密码
    private static String password = "pbzefqrhnsgsdbbj";
    //发送邮件的服务器地址
    private String host = "smtp.qq.com"; 
	// 重置密码
	@RequestMapping(value="/user_reset_password",method=RequestMethod.POST)
	public String userResetPassword(String userId,String yzm,
				HttpSession session,Model model) throws Exception{
		if(StringUtils.isNullOrEmpty(userId)
				|| StringUtils.isNullOrEmpty(yzm)) {
			model.addAttribute("error", "账户和验证码都不能为空"); 
			return "redirect:/user_reset_password";
		}
		Object obj = session.getAttribute("yzm");
		if(!yzm.equals(obj.toString())) {
			model.addAttribute("error", "验证码输入错误"); 
			return "redirect:/user_reset_password";
		}
		// 根据账户id查找账户
		User user = userService.findUserById(userId);
		if(null == user) {
			model.addAttribute("error", "账户不存在");
			return "redirect:/user_reset_password";
		}
		// 获取账户邮箱
		String email = user.getUserEmail();
		if(null == email) {
			model.addAttribute("error", "未设置邮箱，无法重置");
			return "redirect:/user_reset_password";
		}
		String regEx1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		Pattern p = Pattern.compile(regEx1);
		Matcher m = p.matcher(email);
		if(!m.matches()){
			model.addAttribute("error", "邮箱错误，无法重置");
			return "redirect:/user_reset_password";
        }
		String code="";  //密码
	    Random rand=new Random();//生成随机数
	    for(int a=0;a<6;a++){
	    code+=rand.nextInt(10);//生成6位验证码
	      } 
		// 重置密码为生成的6位随机数，并且发送到邮箱
		user.setUserPsw(code);
		userService.updateUserPswById(user); 
		
		
		//创建一个配置文件保存并读取信息
        Properties properties = new Properties();

        //设置qq邮件服务器
        properties.setProperty("mail.host","smtp.qq.com");
        //设置发送的协议
        properties.setProperty("mail.transport.protocol","smtp");
        //设置用户是否需要验证
        properties.setProperty("mail.smtp.auth", "true");


        //=================================只有QQ存在的一个特性，需要建立一个安全的链接
        // 关于QQ邮箱，还要设置SSL加密，加上以下代码即可
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.ssl.socketFactory", sf);

        //=================================准备工作完毕

        //1.创建一个session会话对象；
        Session session1 = Session.getDefaultInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });

        //可以通过session开启Dubug模式，查看所有的过程
        session1.setDebug(true);


        //2.获取连接对象，通过session对象获得Transport，需要捕获或者抛出异常；
        Transport tp = session1.getTransport();

        //3.连接服务器,需要抛出异常；
        tp.connect("smtp.qq.com",from,password);
        //4、创建邮件 //4.连接上之后我们需要发送邮件；
        MimeMessage message = new MimeMessage(session1);
        message.setFrom(new InternetAddress(from)); //发件人
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(user.getUserEmail())); //收件人
        message.setSubject("用户重置密码"); //邮件的标题

        String info = "恭喜您密码重置成功，您的账户：" + userId + ",您的新密码为：" + code + "，请妥善保管，如有问题请联系网站客服!!";

        message.setContent(info, "text/html;charset=UTF-8");
        message.saveChanges();  

        //5.发送邮件
        tp.sendMessage(message,message.getAllRecipients());

        //6.关闭连接
        tp.close();  
	     
		model.addAttribute("error","密码重置成功，请到邮箱查看");
		
		return "redirect:/user_reset_password";
	}
 
    // 实现登出功能
	@RequestMapping("/login_out")
	public String login_out(HttpSession session) {
		session.removeAttribute("loginer");
		return "redirect:/index";
	}  

}
