package org.fkit.service.impl;

import org.fkit.domain.User;
import org.fkit.mapper.UserMapper;
import org.fkit.service.UserService;
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
@Service("userService")
public class UserServiceImpl implements UserService {
	
	/**
	 * 自动注入UserMapper
	 * */
	@Autowired
	private UserMapper userMapper;

	/**
	 * UserService接口login方法实现
	 * @see { UserService }
	 * */
	@Transactional(readOnly=true)
	@Override
	public User login(String loginname, String password) {
		return userMapper.findWithLoginnameAndPassword(loginname, password);
	}	
	@Override
	public void register(String username,String loginname, String password , String phone, String address) {
		userMapper.insertInformation(username,loginname, password, phone, address);
		// TODO Auto-generated method stub
		
	}	
	@Override
	public  User login2(String loginname){		
    return userMapper.find2(loginname);
		// TODO Auto-generated method stub		
	}
	
	@Override
	public User alterpassword(String username,String password) {

	    return userMapper.updateuser(username,password);

	}
	@Transactional(readOnly=true)
	@Override
	public User forgetpwd(String username,String loginname) {
		return userMapper.findWithLoginnameAndEmail(username,loginname);
	}

}
