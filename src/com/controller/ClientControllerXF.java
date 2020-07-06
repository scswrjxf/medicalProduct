package com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Collect;
import com.pojo.Comment;
import com.pojo.Goods;
import com.pojo.User;
import com.service.CollectServiceXF;
import com.service.CommentsServiceXF;
import com.service.GoodsServiceXF;

@Controller
@RequestMapping("/clientXF")
public class ClientControllerXF {
	@Resource
	private CollectServiceXF collectServiceXF;
	@Resource
	private GoodsServiceXF goodsServiceXF;
	@Resource
	private CommentsServiceXF commentsServiceXF;
	// 收藏商品
	@RequestMapping(value="/add_new_collect/{gid}",method=RequestMethod.GET)
	public ModelAndView addNewCollect(@PathVariable Integer gid, HttpSession session) {
		User loginer = (User)session.getAttribute("loginer"); 
		ModelAndView mv = new ModelAndView(); 
		mv.setViewName("client/product_detail");
		// 根据 gid 获取商品信息
		Goods good = goodsServiceXF.findGoodByGid(gid);
		mv.addObject("goodInfor",good);
		// 获取对应商品名称
		String goodsName=good.getGoodsName();
		// 根据 goodsName 获取所有通过审核的评论
		List<Comment> commentsList=commentsServiceXF.
				findAllCommentsByGoodsName(goodsName);
		mv.addObject("commentsList",commentsList);
		// 收藏商品，保存到数据库
		collectServiceXF.addNewCollect(loginer.getUserId(),gid);
		// 在 model中设置一个 coll 值
		mv.addObject("coll",new Collect()); 
		return mv;
	} 

	// 取消收藏商品
	@RequestMapping(value="/del_collect/{gid}",method=RequestMethod.GET)
	public ModelAndView delInvitationInter(@PathVariable Integer gid, HttpSession session) {
		ModelAndView mv = new ModelAndView();  
		User loginer = (User)session.getAttribute("loginer");
		// 根据 gid 获取商品信息
		Goods good = goodsServiceXF.findGoodByGid(gid);
		mv.addObject("goodInfor",good);
		// 获取对应商品名称
		String goodsName=good.getGoodsName();
		// 根据 goodsName 获取所有通过审核的评论
		List<Comment> commentsList=commentsServiceXF.
				findAllCommentsByGoodsName(goodsName);
		mv.addObject("commentsList",commentsList); 
		// 删除表 collect 中对应的记录
		collectServiceXF.delCollectByUidAndCid(loginer.getUserId(),gid);
		// 在 model中设置一个 coll 值
		mv.addObject("coll",null); 
		mv.setViewName("client/product_detail");  
		return mv;
	}
}



















