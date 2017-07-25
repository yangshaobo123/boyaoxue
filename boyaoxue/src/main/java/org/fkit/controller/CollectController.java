package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.fkit.domain.Collect;
import org.fkit.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CollectController {
	/**
	 * 自动注入CollectService
	 */
	@Autowired
	@Qualifier("collectService")
	private CollectService collectService;
	/**
	 * 添加收藏
	 */
	
	@RequestMapping(value="/saveCollect")	
	public String save(@RequestParam("loginname")String loginname,
			@RequestParam("book_id")Integer book_id,
			HttpServletRequest request,
			Model model,
			@ModelAttribute Collect collect){
		 Collect collect1 = collectService.findCollect(loginname, book_id);
		 
		if(collect1 != null){
			
		}else{
			collectService.saveCollect(collect);
		}
		//获得所有图书集合
		List<Collect> collect_list = collectService.getAllCollectByLoginname(loginname);
		//将图书集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		//跳转到collect页面
		return "collection";
	}
	/**
	 * 处理/collect请求
	 */
	@RequestMapping(value="/collect")
	public String collect(String loginname,
			Model model){
		//获得所有商品集合
		List<Collect> collect_list = collectService.getAllCollectByLoginname(loginname);
		//将商品集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		//跳转到collect页面
		return "collection";
	}
	/**
	 * 处理/clearcollect请求
	 */

	/**
	 * 处理/removecollect请求
	 */
	@RequestMapping(value="/removecollect")
	public String remove(@RequestParam("loginname")String loginname,
			@RequestParam("book_id")Integer book_id,
			HttpServletRequest request,
			Model model,
			@ModelAttribute Collect collect){
		collectService.removeCollect(loginname, book_id);
		//获得所有商品集合
		List<Collect> collect_list = collectService.getAllCollectByLoginname(loginname);
		//将商品集合添加到model当中
		model.addAttribute("collect_list", collect_list);
		//跳转到collect页面
		return "collection";
	}
}
