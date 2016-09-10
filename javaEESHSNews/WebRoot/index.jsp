<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <title>新闻首页</title>  
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="news" />
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="css/slide.css">
    <link rel="stylesheet" type="text/css" href="css/myCSS.css">
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
    <script src="js/jquery.js"></script>
	<script src="js/slide.js"></script> 
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  	<script type="text/javascript">
	$(function(){
  		
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
<div class="content">
<!-- 
<div style="margin-top: 50px;">
    <div id="show" rel="autoPlay">
      <div class="img">
          <span>
              <a href="single4.html" target="_blank"><img src="images/hd3.jpg" /></a>
              <a href="single3.html" target="_blank"><img src="images/hd2.jpg" /></a>
              <a href="single2.html" target="_blank"><img src="images/hd4.jpg" /></a>
              <a href="single1.html" target="_blank"><img src="images/hd1.jpg" /></a>
          </span>
        <div class="masks mk1"></div>
        <div class="masks mk2"></div>
      </div>
    </div>
  </div>
 -->

	 <div class="container">
     <div class="content-grids">
     </div>
		 <div class="content-grids">     
			 <div class="col-md-8 content-main">          
				 <div class="content-grid">	 
				 <p>最新更新：</p>
				 	 
				 	<div class="content-grid-info" id="n4">
				 	<s:iterator value="newss" id="n"> 
				 	<div class="post-info">
				 	<h4><a href="news/singleNewsAction.action?news.id=<s:property value='#n.id'/>"><s:property value="#n.title"/></a></h4>
				 		<s:property value="#n.pubdate"/><br>
				 		<a href="news/singleNewsAction.action?news.id=<s:property value='#n.id'/>"><span></span>新闻详情</a>
				 	</div>
				 	</s:iterator>
				 	</div>
				 	
                <!-- 
                <div class="content-grid-info" id="n4">
						 <img src="images/1450535675900071748.jpg" alt=""/>
						 <div class="post-info">
						 <h4><a href="news/singleNewsAction.action?news.id=15">美国防部称美机闯南海因恶劣天气 飞行员偏航线</a>  2015年12月20日  </h4> 
						 <p> 据美国《华尔街日报》18日报道，美国国防部当天称美军两架B-52轰炸机于上周执行例行飞行任务时，其中一架“无意”飞进了中国在南海的固有领土华阳礁上空2海里范围内，五角大楼目前正调查军机会如此接近岛礁的原因。</p>
						 <a href="news/singleNewsAction.action?news.id=15"><span></span>新闻详情</a>
						 </div>
					 </div>	
                  
                  <div class="content-grid-info" id="n1">
						 <img src="images/1450946148936053121.jpg" alt=""/>
						 <div class="post-info">
						 <h4><a href="news/singleNewsAction.action?news.id=18">俄国防部：西方指责俄空袭叙平民区是污蔑</a> 2015年12月24日  </h4>
						 <p>据俄罗斯国防部网站12月23日消息，当日，俄国防部召开发布会，对12月18日-23日俄空军在叙利亚的空袭行动进行通报，并对近期的热点事件进行了回应。</p>
						 <a href="news/singleNewsAction.action?news.id=18"><span></span>新闻详情</a>
						 </div>
					 </div>	
                     
                     <div class="content-grid-info" id="n2">
						 <img src="images/1450586660826032289.jpg" alt=""/>
						 <div class="post-info">
						 <h4><a href="news/singleNewsAction.action?news.id=17">SpaceX猎鹰9号火箭发射延期至下周一：载11颗通信卫星</a>  2015年12月20日  </h4>
						 <p>据悉，此次猎鹰9号发射将携带美国新泽西州Orbcomm通信公司的11颗通信卫星升空，进入距离地球约400英里的运行轨道，每颗卫星重量约为380磅</p>
						 <a href="news/singleNewsAction.action?news.id=17"><span></span>新闻详情</a>
						 </div>
					 </div>	
                     
                     <div class="content-grid-info" id="n3">
						 <img src="images/1450585072836015861.jpg" alt=""/>
						 <div class="post-info">
						 <h4><a href="news/singleNewsAction.action?news.id=16">习近平对经济形势的10个权威判断</a>  2015年12月20日  </h4>
						 <p>习总说过：“我国经济运行总体是好的”，“同时也面临一些突出矛盾和问题，需要集思广益、真抓实干加以解决”。今天这个时候，适合复习一下，这一年，习近平总书记对中国经济形势做出过的十个权威判断。</p>
						 <a href="news/singleNewsAction.action?news.id=16"><span></span>新闻详情</a>
						 </div>
					 </div>
                 -->
                  
                      				 
                     <div class="readmore"><span><a id="go">加载更多</a></span></div> 				 
				 </div>        
			  </div>
			  <div class="col-md-4 content-right">
			  
			  	<!-- 
			  	 <div class="recent">
					 <h3>最新更新</h3>
					 <ul>
					 <li><a href="#n1">美国防部称美机闯南海</a></li>
					 <li><a href="#n2">西方指责俄空袭叙平民区</a></li>
					 <li><a href="#n3">习近平对经济形势</a></li>
					 <li><a href="#n4">SpaceX猎鹰9号火箭发射</a></li>
					 </ul>
				 </div>
			  	 -->
				
				 
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
			  <div class="clearfix"></div>
		  </div>
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
