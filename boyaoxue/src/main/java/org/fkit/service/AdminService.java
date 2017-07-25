package org.fkit.service;

import java.util.List;

import org.fkit.domain.Admin;
import org.fkit.domain.Order;
import org.fkit.domain.Book;


public interface AdminService {
		
		/**
		 * 判断用户登录
		 * @param String loginname
		 * @param String password
		 * @return 找到返回User对象，没有找到返回null
		 * */
		Admin adminlogin(String adminname,String adminpassword);
		
		Book addproduct(String name, String author, String price, String image, String remark, String fimage,
				String simage, int count, int cart_id);

		List<Order> getAll();

		Order updateorder(int oid, String status, String totalprice, String phone, String address);

		List<Book> getAll1();

		Book updatestock(int id, String name, String stock, String sales);
		
		void decart(int id);
}
