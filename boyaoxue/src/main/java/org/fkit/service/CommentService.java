package org.fkit.service;

import org.fkit.domain.Book;
import org.fkit.domain.Comment;

public interface CommentService {
/**
 * 输入评论
 */
	
void saveComment_(String service,String logistics,String quality,String image1,String comments);
}
