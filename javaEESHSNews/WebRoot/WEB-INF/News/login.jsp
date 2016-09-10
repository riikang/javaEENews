<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
	<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
	<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
	<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
	<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
    <base href="<%=basePath%>">
    <title>登录系统</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login/demo.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login/style.css" />
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/login/animate-custom.css" />
  </head>
  <body>
     <div class="container">
            <header>         
				<nav class="codrops-demos">
				</nav>
            </header>
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <s:form  action="loginCheckAction" namespace="/news" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" >您的用户名&nbsp;&nbsp;${errors["user.uid"][0]}</label>
                                    <input id="uname" name="user.uid" required type="text" placeholder="请输入电子邮箱或用户名"/>   
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p">密码&nbsp;&nbsp;${errors["user.password"][0]}</label>
                                    <input id="password" name="user.password"  required type="password" placeholder="请输入密码" /> 
                                </p>                
                                <p class="login button"> 
                                    <input type="submit" value="Login"/> 
								</p>
                                <p class="change_link">
                                	<a href="<%=basePath%>index.jsp" class="to_register">返回新闻</a>
								</p>
                            </s:form>
                        </div>
                    </div>
                </div>  
            </section>
            
	<div style="text-align:center;clear:both">
</div>	
        </div>
  </body>
</html>
