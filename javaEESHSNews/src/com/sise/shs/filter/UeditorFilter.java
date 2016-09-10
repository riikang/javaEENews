package com.sise.shs.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareAndExecuteFilter;

/**   
 *    
 * 项目名称：javaEESHSNews   
 * 类名称：UeditorFilter   
 * 类描述：   
 * 创建人：林生
 * 创建时间：2015年12月18日 下午10:54:20   
 * 修改人：riikang   
 * 修改时间：2015年12月18日 下午10:54:20   
 * 修改备注：  
 * @version 1.0.0   
 *    
 */

public class UeditorFilter extends StrutsPrepareAndExecuteFilter {
	
	public void doFilter(ServletRequest req,ServletResponse res, FilterChain chain) 
			throws IOException,ServletException {
		HttpServletRequest request =(HttpServletRequest) req;
		String url=request.getRequestURI();
		if(url.endsWith("controller.jsp")){
			chain.doFilter(req, res);
		}
		else{
			super.doFilter(req, res, chain);
		}
	}
}
