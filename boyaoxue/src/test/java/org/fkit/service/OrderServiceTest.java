package org.fkit.service;

import static org.junit.Assert.*;

import java.util.List;

import org.fkit.domain.Order;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import bo.ec.cumt.testnoe;

public class OrderServiceTest extends testnoe {

	@Autowired
	@Qualifier("orderService")
	private OrderService orderService;
	
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testGetAll() {
	List<Order> order_list=orderService.getAll();
		System.out.println(order_list);
	}

	
}
