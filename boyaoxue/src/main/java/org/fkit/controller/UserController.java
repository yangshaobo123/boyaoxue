package org.fkit.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	/**
	 * 处理/login请求
	 * */

	@RequestMapping(value="/login")
	 public ModelAndView login(
			 String loginname,String password,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		User user = userService.login(loginname, password);
		if(user != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user);
			// 转发到main请求
			mv.setView(new RedirectView("./first_index"));
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	
		
		@RequestMapping(value="/register")
		 public String  register(
				 String loginname,String username,String password,String phone,String address,
				 Model model){
			  userService.register(loginname, username, password ,phone, address);
			
				
			    return "loginForm";
			
	}	
		
		
		
		@RequestMapping(value="/redopassword1")
		public ModelAndView alterpassword(String username, String password,
		 ModelAndView mv,
		 HttpSession session){
			User redo = userService.alterpassword (username,password);			
		    mv.setViewName("loginForm");
			return mv; 	
	  }
	  
		@RequestMapping(value="/forgetpwd1")
		 public ModelAndView find(String username,String loginname,ModelAndView mv,HttpSession session,HttpServletResponse response) throws Exception{		
			User user=userService.forgetpwd( username,loginname);
			System.out.println("1");
			if(user!=null){
				StringBuffer url=new StringBuffer();
				StringBuilder builder=new StringBuilder();
				builder.append("");
				url.append("您的密码是："+user.getPassword()+"");
				builder.append("");
				builder.append(""+url+"");
				builder.append("");
				SimpleEmail sendemail=new SimpleEmail();
				sendemail.setHostName("smtp.163.com");
				sendemail.setAuthentication("m15262041069@163.com","yang1234");
				sendemail.setCharset("UTF-8");
				
				try{
					sendemail.setCharset("UTF-8");
					sendemail.addTo(loginname);
					sendemail.setFrom("m15262041069@163.com");
					sendemail.setSubject("找回密码");
					sendemail.setMsg(builder.toString());
					sendemail.send();
					//System.out.println("123");
				}catch(EmailException e){
					e.printStackTrace();
					System.out.print("抛出异常");
				}
				

				mv.setViewName("loginForm");
			
			}else{
				
				response.getWriter().println("密码获取失败");
				
			}	
			return mv;
		}

		

}
/*	@RequestMapping(value="/register")
    public ModelAndView register(
		 String loginname,String password,String username,String phone,String address,
		 ModelAndView mv,
		 HttpSession session){
        根据登录名和密码查找用户，判断用户登录
	if (!loginname.equals("")&&!password.equals("")&&!username.equals(""))
	User user = userService.login2(loginname);
	if(user != null){
		// 登录成功，将user对象设置到HttpSession作用范围域
		map.addAttribute("message","您曾经已经用此登录名注册过，请直接登录！")
		// 转发到main请求
		return "loginForm"
	}else{
		int user=userService.register(username, loginname, password, phone, address);
		map.addAttribute("message","您已注册成功，请登录！");
		return "loginForm";
	}}else{
		// 登录失败，设置失败提示信息，并跳转到登录页面
		map.addAttribute("message", "登录名或密码错误，请重新输入!");
		return "register";
	}
	
	//修改密码草稿
		System.out.println("redo");
			
			if(redo!=null){
				session.setAttribute("redo", redo);
				mv.setViewName("loginForm");
			}
			else{
				mv.addObject("message","你的输入有误，修改密码错误！");
				mv.setViewName("redopassword");
				
			}
			//
	
	
*/	
