package org.fkit.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.User;

/**
 * UserMapper接口
 * */
public interface UserMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from tb_user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);
	@Insert("insert into tb_user(username,loginname,password,phone,address) values(#{username},#{loginname},#{password},#{phone},#{address})")
    void insertInformation(
   	  @Param("username")String username,
   	  @Param("loginname")String loginname, 
   		  @Param("password")String password,
   		  @Param("phone")String phone,
   		  @Param("address")String address);
	
	 @Select("select * from tb_user where loginname = #{loginname} ")
	   User find2(String loginname);
	 
	 @Select("insert into tb_user(loginname,password,username,email,phonenumber) values(#{loginname},#{password},#{username},#{email},#{phonenumber})")
		User insertuser(@Param("loginname")String loginname,@Param("password")String password,@Param("username")String username,
				@Param("email")String email,@Param("phonenumber")String phonenumber);
		
	
	@Select("update tb_user set password=#{password} where username=#{username}" )
	User updateuser(@Param("username") String username,@Param("password") String password);
	 
	@Select("select * from tb_user where username=#{username} and loginname = #{loginname}")
	User findWithLoginnameAndEmail(@Param("username") String username,@Param("loginname")String loginname);
			
}
  