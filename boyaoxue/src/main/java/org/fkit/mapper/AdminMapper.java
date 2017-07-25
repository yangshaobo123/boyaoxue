package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.fkit.domain.Admin;
import org.fkit.domain.Cart;
import org.fkit.domain.Collect;
import org.fkit.domain.Order;
import org.fkit.domain.Book;
import org.fkit.domain.User;

public interface AdminMapper {
		
		/**
		 * 根据登录名和密码查询用户
		 * @param String loginname
		 * @param String password
		 * @return 找到返回User对象，没有找到返回null
		 * */
		@Select("select * from tb_admin where adminname = #{adminname} and adminpassword = #{adminpassword}")
		Admin findWithLoginnameAndPassword(@Param("adminname")String adminname,@Param("adminpassword") String adminpassword);
		                                                    
		@Select("insert into tb_book(name,author,price, image,remark,fimage,simage,count,cart_id) values (#{name},#{author},#{price},#{image},#{remark},#{fimage},#{simage},#{count},#{cart_id})")
		Book addproduct(@Param("name")String name,@Param("author")String author,@Param("price")String price,@Param("image")String image,@Param("remark")String remark,@Param("fimage")String fimage,
				@Param("simage")String simage,@Param("count")int count,@Param("cart_id")int cart_id);
		@Select(" select * from tb_order ")
		List<Order> findAll();

		@Select("update tb_order set status=#{status} ,address=#{address},phone=#{phone},totalprice=#{totalprice}, oid=#{oid} where id=#{oid}")
		Order updateorder(@Param("id")int oid,@Param("status")String status,@Param("address")String address,@Param("phone")String phone,@Param("totalprice")String totalprice);

		@Select(" select * from tb_book ")
		List<Book> findAll1();
		
		@Select("update tb_book set name=#{name},stock=#{stock},sales=#{sales} where id=#{id}")
		Book updatestock(@Param("id")int id,@Param("name")String name,@Param("stock")String stock,@Param("sales")String sales);

		@Delete("delete from tb_book where id=#{id}")
	
		void decart(int id);
		
}
