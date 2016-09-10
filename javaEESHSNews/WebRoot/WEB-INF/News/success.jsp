<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>操作成功</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="news" />
	<link href="<%=path%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/style.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/table.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/slide.css">
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
	<script src="<%=path%>/js/jquery.js"></script>
	<script src="<%=path%>/js/slide.js"></script> 
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script type="text/javascript">
	var time=5;
	function timeCount(){
			$("#time1").text(time);
			time--;
			if(time>=0){
				var flag=setTimeout("timeCount()",1000);
				}
			else{
				clearTimeout(flag);
				window.location.href="news/listAction.action";
				}	
	}
	$(document).ready(function(e) {	
		timeCount();		
	});
	</script>
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
                	<li class="active"><a href="news/listAction.action">管理新闻</a></li>						
					<li><a href="news/addInputAction.action">添加新闻</a></li>	
					<li><a href="contact.html">当前管理员：<%=ActionContext.getContext().getSession().get("uname") %></a></li>									
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
      <div class="success">
      	<p>操作成功</p>
        <p>系统将在<span id="time1">0</span>秒后跳转到系统首页</p>
        <p>如果没有自动跳转，请点击<a href="news/listAction.action">跳转</a></p>
      </div>
	    <div class="clearfix" style="margin-bottom:30px;" ></div>
    </div>
          
  </div>  
</div>

  </body>
</html>
