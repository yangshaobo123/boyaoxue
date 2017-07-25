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
 </div>
 <br> 
 <hr>
 <div class="container">
 	<form action="addproduct" method="post">
 	<div class="container">
 	<div class="col-md-8 col-md-offset-3">
 	
 		 <div class="input-group input-group-lg">
	 	 商品名称:	<input  type="text" id="name" name="name" placeholder="商品名称"/>
	   	</div><br>	
	   	<div class="input-group input-group-lg">
	 	 商品描述：	<input  type="text" id="author" name="author" placeholder="商品价格"/>
	 	</div><br>	
	 	<div class="input-group input-group-lg">
	 	 商品价格： <input  type="text" id="price" name="price" placeholder="商品描述"/>
	 	</div>	<br>	
	 	<div class="input-group input-group-lg">
	 	商品库存：	<input  type="text" id="count" name="count" placeholder="商品库存"/>
	 	</div><br>	
	 	<div class="input-group input-group-lg">
	 	商品销售：	<input  type="text" id="cart_id" name="cart_id" placeholder="商品销量"/>
	 	</div><br>	
	 	<div class="input-group input-group-lg">
	 	商品类别：  <input  type="text" id="remark" name="remark" placeholder="商品类别"/>
	 	</div><br>
	 </div>
	 </div>
	 <div class="container">
	 <div class="col-md-8 col-md-offset-2">	
	 	<div class="input-group input-group-lg">
    		 <label for="inputfile">主图片</label>
	    	 <input type="file" id="image" name="image" class="form-control" >
		</div><br>	
		<div class="row">
			  <div class="col-md-4">
	    		 <label for="inputfile">图片2</label>
		    	 <input type="file" id="fimage" name="fimage" class="form-control" >
			  </div>
			  <div class="col-md-4">
	    		 <label for="inputfile">图片3</label>
		    	 <input type="file" id="simage" name="simage" class="form-control" >
			  </div>
			
	   </div>
	</div>
 	</div>
 	<br>
 	<hr>
 	<div class="form-group">
			<div class="col-sm-offset-4 col-sm-8">
				 <button type="submit" class="btn btn-danger " >添加商品</button>
			</div>
	</div>
 </form>
</div>
   <hr>

 


 
 



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