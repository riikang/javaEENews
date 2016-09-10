<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>添加管理员</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login/demo.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/login/style.css" />
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/login/animate-custom.css" />
	<script src="<%=path%>/js/jquery.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {	
        $("#username").blur(function(){
        	var strRegex = /^[a-zA-Z]{1}[0-9a-zA-Z_]{1,20}$/;
        	var flag=strRegex.test($("#username").val());
        	if($("#username").val()==""){
				$("#username").attr("placeholder","X用户名不能为空");
			}
        	else if(!flag){
				$("#username").val("");
				$("#username").attr("placeholder","X用户名由字母开头，以字母、数字、下划线组成的1~20位字符");
			}
		});	
        
        $("#realname").blur(function(){
        	var strRegex = /^[u4e00-u9fa5]{1,20}$/;
        	var flag=strRegex.test($("#realname").val());
			if($("#realname").val()==""){
				$("#realname").attr("placeholder","X真实姓名不能为空");
				}
			else if(flag){
				$("#realname").val("");
				$("#realname").attr("placeholder","X真实姓名只能是1~20个汉字");
			}				
		});	
		
		$("#password1").blur(function(){
			var strRegex = /^[a-zA-Z0-9\!\#\$\%\^\&\*\.\~]{6,20}$/;
			var flag=strRegex.test($("#password1").val());
			if($("#password1").val()==""){
					$("#password1").attr("placeholder","X密码不能为空");
				}
			else if(!flag){
				$("#password1").val("");
				$("#password1").attr("placeholder","X密码由数字、字母、以及特殊字符组成的6~20个字符");
			}				
		});
		
		$("#password2").blur(function(){
			if($("#password2").val()!=$("#password1").val()){
					$("#password2").val("");
					$("#password2").attr("placeholder","两次密码输入不一致");
				}
		});
    });
	</script>
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
                            <s:form  action="doing_registerAction" namespace="/news"  autocomplete="on"> 
                                <h1> ADD USER </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">用户名&nbsp;&nbsp;${errors["user.uid"][0]}</label>
                                    <input id="username" name="user.uid" required type="text" placeholder="用户名只能由数字、字母、下划线组成" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > 姓名</label>
                                    <input id="realname" name="user.uname" required type="text" placeholder="请输入姓名" /> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">密码</label>
                                    <input id="password1" name="user.password" required type="password" placeholder="请输入登录密码" />
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">请确认密码 </label>
                                    <input id="password2"  required type="password" placeholder="请确认"/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="添加"/> 
								</p>
                                <p class="change_link">  
                                <a href="news/listAction.action" class="to_register">返回新闻管理</a>							
									<a href="news/loginAction.action" class="to_register">登录</a>
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
