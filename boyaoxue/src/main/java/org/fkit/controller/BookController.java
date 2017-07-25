package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.domain.Book;
import org.fkit.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 处理图书请求控制器sd
 * */
@Controller
public class BookController {
	
	/**
	 * 自动注入BookService
	 * */
	@Autowired
	@Qualifier("bookService")
	private BookService bookService;

	/**
	 * 处理/main请求
	 * */
	@RequestMapping(value="/main")
	 public String main(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("book_list", book_list);
		// 跳转到main页面
		return "main";
	}
	

	@RequestMapping(value="/shop_first")
	 public String shop_first(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("book_list", book_list);
		// 跳转到main页面
		return "shop_first";
	}

	@RequestMapping(value="/shop_second")
	 public String shop_second(Model model){
		// 获得所有图书集合
		List<Book> book_list = bookService.getAll();
		// 将图书集合添加到model当中
		model.addAttribute("book_list", book_list);
		// 跳转到main页面
		return "shop_second";
	}
	
	@RequestMapping(value="/details")
	 public String one(@RequestParam int book_id,Model model,HttpSession session){
			// 获得一个图书
		    Book book= bookService.getone(book_id);
			// 将图书集合添加到model当中
			session.setAttribute("book", book);
			// 跳转到main页面
			return "details";
			
		}
	
}
