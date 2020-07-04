package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.Comment;

public interface CommentsMapperXF {

	List<Comment> findAllComments();

	Comment findCommentById(Integer commentId);

	int commentIspassById(@Param("commentId") Integer commentId,
			@Param("commentIspass") Integer commentIspass);  
}
