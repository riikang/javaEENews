package com.sise.shs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.sise.shs.dao.UserDao;
import com.sise.shs.po.User;

/**
 * 
 * 项目名称：javaEESHSuser 类名称：UserServiceImpl 类描述： 创建人：林生 创建时间：2015年12月15日 下午5:08:20
 * 修改人：riikang 修改时间：2015年12月15日 下午5:08:20 修改备注：
 * 
 * @version 1.0.0
 * 
 */
@Transactional(readOnly = false)
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	public List<User> findAllUsers() {
		return userDao.getUsers();
	}
	public User findById(Integer id) {
		return userDao.findUser(id);
	}
	public List<User> findByUid(String s) {
		return userDao.findByUid(s);
	}
	public void addUser(User user) {
		userDao.saveUser(user);
	}
	public void updateUser(User user) {
		userDao.updateUser(user);
	}
	public void removeUser(Integer id) {
		User user = userDao.findUser(id);
		userDao.removeUser(user);
	}

}
