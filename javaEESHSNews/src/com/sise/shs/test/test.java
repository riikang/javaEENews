package com.sise.shs.test;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * ��Ŀ��ƣ�javaEESHSNews ����ƣ�test �������� �����ˣ����� ����ʱ�䣺2015��12��9��
 * ����10:23:20 �޸��ˣ�riikang �޸�ʱ�䣺2015��12��9�� ����10:23:20 �޸ı�ע��
 * 
 * @version 1.0.0
 * 
 */

public class test {

	public static void main(String[] args) {
		//String s = (new java.text.SimpleDateFormat("yyyy-MM-dd"))
				//.format(new Date());
		//java.sql.Date.valueOf(s);
		System.out.println(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
	}

}
