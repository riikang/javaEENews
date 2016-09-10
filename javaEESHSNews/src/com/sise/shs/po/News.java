/**
 * 
 */
package com.sise.shs.po;

import java.sql.Date;

/**
 * 
 * ��Ŀ��ƣ�javaEESHNews ����ƣ�News �������� �����ˣ����� ����ʱ�䣺2015��11��24��
 * ����5:05:49 �޸��ˣ�riikang �޸�ʱ�䣺2015��11��24�� ����5:05:49 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public class News {
	private Integer id;
	private String title;
	private String pubdate;
	private String contents;
	private String source;
	private String type;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPubdate() {
		return pubdate;
	}

	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

}
