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
<br>
<div class=" container">
	<div class="row">
		        		<div class="col-md-9 col-sm-6">
		            		<p><a href="first_index"><button type="button" class="btn btn-success btn-lg">  <span class="glyphicon glyphicon-home" ></span> <strong>博奥学</strong><br>BoAo.com</button></a>
		           		 </div>  				            
		</div>
    <div class="row">
			
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<h1 style="color: rgb(68,157,68);" >欢迎登录</h1>
							</div>
						</div>
			       </div>
	<form class="form-horizontal" action="adminlogin" method="post" >
		<div class="col-md-6 col-md-offset-3 " >
	   <!--   <font color="red">${requestScope.message }</font> -->
     	<div class="input-group input-group-lg">
            <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="text" name="adminname" id="adminname" class="form-control" placeholder="Administrator">
        </div>
        <br>
        <br>
        <div class="input-group input-group-lg">
         <span class="glyphicon glyphicon-lock input-group-addon"></span>
            <input type="password" name="adminpassword" id="adminpassword" class="form-control" placeholder="Password">
        </div>
      <br>
      <br>
      <br>
		<div class="form-group">
						<div class="col-sm-offset-5 col-sm-6" align="center">
						 <span><button type="submit" class="btn btn-success">立即登录</button></span>
						&nbsp;&nbsp; &nbsp; <span><a href="loginForm" class="btn btn-warning">访问者登录</a></span>
					<div>
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
