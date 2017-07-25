<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>购物车</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  <link href="css/style.css" rel="stylesheet" type="text/css" />	
  </head>
  <body>
  
  
  
  
  <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>尊敬的${sessionScope.user.username}用户，欢迎访问购物车</a>
        </div>
        <div class="col-md-1 col-sm-3">
             <a href="registeForm"> 注册</a> 
        </div> 
        <div class="col-md-1 col-sm-3">
             <a href="loginForm"> 登录</a> 
        </div>
   </div>              
       
        
   </div> 
   <hr>
 <div class="container">
  　<div class="col-md-1">
  　   
  　</div>
   <div class="col-md-9">
      	<div class="navbar navbar-default " role="navigation">
             <ul class="nav nav-pills  nav-justified">
                <li ><a href="first_index">网站首页</a></li>
                <li><a href="shop_first">精选商城</a></li>
                <li><a href="collect?loginname=${sessionScope.user.loginname}" >我的收藏</a></li>
                <li><a href="order">我的订单</a></li>
             </ul>
    	 </div>
   </div>
  </div>
   
  
 <div>
     <div style="width:60%;margin:auto auto;">
        
         <h2 >尊敬的${sessionScope.user.username}用户，欢迎访问购物车<a href="cart.action?username=${ sessionScope.user.username }"  class="btn btn-warning btn-lg"><span class="glyphicon glyphicon-home"></span> <strong>购物车</strong> </a>
            &emsp; <a class="btn btn-info btn-lg" href="shop_first" role="button">继续购物</a>   
           &emsp;<a class="btn btn-danger" href="clear" role="button">清空购物车</a></h2>
           
          
         <br>
         <table class="table table-hover">
                
                <tr>
			<th class="thtd">书籍图片</th>
			<th class="thtd">书籍编号</th>
			<th class="thtd">书籍名称</th>
			<th class="thtd">书籍价格</th>
			<th class="thtd">书籍数量</th>
			<th class="thtd"><font color="blue">购买</font></th>
			<th class="thtd"><font color="blue">增加数量</font></th>
			<th class="thtd"><font color="black">减少数量</font></th>
			<th class="thtd"><font color="red">删除</font></th>
		    </tr>
	  
           <c:forEach items="${requestScope.cart_list }" var="cart">
                <c:forEach items="${cart.book }" var="book">
			<tr>
				<td><img src="image/${book.image}"></td>
				<td>${book.author}</td>
				<td>${book.remark}</td>
				<td>${book.price}</td>
				<td>${cart.count }</td>
			<td>
			<a class="btn btn-info" href="saveorder?book_id=${book.id}" role="button">立即购买</a>
		    </td>
		    <td>
			<a class="btn btn-warning" href="addCart?book_id=${book.id}" role="button">增加数量</a>
		    </td>
		    <td>
			<a class="btn btn-warning" href="reduce?book_id=${book.id}" role="button">减少数量</a>
		    </td>
		    <td>
			<a class="btn btn-danger" href="remove?book_id=${book.id}" role="button">删除</a>
		    </td>
		  </tr>
		          </c:forEach>  
	
		</c:forEach>		
        </table>
     </div>
 </div>
 
 
 
 
 
 
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>