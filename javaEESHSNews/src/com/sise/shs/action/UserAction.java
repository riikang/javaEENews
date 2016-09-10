package com.sise.shs.action;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sise.shs.po.News;
import com.sise.shs.po.User;
import com.sise.shs.service.NewsService;
import com.sise.shs.service.UserService;

/**
 * 
 * 项目名称：javaEESHSNews 类名称：UserAction 类描述： 创建人：林生 创建时间：2015年12月15日 下午5:19:12
 * 修改人：riikang 修改时间：2015年12月15日 下午5:19:12 修改备注：
 * 
 * @version 1.0.0
 * 
 */

public class UserAction extends ActionSupport {
	@Resource
	private UserService userService;
	private List<User> users;
	private User user;

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	// Action方法
	public String start() {
		return "start_register";
	}

	public String doing() {
		users=userService.findByUid(user.getUid());
		if(users.isEmpty()){
			userService.addUser(user);
			return SUCCESS;
		}
		addFieldError("user.uid","用户名已存在");
		return INPUT;
	}
	
	public String loginCheck() {
		users=userService.findByUid(user.getUid());
		if(users.isEmpty()){
			addFieldError("user.uid", "用户名不存在");
			return "notin";
		}
		if(!user.getPassword().equals(users.get(0).getPassword())){
			addFieldError("user.password", "密码输入不正确");
			return "notin";
		}
		ActionContext.getContext().getSession().put("uname", users.get(0).getUname());
		return SUCCESS;
	}

}
