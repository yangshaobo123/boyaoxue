package org.fkit.service.impl;


import org.fkit.domain.Comment;
import org.fkit.mapper.CommentMapper;
import org.fkit.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Transactional (propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("commentService")
public class CommentServiceImpl implements CommentService{
/**
 * 自动注入持久层dao对象
 */
@Autowired
private CommentMapper commentMapper;
/**
 * 输入评论1
 */

@Override
public void saveComment_(String service, String logistics, String quality, String image1, String comments) {
	// TODO Auto-generated method stub
	// TODO Auto-generated method stub
				 commentMapper.saveComment_(service,logistics,quality,image1,comments);
	
}
}
