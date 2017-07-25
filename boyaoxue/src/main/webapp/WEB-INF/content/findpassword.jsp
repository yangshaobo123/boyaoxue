<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>欢迎您登录博奥学</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body >



  <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				
                
                <div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="loginForm" font-color="blue">博奥学</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						
						<li>
							 <a href="registeForm">注册</a>
						</li>
						
						
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					
					</form>
					
					<li>
							 <a href="loginForm">已有账号？直接登录</a>
						</li>
					
					
					
				</div>
				
			</nav>
	





<div class=" container">
	<div class="row">
		        		<div class="col-md-9 col-sm-6">
		            		<p><a href="main" class="btn btn-danger btn-lg">  <span class="glyphicon glyphicon-home"></span> <strong>易购</strong></a> 
		                <a ><strong>欢迎登陆</strong></a> </p>
		           		 </div>  
		              <div class="col-md-3  col-sm-6" > <br><a href="loginForm">已有账号？直接登录</a></div>
		</div>
    <div class="row">
			<div class="col-md-6 col-md-offset-3" style="padding:100px  0px 0px 0px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<p><strong>请输入确认信息找回密码</strong></p> 
							</div>
						</div>
						<hr>
					</div>												       
<form id="forgetpwd1" action="forgetpwd1" method="post" role="form" > 
		  	   <font color="red">${requestScope.message }</font>
		  	   
		  	 <div class="col-md-12 ">
		  	     <div class="row">
						<div class="form-group">
                           <div class="col-md-3">  昵称：</div>
                           <div class="col-md-9">
                                   <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="请输入你的昵称 "">
                           </div> 
		   		        </div>
		   		        <br/><br/>
						<div class="form-group">
                           <div class="col-md-3 ">   邮箱：</div>
                           <div class="col-md-9">
                                   <input type="text" name="loginname" id="loginname" tabindex="1" class="form-control" placeholder="请输入你的邮箱" value="">
                           </div> 
		   		        </div>
		   		  <br/> <br/>
		   		        
  		        
		   		        <br/> <br/> <br/>
		   		       
				        <div class="form-group">
							<div class="row">
								<div class="col-sm-5 col-sm-offset-4">
									<button type="submit" class="btn btn-info btn-lg" >立即找回</button>
								</div>
							</div>
						</div>
						
			</div>
			</div>
		</form>
		
		
		
					
	</div>
	</div>
	
	</div>
</div>




<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>

