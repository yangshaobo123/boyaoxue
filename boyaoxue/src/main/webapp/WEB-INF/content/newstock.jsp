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
   <h2>库存销量管理</h2>
  
    <table class="table table-condensed" border="1">
     	<thead>
        	<tr> 
            	<th>商品编号</th>  
            	<th>商品名称</th>   
                <th>现有库存</th>
                <th>今日销量</th>
                <th >操作 </th>  
            </tr>
       </thead>
            <c:forEach items="${requestScope.newstock_list }" var="n">
            <form action="updatestock"  method="post">
             <tr >
             	<td style="vertical-align: middle;">${n.id } </td>
             	<td style="vertical-align: middle;">${n.name }</td>
             	<td style="vertical-align: middle;"><input type="text" id="stock" name="stock" value="${n.stock}"/></td>
             	<td style="vertical-align: middle;"><input type="text" id="sales" name="sales" value="${n.sales}" /> </td>
             	<td style="vertical-align: middle;">
             	
             			<input type="hidden" id="id" name="id" value="${n.id}"/>
             			<input type="hidden" id="name" name="name" value="${n.name}"/>
             			<input type="hidden" id="stock" name="stock" value="${n.stock}"/>
             			<input type="hidden" id="sales" name="sales" value="${n.sales}" />
             			<button class="btn btn-default ">修改</button>   
             	</td>
             </tr>
            </form>
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