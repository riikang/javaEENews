<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if(ActionContext.getContext().getSession().get("uname")==null){
	ActionContext.getContext().getSession().put("uname","您还未登录");
}  
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>新闻详情</title>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="news" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
	<script src="js/myjs.js"></script>
	<link href="css/mycss.css" rel="stylesheet" type="text/css" >	
	<script src="<%=path%>/js/jquery.js"></script>
	<script src="<%=path%>/js/slide.js"></script> 
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
					 <form>
					 <input type="text" placeholder="" required>
					 <input type="submit" value=""/>
					 </form>
				 </div>
				<span class="menu"> </span> 
				<ul>
					<li class="active"><a href="news/findNewAction.action">主页</a></li>
                    <li><a href="news/loginAction.action">登录</a></li>                
                    <li><a href="news/listAction.action">管理新闻</a></li>						
					<li><a href="about.jsp">关于</a></li>	
					<li><a href="connect.jsp">联系方式</a></li>
					<li><a>当前管理员：<%=ActionContext.getContext().getSession().get("uname") %></a></li>									
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

			    <div class="col-md-4 content-right">
				 <div class="clearfix"></div>
                 
				 <div class="categories">
					 <h3>按类别浏览</h3>
					  <ul>
					 <li><a href="news/findNewwAction.action?news.type=社会">社会</a></li>
					 <li><a href="news/findNewwAction.action?news.type=军事">军事</a></li>
					 <li><a href="news/findNewwAction.action?news.type=娱乐">娱乐</a></li>
					 <li><a href="news/findNewwAction.action?news.type=国际">国际</a></li>
					 <li><a href="news/findNewwAction.action?news.type=经济">经济</a></li>
					 <li><a href="news/findNewwAction.action?news.type=科技">科技</a></li>
					 </ul>
				 </div>
                 
				 <div class="clearfix"></div>                 
			  </div>
	  </div>
</div>
<!---->
<div class="footer">
	 <div class="container">
	 <p>Copyrights © 2015 by Riikang from software development dept</a></p>
	 </div>
</div>

  </body>
</html>
