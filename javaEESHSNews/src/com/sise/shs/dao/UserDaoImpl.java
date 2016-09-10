package com.sise.shs.dao;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.sise.shs.po.News;
import com.sise.shs.po.User;

/**
 * 
 * 项目名称：javaEESHSNews 类名称：UserDaoImpl 类描述： 创建人：林生 创建时间：2015年12月15日 下午4:55:57
 * 修改人：riikang 修改时间：2015年12月15日 下午4:55:57 修改备注：
 * 
 * @version 1.0.0
 * 
 */

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	public List<User> getUsers() {
		List<User> users = (List<User>) getHibernateTemplate()
				.find("from User");
		return users;
	}
	public User findUser(Integer id) {
		return getHibernateTemplate().get(User.class, id);
	}
	public List<User> findByUid(String s) {
		List<User> users=(List<User>) getHibernateTemplate().find("from User where uid='"+s+"' ");
		return users;
	}
	public void saveUser(User user) {
		getHibernateTemplate().persist(user);
	}
	public void removeUser(User user) {
		getHibernateTemplate().delete(user);
	}
	public void updateUser(User user) {
		getHibernateTemplate().update(user);
	}

}
