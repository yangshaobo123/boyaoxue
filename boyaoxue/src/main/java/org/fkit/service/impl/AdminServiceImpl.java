package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Admin;
import org.fkit.domain.Order;
import org.fkit.domain.Book;
import org.fkit.mapper.AdminMapper;
import org.fkit.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
	/**
	 * User服务层接口实现类
	 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
	 * */
	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
	@Service("adminService")
	public class AdminServiceImpl implements AdminService {
		
		/**
		 * 自动注入UserMapper
		 * */
		@Autowired
		private AdminMapper adminMapper;

		/**
		 * UserService接口login方法实现
		 * @see { UserService }
		 * */
		@Transactional(readOnly=true)
		@Override
		public Admin adminlogin(String adminname, String adminpassword) {
			// TODO Auto-generated method stub
			return adminMapper.findWithLoginnameAndPassword(adminname, adminpassword);
		}
		@Override		
		public Book addproduct(String name, String author,String price, String image, String remark,
				String fimage, String simage,  int count, int cart_id) {
			// TODO Auto-generated method stub
			return adminMapper.addproduct(name,author,price, image,remark,fimage, simage, count,cart_id);
		}
		@Override
		public List<Order> getAll() {
			// TODO Auto-generated method stub
			return adminMapper.findAll();
		}

		@Override
		public Order updateorder(int oid, String status, String totalprice, String phone,
				String address) {
			// TODO Auto-generated method stub
			return adminMapper.updateorder(oid, status, address, phone, totalprice);
		}

		@Override
		public List<Book> getAll1() {
			// TODO Auto-generated method stub
			return 	adminMapper.findAll1();
		
}

		@Override
		public Book updatestock(int id, String name, String stock, String sales) {
			// TODO Auto-generated method stub
			return adminMapper.updatestock(id, name,stock,sales);
		}

		@Override
		public void decart(int id) {
			// TODO Auto-generated method stub
			adminMapper.decart(id);
		}

	

	
}
