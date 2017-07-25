package org.fkit.controller;

import javax.servlet.http.HttpSession;

import org.fkit.domain.Book;
import org.fkit.domain.Comment;
import org.fkit.service.BookService;
import org.fkit.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommentController {
	/**
	 * 自动注入CommentService
	 */
	@Autowired
	@Qualifier("commentService")
	private CommentService  commentService;
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;
	/**
	 * 添加评论
	 */

//	添加评论
	 @RequestMapping(value="/addcomment")
	 public ModelAndView saveComment_(				     
				     String service,			   
				     String logistics,
				     String quality,
				     String image1,
				     String comments,				    				    				   
					 ModelAndView mv,
				     HttpSession session){
		
		 commentService.saveComment_(service,logistics,quality,image1,comments);
	     mv.setViewName("order");	
			return mv;
	
	 }							
	@RequestMapping(value="/comment")
	 public String one(@RequestParam int book_id,Model model,HttpSession session){
			// 获得一个图书
		    Book book= bookService.getone(book_id);
			// 将图书集合添加到model当中
			session.setAttribute("book", book);
			// 跳转到main页面
			return "comment";
			
		}
	
}
