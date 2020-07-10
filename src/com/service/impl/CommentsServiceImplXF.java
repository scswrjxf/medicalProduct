package com.service.impl;  
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List; 
import javax.annotation.Resource; 
import org.springframework.stereotype.Service; 
import com.dao.CommentsMapperXF;
import com.pojo.Comment;
import com.service.CommentsServiceXF; 
@Service("commentsServiceXF")
public class CommentsServiceImplXF implements CommentsServiceXF {
	@Resource
	private CommentsMapperXF commentsMapperXF;

	// 获取所有评论
	@Override
	public List<Comment> findAllComments() {
		return commentsMapperXF.findAllComments();
	}

	// 根据 commentId 获取评论信息
	@Override
	public Comment findCommentById(Integer commentId) {
		Comment comment= commentsMapperXF.findCommentById(commentId);
		// 对评论内容进行解码处理(采用UTF-8编码格式)
		String meg = null;
		try {
			// URLDecoder.decode——解码， URLEncoder.encode——编码 (采用UTF-8编码格式)
			meg = URLDecoder.decode(comment.getCommentMessage(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 
		comment.setCommentMessage(meg);
		return comment;
	}
	
	// 根据 commentId 修改 commentIspass
	@Override
	public int commentIspassById(Integer commentId, Integer commentIspass) {
		return commentsMapperXF.commentIspassById(commentId,commentIspass);
	}
	
	// 根据 goodsName 获取所有通过审核的评论
	@Override
	public List<Comment> findAllCommentsByGoodsName(String goodsName) {
		List<Comment> comments=commentsMapperXF.findAllCommentsByGoodsName(goodsName);
		// 对评论内容进行解码处理(采用UTF-8编码格式)
		String meg = null;
		for(Comment com:comments) {
			try {
				// URLDecoder.decode——解码， URLEncoder.encode——编码 (采用UTF-8编码格式)
				meg = URLDecoder.decode(com.getCommentMessage(), "utf-8");
				// 屏蔽掉敏感内容
				meg = meg.replaceAll("(共产党)|(操)","*");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 
			com.setCommentMessage(meg);
		}	
		return comments;
	}

	// 添加评论
	@Override
	public int addNewComment(Comment comment) {
		// 对评论内容进行编码处理(采用UTF-8编码格式)
		String meg = null;
		try {
			// 对内容进行解码处理(采用UTF-8编码格式)
			meg = URLEncoder.encode(comment.getCommentMessage(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		comment.setCommentMessage(meg);
		return commentsMapperXF.addNewComment(comment);
	}

	// 根据 userId 获取所有的评论信息
	@Override
	public List<Comment> findAllCommentById(String userId) {
		List<Comment> comments=commentsMapperXF.findAllCommentById(userId);
		// 对评论内容进行解码处理(采用UTF-8编码格式)
		String meg = null;
		for(Comment com:comments) {
			try {
				// URLDecoder.decode——解码， URLEncoder.encode——编码 (采用UTF-8编码格式)
				meg = URLDecoder.decode(com.getCommentMessage(), "utf-8");
				// 屏蔽掉敏感内容
				meg = meg.replaceAll("(共产党)|(操)","*");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 
			com.setCommentMessage(meg);
		}	
		return comments;
	}

	// 根据 userId 和 commentId 删除表 comment 中对应的记录
	@Override
	public int delCommentByUidAndCommentId(String userId, Integer commentId) {
		return commentsMapperXF.delCommentByUidAndCommentId(userId,commentId);
	}  
  
}
