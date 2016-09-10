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
    <title>My JSP 'update.jsp' starting page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="news" />
	<link href="<%=path%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/style.css" rel='stylesheet' type='text/css' />
    <link href="<%=path%>/css/table.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/slide.css">
    <link rel="stylesheet" href="<%=path%>/css/addTable.css" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="UEditor/ueditor.config.js"></script>
	<script type="text/javascript" src="UEditor/ueditor.all.js"></script>
	<link rel="stylesheet" href="UEditor/themes/default/css/ueditor.css">
	<script src="<%=path%>/js/jquery.js"></script>
	<script src="<%=path%>/js/slide.js"></script> 
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<script type="text/javascript">
	$(document).ready(function() {	
		$("#myform").submit(function(){
			if (!confirm("确认更新该条新闻？")) {
	            window.event.returnValue = false;
	        }
			else{
				alert("更新成功");
			}
		});
													
		$("#t1").val($("#h1").val());
		$("#t2").val($("#h2").val());
		$("#t3").val($("#h3").val());
		$("#t4").val($("#h5").val());
		$("#sel1").val($("#h4").val());
		
        $("#t1").blur(function(){
			if($("#t1").val()==""){
					$("#s1").css({"color":"#F00"});
					$("#s1").text("标题不能为空");
				} 
			else if($("#t1").val().length>40){
					$("#s1").css({"color":"#F00"});
					$("#s1").text("标题长度不能大于40");
				}
			else{
					$("#s1").css({"color":"#00CCFF"});
					$("#s1").text("√");
				}				
		});	
        
		 $("#t2").blur(function(){
			if($("#t2").val().length>20){
					$("#s2").css({"color":"#F00"});
					$("#s2").text("字数不能大于20");
				}
				else{
					$("#s2").css({"color":"#00CCFF"});
					$("#s2").text("√");
				}				
		});	
		
		$("#t3").blur(function(){
			if($("#t3").val()==""){
					$("#s3").css({"color":"#F00"});
					$("#s3").text("新闻内容不能为空");
				}
				else{
					$("#s3").css({"color":"#00CCFF"});
					$("#s3").text("√");
				}				
		});	
		
		$("#sel1").blur(function(){
			if($("#sel1").val()=="请选择"){
				$("#s4").css({"color":"#F00"});
				$("#s4").text("请选择新闻类型");
			}
			else{
				$("#s4").css({"color":"#00CCFF"});
				$("#s4").text("√");
			}
		});
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
				<span class="menu"></span> 
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
      		<!-- Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>编辑新闻</h2>
					</div>
					<!-- End Box Head -->
				<s:iterator value="news" id="n">
					<s:hidden id="h5" name="news.id" value="%{#n.id}"/>
					<s:hidden id="h1" name="news.title" value="%{#n.title}" />
					<s:hidden id="h2" name="news.source" value="%{#n.source}" />
					<s:hidden id="h3" name="news.contents" value="%{#n.contents}" />
					<s:hidden id="h4" name="news.type" value="%{#n.type}" />
				 </s:iterator>
				 
					 <s:form id="myform" action="updateAction" autocomplete="on" namespace="/news">	
						<s:hidden id="t4" name="news.id" value="" />
						<!-- Form -->
						<div class="form">
								<p>
									<span class="req">最大40字节</span>
									<label>新闻标题&nbsp;&nbsp;<span id="s1">*必填</span></label>
									<input id="t1" name="news.title" required type="text" class="field size1" /> 		
								</p>
                                <p>
									<span class="req">最大20字节</span>
									<label>新闻来源 <span id="s2">&nbsp;</span></label>
									<input id="t2" name="news.source" type="text" class="field size1" />
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
									<span id="s4">&nbsp;&nbsp;</span>
									</label>
								</p>		
								<p>
									<span class="req"></span>
									<label>新闻内容&nbsp;&nbsp;<span id="s3">*必填</span></label>
									<textarea id="t3" name="news.contents" class="field size1" rows="10" cols="30" required style="resize:none;" ></textarea>
									<script type="text/javascript">
										UE.getEditor('t3');
									</script>
								</p>	
						</div>
						<!-- End Form -->
						
						<!-- Form Buttons -->
						<div class="buttons">
							<input type="reset" class="button" value="重置" />
							<input type="submit" class="button" value="提交更新" />
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
