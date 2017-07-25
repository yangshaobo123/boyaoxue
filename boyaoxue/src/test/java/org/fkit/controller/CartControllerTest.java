package org.fkit.controller;

import static org.junit.Assert.*;

import org.fkit.service.CartService;
import org.fkit.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import bo.ec.cumt.testnoe;

public class CartControllerTest extends testnoe{
	@Autowired
	@Qualifier("cartService")
	private CartService cartService;
	
	@Before
	public void setUp() throws Exception {
	}	
	@Test
	public void testClear() {
		cartService.clearCart();
		System.out.println("清除购物车成功");
	}

	@Test
	public void testAddCart() {
		cartService.addCart(0);
		System.out.println("添加购物车成功");
	}

	@Test
	public void testReduce() {
		cartService.reduceCart(0);
		System.out.println("减少购物车成功");
	}

	@Test
	public void testRemove() {
		cartService.removeCart(0);
		System.out.println("移除购物车成功");
	}

}
