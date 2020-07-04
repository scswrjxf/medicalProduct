package com.service;

import java.util.List;

import com.pojo.Comment;

public interface CommentsServiceXF {

	List<Comment> findAllComments();

	Comment findCommentById(Integer commentId);

	int commentIspassById(Integer commentId, Integer commentIspass);

	List<Comment> findAllCommentsByGoodsName(String goodsName);

}
