
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>购物车</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>          
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
        
         <h2 >尊敬的${sessionScope.user.username}用户，欢迎查看收藏夹
             <a class="btn btn-info btn-lg" href="shop_first" role="button">继续购物</a>   
           &emsp;<a class="btn btn-info" href="clear" role="button">清空购物车</a></h2>
           
       
   <h2>我的收藏</h2>
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th >商品图片</th>     
                <th >商品名称</th>
                <th >商品价格</th>
                <th >商品描述 </th>
                <th >操作</th>
            </tr>
       </thead>
            <c:forEach items="${requestScope.collect_list }" var="c">
             <tr >
             	<td style="vertical-align: middle;"><img src="image/${c.image }" height="70"></td>
             	<td style="vertical-align: middle;">${c.name }</td>
             	<td style="vertical-align: middle;">${c.price }</td>
             	<td style="vertical-align: middle;">${c.loginname }</td> 
             	<td style="vertical-align: middle;"> 
             		<a href="removecollect?book_id=${collect.book_id}&loginname=${sessionScope.user.loginname}">删除</a> <br>
             		<a href="saveorder?book_id=${book.id}">立即购买</a>
                     </td> 
             </tr>
            </c:forEach>
       
     </table>
 </div>
  <hr>

 

</body>
</html>
