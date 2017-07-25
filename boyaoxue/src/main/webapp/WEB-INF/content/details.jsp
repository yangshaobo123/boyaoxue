<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>欢迎您登录博奥学</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  </head>
 <body>
  
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				
                
                <div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="first_index" font-color="blue">博奥学</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
						
							 <a href="#">欢迎[${sessionScope.user.username }]访问</a>
						</li>
						<li>
							 <a href="first_index">首页</a>
						</li>
						<li>
							 <a href="shop_first">每天听本书</a>
						</li>
	                     <li>
							 <a href="shop_second">专栏订阅</a>
						</li>
						 <li>
							 <a href="collect?loginname=${sessionScope.user.loginname}" >我的收藏夹</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div> <button type="submit" class="btn btn-default">搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
						 <a href="#">当前在线人数为：${applicationScope.count}人</a>
							
						</li>
						<li>
							 <a href="cart">购物车</a>
						</li>
						
							<li>
							 <a href="first">注销</a>
						</li>
						
						<li class="dropdown">
							 <a href="#" class="dropdown-toggle" data-toggle="dropdown">客户服务<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="#">我的订单</a>
								</li>
                                
                                <li class="divider">
								</li>
                                
								<li>
									 <a href="#">通知消息</a>
								</li>
                                
                                <li class="divider">
								</li>
                                
								<li>
									 <a href="#">商品收藏</a>
								</li>
								
							</ul>
						</li>
					
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
        
<br/><br/><br/><br/><br/><br/><br/><br/><br/>

<div class=" container">
<c:forEach items="${requestScope.book_list }" var="book">
	
    <div class="row">
			      
<div class="col-md-6 column">
   
   
   <div id="myCarousel" class="carousel slide" >
				
					
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active">
					<li data-target="#myCarousel" data-slide-to="1">
					<li data-target="#myCarousel" data-slide-to="2">
					
				</ol>				
				<div class="carousel-inner" >
					<div class="item active">
						<img src="image/${book.image}" alt="First slide">
						<div class="carousel-caption">1</div>
					</div>
					<div class="item">
						<img src="image/${book.fimage}" alt="Second slide">
						<div class="carousel-caption"> 2</div>
					</div>
					<div class="item">
						<img src="image/${book.simage}" alt="Third slide">
						<div class="carousel-caption"> 3</div>
					</div>					
				</div>
				
				<a class="carousel-control left" href="/demo/bootstrap3-plugin-carousal-caption.htm#myCarousel" data-slide="prev">‹</a>
				<a class="carousel-control right" href="/demo/bootstrap3-plugin-carousal-caption.htm#myCarousel" data-slide="next">›</a>
	</div>
</div>
<div class="col-md-6 column">
                <dl>
				<dt>
				 <div class="progress active progress-striped" > 
                <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
              ${book.name }
		        </div>
				<font size=5>				
				</dt>
				<dd>
				${book.author} &nbsp;&nbsp;著
				</dd>
		</dl>
		<h3>
			<font color=red size=6>
			售价： ${book.price}
			</font>
		</h3>
<div class="row clearfix">
			<br>
			
									     	
				<div class="col-md-3 column">
					
					 <a  class="btn btn-success glyphicon glyphicon-star" 
					 href="saveCollect?book_id=${book.id}&loginname=${user.loginname}&image=${book.image}&name=${book.name}&price=${book.price}">添加收藏</a>
					 
				</div>
				<div class="col-md-3 column">
					<a href="save?book_id=${book.id}" type="button" class="btn btn-info" role="button" > 添加购物车</a>
				</div>
				<div class="col-md-3 column">
					 <a href="saveorder?book_id=${book.id}" type="button" class="btn btn-default btn-success" > 立即购买</a>
				</div>
</div>	
</div>	
</div></div>
	
	
	
	  
  </c:forEach> 
			
	
	
	
	

<!-- Placed at the end of the document so the pages load faster -->
<script src="twitter-bootstrap-v2/docs/assets/js/jquery.js"></script>
<script src="twitter-bootstrap-v2/docs/assets/js/bootstrap-carousel.js"></script>
</body>
</html>