/**
 * 
 */
package com.sise.shs.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sise.shs.po.News;
import com.sise.shs.service.NewsService;

/**
 * 
 * ��Ŀ��ƣ�javaEESHS ����ƣ�PersonAction �������� �����ˣ����� ����ʱ�䣺2015��12��9��
 * ����3:07:50 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��9�� ����3:07:50 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public class NewsAction extends ActionSupport {
	@Resource private NewsService newsService;
	private String message;
	private List<News> newss;
	private News news;
	private String search;
	private String idString;
	
	public String getIdString() {
		return idString;
	}
	public void setIdString(String idString) {
		this.idString = idString;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
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
	// Action方法
	public String addInput() {
		return "add_input";
	}
	public News getIdNews(Integer id) {
		news = newsService.findById(id);
		return news;
	}
	public String updateStart() {
		getIdNews(news.getId());
		return "update_start";
	}
	public String update() {
		newsService.updateNews(news);
		return "update";
	}
	public String list() {
		if (checkLogin().equals("notin")) {
			return "login";
		}
		newss = newsService.findAllNews();
		return "list";
	}
	public String remove() {
		newsService.removeNews(news.getId());
		return "remove";
	}
	public String findNews() {
		news = newsService.findById(news.getId());
		return "findNews";
	}
	public String searchNews() {
		int index = search.indexOf(" ");
		if (index >= 8) {
			String time[] = search.split(" ");
			newss = newsService.findByTime(time[0], time[1]);
		} else {
			newss = newsService.findByTitle(search);
		}
		return "search";
	}
	public String checkLogin() {
		ActionContext ctx = ActionContext.getContext();
		Map session = ctx.getSession();
		String user = (String) session.get("uname");
		if (user.equals("您还未登录")) {
			session.put("tip", "您还未登录");
			return "notin";
		}
		return "login";
	}
	public String login() {
		return "login";
	}
	public String logout() {
		ActionContext.getContext().getSession().remove("uname");
		return "logout";
	}
    public String onType() {
    	if(news.getType().equals("所有类型")){
    		newss=newsService.findAllNews();
    		return "search";
    	}
    	newss=newsService.findByType(news.getType());
		return "search";
	}	
    public String removes(){
    	String ss[];
    	ss=idString.split(", ");
    	int id[]=new int[ss.length];
    	for (int i = 0; i < ss.length; i++) {
			id[i]=Integer.valueOf(ss[i]);
			newsService.removeNews(id[i]);
		}
		return "remove";
	}
    public String  singleNews() {
    	news = newsService.findById(news.getId());
		return "singleNews";
	}
    public String findNew() {
		newss=newsService.findByNew();
		return "new";
	}
    public String findNeww(){
    	newss=newsService.findByNew(news.getType());
    	return "new";
    }
    
}
