package com.sise.shs.service;

import java.util.List;

import com.sise.shs.po.News;
import com.sise.shs.po.User;

/**
 * 
 * 项目名称：javaEESHSNews 类名称：UserService 类描述： 创建人：林生 创建时间：2015年12月15日 下午5:05:03
 * 修改人：riikang 修改时间：2015年12月15日 下午5:05:03 修改备注：
 * 
 * @version 1.0.0
 * 
 */

public interface UserService {
	public List<User> findAllUsers();

	public User findById(Integer id);
	public List<User> findByUid(String s);

	public void addUser(User user);

	public void updateUser(User user);

	public void removeUser(Integer id);
}
