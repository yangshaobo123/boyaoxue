package org.fkit.controller;

import static org.junit.Assert.*;

import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import bo.ec.cumt.testnoe;

public class UserControllerTest extends testnoe{
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	@Test
	public void testLogin() {
		User user = userService.login("shaobo", "0816");
		if(user != null){
			System.out.println("登录成功");
		}else{
			System.out.println("登录失败");
		}
	}

	@Test
	public void testRegister() {
		userService.register("123", "123", "1234", "1233444", "18202761947@163.com");
		System.out.println("注册成功");
		
	}

	@Test
	public void testAlterpassword() {
		userService.alterpassword("休休", "123");
		System.out.println("修改密码成功");
	}

	@Test
	public void testFind() {
		userService.forgetpwd("123", "18220761947@163.com");
		System.out.println("找回密码成功");
	}

}
