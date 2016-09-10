/**
 * 
 */
package com.sise.shs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.sise.shs.dao.NewsDao;
import com.sise.shs.po.News;

/**
 * 
 * ��Ŀ��ƣ�javaEESHS ����ƣ�newsServiceImpl �������� �����ˣ�����
 * ����ʱ�䣺2015��12��9�� ����3:02:57 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��9��
 * ����3:02:57 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */
@Transactional(readOnly = false)
public class NewsServiceImpl implements NewsService {
	@Resource private NewsDao newsDao;
	public void addNews(News news) {
		newsDao.saveNews(news);
	}
	public void updateNews(News news) {
		newsDao.updateNews(news);
	}
	public void removeNews(Integer id) {
		News news = newsDao.findNews(id);
		newsDao.removeNews(news);
	}
	public List<News> findAllNews() {
		return newsDao.getNews();
	}
	public News findById(Integer id) {
		return newsDao.findNews(id);
	}
	public List<News> findByTime(String time1, String time2) {
		return newsDao.findByTime(time1, time2);
	}
	public List<News> findByTitle(String title) {
		return newsDao.findByTitle(title);
	}
	public List<News> findByType(String type) {
		return newsDao.findByType(type);
	}
	public List<News> findByNew(){
		return newsDao.findByNew();
	}
	public List<News> findByNew(String type){
		return newsDao.findByNew(type);
	}

}
