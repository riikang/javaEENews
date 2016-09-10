<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>新闻预览</title>
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
		$(document).ready(function(){
			$("#t1").append($("#h1").val());
			$("#t2").append($("#h2").val());
			$("#t3").append($("#h3").val());
			$("#t5").append($("#h5").val());
			$("#t4").html($("#h4").val());
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
					<s:form action="searchNewsAction" namespace="/news" theme="simple">
					 	<input type="text" name="search">
					 	<input type="submit" value=""/>
					</s:form>
				</div>
				<span class="menu"> </span> 
				<ul>
					<li><a href="news/findNewAction.action">主页</a></li>
                	<li class="active"><a href="news/listAction.action">管理新闻</a></li>						
					<li><a href="news/addInputAction.action">添加新闻</a></li>
					<li><a href="news/start_registerAction.action">添加管理员</a></li>	
					<li><a href="contact.html">当前管理员：<%=ActionContext.getContext().getSession().get("uname") %></a></li>	
					<li><a href="news/logoutAction.action">退出登录</a></li>								
					<div class="clearfix"></div>
				</ul>
			</div>
			<div class="clearfix"></div>
<!---//End-top-nav---->					
	 	</div>
	</div>
<!--/header-->
  	<s:iterator value="news" id="n">
		<s:hidden id="h4" name="news.contents" value="%{#n.contents}"/>
		<s:hidden id="h1" name="news.title" value="%{#n.title}" />
		<s:hidden id="h2" name="news.pubdate" value="%{#n.pubdate}" />
		<s:hidden id="h3" name="news.source" value="%{#n.source}" />
		<s:hidden id="h5" name="news.type" value="%{#n.type}"/>
	 </s:iterator>
    <div class="single">
	 <div class="container">
	  <div class="col-md-8 single-main">
       <div class="single-grid" style="margin:20px 0px">
        <h1 id="t1"></h1>
       </div>
	   <div class="single-grid" id="t4"></div>
	   <ul class="comment-list">
	   	<li> <h5 class="post-author_head" id="t5">新闻类型:&nbsp;&nbsp;</h5></li>
        <li> <h5 class="post-author_head" id="t2">发布时间:&nbsp;&nbsp;</h5></li>
        <li><h5 class="post-author_head" id="t3">From:&nbsp;&nbsp;</h5></li>
	   </ul>
	</div>
	</div>
	</div>
    
  </body>
</html>