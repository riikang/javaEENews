package com.sise.shs.dao;

import java.util.List;

import com.sise.shs.po.News;
import com.sise.shs.po.User;

/**
 * 
 * 项目名称：javaEESHSNews 类名称：UserDao 类描述： 创建人：林生 创建时间：2015年12月15日 下午4:53:18
 * 修改人：riikang 修改时间：2015年12月15日 下午4:53:18 修改备注：
 * 
 * @version 1.0.0
 * 
 */

public interface UserDao {
	public List<User> getUsers();

	public User findUser(Integer id);
	

	public void saveUser(User user);

	public void removeUser(User user);

	public void updateUser(User user);
	public List<User> findByUid(String s);
}
