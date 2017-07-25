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
<title>博奥学</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
 <div class="container">
  <div class="row"> 
        <div class="col-md-10  col-sm-6"  > 
           <a>欢迎你</a>
        </div>
        <div class="col-md-2">
			<a href="loginForm"  >用户登录</a>
	 	 </div>  
   </div>              
 </div>    <br> <hr>
 <div class="container">
   <h2>查询订单</h2>
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th>订单号</th>  
            	<th>用户名</th>   
                <th >运送地址</th>
                <th >联系电话</th>
                <th >总金额 </th>
                <th >状态</th>
            </tr>
       </thead>
            <c:forEach items="${requestScope.order_list }" var="order">
             <tr >
             	<td style="vertical-align: middle;">${order.id } </td>
             	<td style="vertical-align: middle;">${order.book }</td>
             	<td style="vertical-align: middle;">${order.count }</td>
             	<td style="vertical-align: middle;">${order.book_id} </td>
             	<td style="vertical-align: middle;">${order.user_id} </td>
             	<td style="vertical-align: middle;">
             		<form action="updateorder"  method="post">
             			<input type="hidden" id="oid" name="oid" value="${order.id}"/>
             			<input type="hidden" id="address" name="address" value="${order.book}"/>
             			<input type="hidden" id="phone" name="phone" value="${order.count }"/>
             			<input type="hidden" id="totalprice" name="totalprice" value="${order.book_id}"/>
             			<input type="text" id="status" name="status" value="${order.user_id}" placeholder="发货中/已发货/已收货"/>
             			<button class="btn btn-default ">修改状态</button>   
             		</form>
             	</td>
             </tr>
            </c:forEach>
     </table>
 </div> 
 


 
 



<hr>  

<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright ©YX MyWebsite. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="jquery/jquery-3.2.1.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>