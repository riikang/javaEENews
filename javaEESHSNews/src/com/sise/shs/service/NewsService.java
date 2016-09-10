/**
 * 
 */
package com.sise.shs.service;

import java.util.List;

import com.sise.shs.po.News;

/**
 * 
 * ��Ŀ��ƣ�javaEESHS ����ƣ�PersonService �������� �����ˣ�����
 * ����ʱ�䣺2015��12��9�� ����3:00:26 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��9��
 * ����3:00:26 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public interface NewsService {
	public void addNews(News news);
	public List<News> findByType(String type);
	public void removeNews(Integer id);
	public List<News> findAllNews();
	public News findById(Integer id);
	public void updateNews(News news);
	public List<News> findByTitle(String title);
	public List<News> findByTime(String time1, String time2);
	public List<News> findByNew();
	public List<News> findByNew(String type);
}
