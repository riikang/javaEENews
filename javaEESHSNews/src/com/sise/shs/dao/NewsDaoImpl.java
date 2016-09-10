/**
 * 
 */
package com.sise.shs.dao;

import java.util.Date;
import java.util.List;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import com.sise.shs.po.News;

/**
 * 
 * ��Ŀ��ƣ�javaEESHS ����ƣ�PersonDaoImpl �������� �����ˣ�����
 * ����ʱ�䣺2015��12��9�� ����2:43:15 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��9��
 * ����2:43:15 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao {
	public List<News> getNews() {
		List<News> news = (List<News>) getHibernateTemplate().find("from News");
		return news;
	}
	public List<News> findByNew(){
		List<News> news=(List<News>)getHibernateTemplate().find("from News order by id desc").subList(0, 4);
		return news;
	}
	public List<News> findByNew(String type){
		List<News> news=(List<News>)getHibernateTemplate().find("from News where type='"+type+"'");
		return news;
	}
	
	public List<News> findByType(String type) {
		List<News> news=(List<News>)getHibernateTemplate().find("from News where type='"+type+"'");
		return news;
	}
	public News findNews(Integer id) {
		return getHibernateTemplate().get(News.class, id);
	}
	public List<News> findByTime(String time1, String time2) {
		List<News> news = (List<News>) getHibernateTemplate().find("from News where pubdate between '" 
	+ time1 + "' and '" + time2+ "'");
		return news;
	}
	public List<News> findByTitle(String title) {
		List<News> news = (List<News>) getHibernateTemplate().find("from News where title like '%" 
	+ title + "%'");
		return news;
	}
	public void saveNews(News news) {
		String s = (new java.text.SimpleDateFormat("yyyy-MM-dd"))
				.format(new Date());
		news.setPubdate(s);
		getHibernateTemplate().persist(news);
	}
	public void removeNews(News news) {
		getHibernateTemplate().delete(news);
	}
	public void updateNews(News news) {
		String s = (new java.text.SimpleDateFormat("yyyy-MM-dd"))
				.format(new Date());
		news.setPubdate(s);
		getHibernateTemplate().update(news);
	}
}
