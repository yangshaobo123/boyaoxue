 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎您登录博奥学首页</title>


<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
   
   
</head>
<body>
<div class=" container">
	<div class="row">
		        		<div class="col-md-9 col-sm-6">
		            		<p><a href="loginForm" class="btn btn-success" btn-lg">  <span class="glyphicon glyphicon-home"></span> <strong>博奥学</strong></a> 
		                <a ><strong>欢迎登录</strong></a> </p>
		           		 </div>  
		</div>
    <div class="row">
			<div class="col-md-8 col-md-offset-2" style="padding:100px  0px 0px 0px ; ">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="text-center">
                            	<p><font color="green">${requestScope.message }</font></p> 
							</div>
						</div>
						<hr>
			       </div>

	<form class="form-horizontal" id="loginForm" action="login" method="post" >
		<div class="col-md-6 col-md-offset-3 " >
	    <font color="red">${requestScope.message }</font>
     <div class="input-group input-group-lg">
            <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="text" name="loginname" id="loginname" class="form-control" placeholder="请输入用户名">
        </div>
        <br>
        <div class="input-group input-group-lg">
         <span class="glyphicon glyphicon-user input-group-addon"></span>
            <input type="password" name="password" id="password" class="form-control" placeholder="请输入密码">
  
        </div>
        <br>
				<div class="form-group">
					<input type="checkbox" id="remember" name="remember">
                  			记住密码
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-8">
						 <button type="submit" class="btn btn-danger " >立即登录</button>
		&nbsp; &nbsp; <span><a href="adminloginForm" class="btn btn-warning">管理员登录</a></span>
	
					</div>
				</div>
                <br>
                <div class="form-group ">
                 <div class="col-md-3 col-md-offset-1 col-sm-3 ">
                    <a href="findpassword"> 忘记密码？</a>
                 </div>
                 <div class="col-md-3 col-md-offset-1 col-sm-4 ">
                    <a href="redopassword"> 修改密码</a>
                 </div>
                 <div class="col-md-3 col-md-offset-1 col-sm-3 ">
                    <a href="registeForm"> 免费注册</a>
   				 </div>  		
                 
                  

 	     </div>
     </div>
	</form>
</div>
</div>
</div>
</div>

  <script type="text/javascript" src="jquery/jquery.cookie.js"></script>  
  <script>
  window.onload = function(){
    var oForm = document.getElementById('loginForm');
    var oUser = document.getElementById('loginname');
    var oPswd = document.getElementById('password');
    var oRemember = document.getElementById('remember');
    //页面初始化时，如果帐号密码cookie存在则填充
    if(getCookie('loginname') && getCookie('password')){
      oUser.value = getCookie('loginname');
      oPswd.value = getCookie('password');
      oRemember.checked = true;
    }
    //复选框勾选状态发生改变时，如果未勾选则清除cookie
    oRemember.onchange = function(){
      if(!this.checked){
        delCookie('loginname');
        delCookie('password');
      }
    };
    //表单提交事件触发时，如果复选框是勾选状态则保存cookie
    oForm.onsubmit = function(){
      if(remember.checked){ 
        setCookie('loginname',oUser.value,7); //保存帐号到cookie，有效期7天
        setCookie('password',oPswd.value,7); //保存密码到cookie，有效期7天
      }
    };
  };
  //设置cookie
  function setCookie(name,value,day){
    var date = new Date();
    date.setDate(date.getDate() + day);
    document.cookie = name + '=' + value + ';expires='+ date;
  };
  //获取cookie
  function getCookie(name){
    var reg = RegExp(name+'=([^;]+)');
    var arr = document.cookie.match(reg);
    if(arr){
      return arr[1];
    }else{
      return '';
    }
  };
  //删除cookie
  function delCookie(name){
    setCookie(name,null,-1);
  };
</script>
   

</body>
</html>