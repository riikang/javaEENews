<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>关于我们</title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="news" />
    <script src="js/jquery.js"></script>
    <link href="css/wall/zoomer.css"/>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>

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
                    <li><a href="news/loginAction.action">登录</a></li>                
                    <li><a href="news/listAction.action">管理新闻</a></li>						
					<li class="active"><a href="about.jsp">关于</a></li>	
					<li><a href="connect.jsp">联系方式</a></li>
					<li><a>当前管理员：<%=ActionContext.getContext().getSession().get("uname") %></a></li>									
					<div class="clearfix"></div>
				 </ul>
			 </div>
			 <div class="clearfix"></div>
					<script>
					$("span.menu").click(function(){
					$(".top-menu ul").slideToggle("slow" , function(){
					});
					});
					</script>
				<!---//End-top-nav---->					
	 </div>
</div>
<!--/header-->
<div class="about-content">
	 <div class="container">
		 <h2>版权：Copyrights © 2015 by Riikang from software development dept</h2>
			 
	  </div>
      
  
</div>

<!---->
<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 by Riikang from software development dept</p>
	 </div>
</div>
  </body>
</html>
