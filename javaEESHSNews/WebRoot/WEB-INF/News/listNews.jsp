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
    
    <title>新闻管理</title>
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
		function confirm_delete(){
			if (!confirm("确认删除该条新闻？")) {
	            window.event.returnValue = false;
	        }
			else{
				alert("删除成功");
			}
		}
		
		$("#ii").click(function(){
			confirm_delete();	
		});
		
		function show(){  
			var tab=document.getElementById("tab");  
			var tr=tab.getElementsByTagName("tr");   
			for(var i=0;i<=tr.length;i++){  
			 	if(i%2==0){  
			 		tr[i].style.backgroundColor="#F5FAFE";  
			 		tr[i].onmouseover=function(){this.style.background="#ADFCFC"}; 
			 		tr[i].onmouseout=function(){this.style.background="#F5FAFE"}; 
			 	}else{  
			 		tr[i].style.backgroundColor="#FFFFFF";  
			 		tr[i].onmouseover=function(){this.style.background="#ADFCFC"};  
			 		tr[i].onmouseout=function(){this.style.background="#FFFFFF"};  
			 	}  
			} 
		}  
		
		window.onload=show;
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
     <table width="100%" id="tab" class="table">
   
   
  	<tr class="alter">
  		<td width="10%">新闻编号</td>
  		<td width="40%">新闻标题</td>
  		<td width="10%">发布时间</td>
  		<td width="12%">新闻来源</td>
  		<td width="8%">新闻类型</td>
  		<td colspan="2" width="20%">可执行操作</td>
  	</tr>
  	<s:form name="f1" action="removesAction" namespace="/news" onsubmit="confirm_delete()" theme="simple">
  	<s:iterator value="newss" id="n">
  		<tr>
  			<td><input type="checkbox" name="idString" value="<s:property value='#n.id'/>">&nbsp;&nbsp;<s:property value="#n.id"/></td>
  			<td><a href="news/findNewsAction.action?news.id=<s:property value='#n.id'/>"><s:property value="#n.title"/></a></td>
  			<td><s:property value="#n.pubdate"/></td>
  			<td><s:property value="#n.source"/></td>
  			<td><s:property value="#n.type"/></td>
  			<td><a href="news/updateStartAction.action?news.id=<s:property value='#n.id'/>">编辑</a></td>
  			<td><a onclick="confirm_delete()" href="news/removeAction.action?news.id=<s:property value='#n.id'/>">删除</a></td>
  		</tr>
    </s:iterator> 
  	</s:form>
     <tr class="alter">
    	<s:form action="onTypeAction" namespace="/news" theme="simple">
    	<td colspan="5" width="80%">按类型浏览&nbsp;:&nbsp;
    	<s:select name="news.type" list="{'所有类型','社会','军事','娱乐','国际','经济','科技'}" theme="simple"></s:select>
    	<input type="submit" value="GO"/>
    	</td>
    	</s:form>
    	<td colspan="2" width="20%"><input id="ii" type="button" onclick="f1.submit()" value="批量删除" /></td>
    </tr>
  </table>
		  </div>           
	  </div>  
</div>
  </body>
</html>
