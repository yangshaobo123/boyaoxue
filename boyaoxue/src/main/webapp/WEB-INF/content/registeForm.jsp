<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎您登录博奥学</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
		<div class="row">
        		<div class="col-md-9">
            		<p><a href="loginForm" class="btn btn-success" btn-lg">  <span class="glyphicon glyphicon-home"></span> <strong>博奥学</strong></a> 
                <a ><strong>欢迎登陆</strong></a> </p>
           		 </div>  
              <div class="col-md-3 " > <br>	<a href="loginForm">已有账号？直接登录</a></div>
		</div>
    	<div class="row">
			<div class="col-md-6 col-md-offset-3" style="padding:150px  5px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							
							<div class="text-center">
                            	<p>新用户注册，首单免单</p> 
							</div>
						</div>
						<hr>
					</div>
					
								<form id="register" action="register" method="post" role="form" >
								 <div class="col-md-12">
								 <font color="red">${requestScope.message }</font>
									<div class="form-group">
                                      <div class="col-md-3">  昵称：</div>
                                   	<div class="col-md-9">
                                   		 <input type="text" name="loginname" id="loginname" tabindex="1" class="form-control" placeholder="注册昵称" >
                                    </div> 
								</div>
                                    <br>
									<div class="form-group">
                                    	 <div class="col-md-3"> 登录名：</div>
                                         <div class="col-md-9">
										<input type="text" name="username" id="username" tabindex="" class="form-control" placeholder="注册用户名">
                                        </div>
									</div>
                                      <br>
                                    <div class="form-group">
                                      	<div class="col-md-3"> 密码：</div>
                                         <div class="col-md-9">
                                   		<input type="password" name="password" id="password" tabindex="1" class="form-control" placeholder="用户密码" >
                                          </div>
									</div>
                                      <br>
                                     <div class="form-group">
                                    	<div class="col-md-3">电话：</div>
                                         <div class="col-md-9">
										<input type="text" name="phone" id="phone" tabindex="" class="form-control" placeholder="用户电话">
                                        </div>
									</div>
                                      <br>
                              
                                    <div class="form-group">
                                    	 <div class="col-md-3">地址：</div>
                                         <div class="col-md-9">
										<input type="text" name="address"id="address"  tabindex="1" class="form-control" placeholder="用户地址" >
                                        </div>
									</div>
							
                                    <br><br>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-5 col-sm-offset-4">
												 <button type="submit" class="btn btn-primary btn-lg" >立即注册</button>
											</div>
										</div>
									</div>
								 </div>
								</form>
							</div>
						</div>
					</div>
				</div>





</body>
</html>