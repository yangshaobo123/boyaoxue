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
<title>易购</title>

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
           <a>易购欢迎你</a>
        </div>
        <div class="col-md-2">
			<a href="loginForm"  >用户登录</a>
	 	 </div>  
   </div>              
 </div>    <br> <hr>
 <div class="container">
   <h2>订单状态修改</h2>
   <form action="newcart">
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
             <td><input type="hidden" name="oid" id="oid" tabindex="1" class="form-control" value="${order.id}" > </td>
             <td><input type="hidden" name="username" id="username" tabindex="1" class="form-control" value="${order.book}" ></td>
             <td><input type="hidden" name="address" id="address" tabindex="1" class="form-control" value="${order.count}" ></td>
             <td><input type="hidden" name="phone" id="phone" tabindex="1" class="form-control" value="${order.book_id}" ></td>
             <td><input type="hidden" name="totalprice" id="totalprice" tabindex="1" class="form-control" value="${order.order_id}" ></td>
             <td><input type="text" name="status" id="status" tabindex="1" class="form-control" value="" ></td>
             </tr>
            </c:forEach>
     </table>
       <div class="col-md-5 col-md-offset-1">
                 <button type="submit" class="btn btn-warning btn-lg " >修改</button>
            </div> 
   </form>
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