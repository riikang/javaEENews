package com.sise.shs.action;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.sise.shs.po.News;
import com.sise.shs.service.NewsService;

/**
 * 
 * 项目名称：javaEESHSNews 类名称：AddNewsAction 类描述： 创建人：林生 创建时间：2015年12月15日 下午1:30:08
 * 修改人：riikang 修改时间：2015年12月15日 下午1:30:08 修改备注：
 * 
 * @version 1.0.0
 * 
 */

public class AddNewsAction extends ActionSupport {
	@Resource
	private NewsService newsService;
	private String message;
	private List<News> newss;
	private News news;

	public List<News> getNewss() {
		return newss;
	}
	

	public void setNewss(List<News> newss) {
		this.newss = newss;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String add() {
		if (news != null) {
			if (news.getSource().equals("") || news.getSource() == null) {
				news.setSource("未知");
			}
			newsService.addNews(news);
			return "add";
		}
		return INPUT;
	}

}
