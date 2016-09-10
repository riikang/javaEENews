<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>添加新闻</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="news" />
	<link href="<%=path%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/style.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/table.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/slide.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>/css/addTable.css" rel="stylesheet"  type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="UEditor/ueditor.config.js"></script>
	<script type="text/javascript" src="UEditor/ueditor.all.js"></script>
	<link rel="stylesheet" href="UEditor/themes/default/css/ueditor.css">
	<script src="<%=path%>/js/jquery.js"></script>
	<script src="<%=path%>/js/slide.js"></script> 
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  </head>
  <body>
<!---header---->			
	<div class="header">  
	 	<div class="container">
			<div class="logo">
				<a href="index.html"><img src="images/logo.jpg" title="" /></a>
			</div>
<!---start-top-nav---->
		  	<div class="top-menu">
				<div class="search">
					<form>
					 	<input type="text" placeholder="" required>
					 	<input type="submit" value=""/>
					</form>
				</div>
				<span class="menu"> </span> 
				<ul>
					<li><a href="news/findNewAction.action">主页</a></li>
                	<li><a href="news/listAction.action">管理新闻</a></li>						
					<li class="active"><a href="news/addInputAction.action">添加新闻</a></li>
					<li><a href="news/start_registerAction.action">添加管理员</a></li>	
					<li><a>当前管理员：<%=ActionContext.getContext().getSession().get("uname") %></a></li>	
					<li><a href="news/logoutAction.action">退出登录</a></li>								
					<div class="clearfix"></div>
				</ul>
			</div>
			<div class="clearfix"></div>
<!---//End-top-nav---->					
	 	</div>
	</div>
<!--/header-->

	<div class="content">
	 	<div class="container">
      		<div class="content-grids">	
      		<!-- Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>添加新闻</h2>
					</div>
					<!-- End Box Head -->
					
					<s:form action="addAction" namespace="/news">
						
						<!-- Form -->
						<div class="form">
								<p>
									<span class="req">最大40字节</span>
									<label>新闻标题<span>&nbsp;*必填&nbsp;&nbsp;${errors["news.title"][0]}</span></label>
									<input type="text" name="news.title" class="field size1" />
								</p>
                                <p>
									<span class="req">最大20字节</span>
									<label>新闻来源<span>&nbsp;${errors["news.source"][0]}</span> </label>
									<input type="text" name="news.source" class="field size1" />
								</p>
								<p>
									<span class="req"></span>
									<label>新闻类型&nbsp;&nbsp;
									<select name="news.type" id="sel1">
										<option value="请选择">请选择</option>
										<option value="社会">社会</option>
										<option value="军事">军事</option>
										<option value="娱乐">娱乐</option>
										<option value="国际">国际</option>
										<option value="经济">经济</option>
										<option value="科技">科技</option>
									</select>
									<span>&nbsp;&nbsp;${errors["news.type"][0]}</span>
									</label>
								</p>	
								<p>
									<span class="req"></span>
									<label>新闻内容<span>&nbsp;*必填&nbsp;&nbsp;${errors["news.contents"][0]}</span></label>
									<textarea name="news.contents" id="myEditor" class="field size1" rows="10" cols="30" style="resize:none;"></textarea>
									<script type="text/javascript">
										UE.getEditor('myEditor');
									</script>
								</p>	
						</div>
						<!-- End Form -->
						
						<!-- Form Buttons -->
						<div class="buttons">
							<input type="reset" class="button" value="重置" />
							<input type="submit" class="button" value="提交" />
						</div>
						<!-- End Form Buttons -->
					</s:form>
				</div>
				<!-- End Box -->
    			    		
      		</div>
      	</div>
    </div> 
    
    <div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 by Riikang from software development dept</p>
	 </div>
</div>  
    
  </body>
</html>
