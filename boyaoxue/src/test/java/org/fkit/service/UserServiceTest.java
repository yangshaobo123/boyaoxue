package org.fkit.service;

import static org.junit.Assert.*;
import org.fkit.service.UserService;
import org.fkit.domain.User;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import bo.ec.cumt.testnoe;

public class UserServiceTest extends testnoe {

	@Autowired
	@Qualifier("userService")
	private UserService userService;
	 
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testLogin() {
		String loginname="shaobo";
		String password="0816";		
		userService.login(loginname, password);
		System.out.println("注册成功");
	}
	//测试用户注册的功能
	@Test
	public void testRegister() {
		
		userService.register("shaobo", "12345", "123", "15262041069", "CUMT");;
		System.out.println("测试用户注册的功能");
	}

	@Test
	public void testForgetpwd() {
		String username="xiuxiu1";
		String loginname="18220761947@163.com";
		User user=userService.forgetpwd(username,loginname);
		System.out.println("您的密码是："+user.getPassword());
	}

}
