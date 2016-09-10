/**
 * 
 */
package com.sise.shs.dao;

import java.util.List;

import com.sise.shs.po.News;

/**
 * 
 * ��Ŀ��ƣ�javaEESpH ����ƣ�PersonDao �������� �����ˣ����� ����ʱ�䣺2015��12��7��
 * ����11:26:30 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��7�� ����11:26:30 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public interface NewsDao {
	public List<News> getNews();
	public News findNews(Integer id);
	public List<News> findByType(String type);
	public void saveNews(News news);
	public void removeNews(News news);
	public void updateNews(News news);
	public List<News> findByTitle(String title);
	public List<News> findByTime(String time1, String time2);
	public List<News> findByNew();
	public List<News> findByNew(String type);
}
