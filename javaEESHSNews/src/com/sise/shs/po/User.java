package com.sise.shs.po;

/**
 * 
 * ��Ŀ��ƣ�javaEESHSNews ����ƣ�user �������� �����ˣ����� ����ʱ�䣺2015��12��13��
 * ����3:50:11 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��13�� ����3:50:11 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public class User {

	private Integer id;
	private String uid;
	private String uname;
	private String password;

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
