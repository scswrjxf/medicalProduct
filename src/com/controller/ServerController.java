package com.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.pojo.About;
import com.pojo.Category;
import com.pojo.Goods;
import com.pojo.Touch;
import com.pojo.User;
import com.service.ServerService;


@Controller
@RequestMapping("/server")
public class ServerController {
	@Resource
	private ServerService serverService;
	// 访问 frame.jsp 页面
	@RequestMapping(value="/frame",method=RequestMethod.GET)
	public ModelAndView frame() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("manage/frame");
		return mv;
	}
	// 跳转到userlist页面
	@RequestMapping("/userlist")
	public ModelAndView gotoUserlist() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/userlist");
		// 获取所有的用户信息
		List<User> users = serverService.findAllUsers();
		mv.addObject("userList",users);
		
		return mv;
	}
	// 跳转到 userview 页面（REST）
	@RequestMapping("/userview/{userId}")
	public ModelAndView userview(@PathVariable String userId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/userview");
		// 根据userId获取用户信息
		User user = serverService.findUserById(userId);
		mv.addObject("userInfor",user);
		
		return mv;
	}
	// 跳转到 userverify页面（REST）
	@RequestMapping("/userverify/{userId}")
	public ModelAndView providermodify(@PathVariable String userId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/userverify");
		// 根据userId获取用户信息
		User user = serverService.findUserById(userId);
		mv.addObject("userInfor",user);
		
		return mv;
	}
	//用户审核
	@RequestMapping(value="/userpass",method=RequestMethod.GET)
	public String userpass(String userId,Integer isPass) {
		// 根据 userId 修改 isPass
		serverService.userIsPassById(userId, isPass);
		return "redirect:/server/userlist";
	}
	// 跳转到goodslist 页面
	@RequestMapping(value="/goodslist")
	public ModelAndView goodslist() {
		ModelAndView mv = new ModelAndView("manage/goodslist");
		// 获取所有商品
		List<Goods> goodsList = serverService.findAllGoods();
		mv.addObject("goodsList", goodsList);
		// 获取分类列表
		List<Category> category = serverService.findAllCategory();
		mv.addObject("category", category);
		
		return mv;
	}
	//跳转到categorylist页面
	@RequestMapping(value="/categorylist")
	public ModelAndView categorylist() {
		ModelAndView mv = new ModelAndView("manage/categorylist");
		// 获取分类列表
		List<Category> category = serverService.findAllCategory();
		mv.addObject("category", category);
		
		return mv;
	}
	// 跳转到添加分类页面
	@RequestMapping(value="/add_category",method=RequestMethod.GET)
	public ModelAndView manageAddCategory() {
		ModelAndView mv=new ModelAndView("manage/add_category");
		return mv;
	}
	// 实现添加分类功能
	@RequestMapping(value="/add_category",method=RequestMethod.POST)
	public String AddCategory(@Valid Category category,BindingResult bindingResult,
			Model model) {
		model.addAttribute("category", category);
		if(bindingResult.hasErrors()) {
			return "manage/add_category";
		}
		if(serverService.addNewCategory(category.getCategory()) == 0) {
			model.addAttribute("error","不能添加相同的分类名称");
			return "manage/add_category";
		}
		return "redirect:/server/categorylist";
	}
	//跳转到 goodsmodify 页面（REST）
	@RequestMapping(value="/goodsmodify/{gid}",method=RequestMethod.GET)
	public ModelAndView goodsmodify(@PathVariable Integer gid,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/goodsmodify");
		// 根据gid获取商品信息
		Goods goods = serverService.findGoodsByGid(gid);
		mv.addObject("goods",goods);
		// 获取分类列表
		List<Category> category = serverService.findAllCategory();
		mv.addObject("category", category);
		session.setAttribute("gd",goods);
			
		return mv;
	}
	//修改商品信息
	@RequestMapping(value="/goodsmodify",method=RequestMethod.POST)
	public ModelAndView goodsmodify2(Goods goods) {
		ModelAndView mv=new ModelAndView();
		if(StringUtils.isNullOrEmpty(goods.getGoodsName()))
			goods.setGoodsName(null);
		serverService.updateGoodsByGid(goods);
		mv.setViewName("redirect:/server/goodsmodify/"+goods.getGid());
		return mv;
	}
	
	// 处理图片上传功能
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	@ResponseBody
	public Object upload(Integer gid,MultipartFile photo,HttpServletRequest request) {
		String fileName = null;
		Map<String,String> status = new HashMap<String, String>();
		//判断文件是否为空
		if(!photo.isEmpty()){
			String path = request.getSession().getServletContext()
					.getRealPath("statics"+File.separator+"file");//文件上传路径
			String oldFileName = photo.getOriginalFilename();//原文件名
			String prefix=FilenameUtils.getExtension(oldFileName);//原文件后缀 
			int filesize = 1048576;//1M
	        if(photo.getSize() >  filesize){//上传大小不得超过 1M
	        	status.put("status","文件不能超过1M");
	        	return JSON.toJSONString(status);
            }else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") 
            		|| prefix.equalsIgnoreCase("gif")){//上传图片格式不正确
            	Random random = new Random();
            	fileName = gid+new Date().getTime()+random.nextInt(10)+"."+prefix;
                File targetFile = new File(path,fileName);
                try {  
                	photo.transferTo(targetFile);  //上传文件
                } catch (Exception e) {  
                    e.printStackTrace();
                }
            }else{
            	status.put("status","图片格式不对");
            	return JSON.toJSONString(status);
            }
		}
		// 修改数据库中对应 gid 的 goodsPhoto
		serverService.updateGoodsPhotoByGid(gid, fileName);
		status.put("status","success");
		status.put("filename", fileName);
		
		return JSON.toJSONString(status);
	}
	//跳转到goodsadd页面
	@RequestMapping(value="goodsadd",method=RequestMethod.GET)
	public ModelAndView gotoGoodsAdd() {
		ModelAndView mv=new ModelAndView("manage/goodsadd");
		//获取所有商品分类信息
		List<Category> category=serverService.findAllCategory();
		mv.addObject("category",category);
		
		return mv;
	}
	// 验证 goodsName 唯一性
	@RequestMapping("/ucexist")
	// 设置返回的内容为响应主体
	@ResponseBody
	public Object goodsNameIsExit(String goodsName) {
		Goods result = serverService.findGoodsByGoodsName(goodsName);
		HashMap<String, String> resultMap = new HashMap<>();
		if(null == result)
			resultMap.put("goodsName", "noexist");
		else
			resultMap.put("goodsName", "exist");
		// 使用 fastjson 把 java 对象转换为 json 字符串
		return JSON.toJSONString(resultMap);
	}
	// 添加商品
	@RequestMapping(value="/goodsnewadd",method=RequestMethod.POST)
	public ModelAndView goodsAdd(Goods goods,
			MultipartFile a_goodsPhoto,
			HttpServletRequest request,
			HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		// 处理文件上传
		String path = request.getServletContext().getRealPath("/statics/file/");
		// 上传证件照
		if(!a_goodsPhoto.isEmpty()) {
			//上传文件名
			String filename = a_goodsPhoto.getOriginalFilename();
			filename = "goodsPhoto"+new Date().getTime()
					+filename.substring(filename.lastIndexOf("."));
			//将上传文件保存到一个目标文件当中
			a_goodsPhoto.transferTo(new File(path+File.separator+filename));
			// 使用文件名替换 goods 中的 goodsPhoto 属性值
			goods.setGoodsPhoto(filename);
		}
		else {
			// 没有上传文件，设置属性为 null
			goods.setGoodsPhoto(null);
		}
		goods.setInputDate(new Date());
		// 把 user 信息保存到数据库中
		serverService.addNewGoods(goods);
		mv.setViewName("redirect:/server/goodslist");
		return mv;
	}
	// 根据 gid 删除商品
	@RequestMapping("/delgoods/{gid}")
	public String deluser(@PathVariable Integer gid) {
		serverService.delGoods(gid);
		// 使用了重定向
		return "redirect:/server/goodslist";
	}
	// 根据 categoryId 删除商品
	@RequestMapping("/delcategory/{categoryId}")
	public String delcategory(@PathVariable Integer categoryId) {
		serverService.delCategory(categoryId);
		// 使用了重定向
		return "redirect:/server/categorylist";
	}
	//跳转到 about_us 页面（REST）
	@RequestMapping(value="/about_us",method=RequestMethod.GET)
	public ModelAndView aboutview() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/about_us");
		// 获取关于我们信息
		List<About> about = serverService.findAbout();
		mv.addObject("about",about);
	
		return mv;
	}
	//修改关于我们信息
	@RequestMapping(value="/about",method=RequestMethod.POST)
	public ModelAndView about(About about) {
		ModelAndView mv=new ModelAndView();
		if(StringUtils.isNullOrEmpty(about.getAboutTitle()))
			about.setAboutTitle(null);
		if(StringUtils.isNullOrEmpty(about.getAboutDesc()))
			about.setAboutDesc(null);
		serverService.updateAboutByAid(about);
		mv.setViewName("redirect:/server/about_us");
		return mv;
	}
	// 跳转到touchlist 页面
	@RequestMapping(value="/touchlist")
	public ModelAndView touchlist() {
		ModelAndView mv = new ModelAndView("manage/touchlist");
		// 获取所有商品
		List<Touch> touch = serverService.findAllTouch();
		mv.addObject("touch", touch);
		
		return mv;
	}
	// 跳转到 touchview 页面（REST）
	@RequestMapping("/touchview/{tid}")
	public ModelAndView touchview(@PathVariable Integer tid) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manage/touchview");
		// 根据userId获取用户信息
		Touch touch = serverService.findTouchByTid(tid);
		mv.addObject("touch",touch);
		// 根据tid 修改 isPass
		serverService.touchIspassByTid(tid);
		return mv;
	}
	//根据goodsName模糊查询	
	@RequestMapping(value="/goodsbyname")
	@ResponseBody
	public Object findGoodsByName(String goodsName) {
		List<Goods> goods = serverService.findGoodsByName(goodsName);
		// 把用户列表对象转换为 JSON 字符串
		return JSON.toJSONString(goods);
	}
}
