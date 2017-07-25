<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>博奥学</title>
       <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

   <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
         <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </head>
<body>
    <div id="header"  class="container"  style="background-color:bule;color:white;">头部</div>
    
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">   
            <div class="item active">
              <img src="image/1.jpg" width="100%">
              <div class="carousel-caption">
                <font color="red" size="4">  <h3>逻辑思维</h3>  </font>
                <font color="red" face="幼圆" size="3">  <p>罗胖独家的思维训练</p>  </font>
              </div>
            </div>
            <div class="item">
              <img src="image/2.jpg" width="100%">
              <div class="carousel-caption">
                <font color="black" size="4">  <h3 >薛兆丰</h3>  </font>
                <font color="red" face="幼圆" size="3">  <p>原汁原味的北大经济学课</p>   </font>
              </div>
            </div>
            <div class="item">
              <img src="image/3.jpg" width="100%">
              <div class="carousel-caption">
               <font color="black" size="4" > <h3 >魏先生</h3></font>
               <font color="red" face="幼圆" size="3" > <p>让孩子健康的成长</p> </font> 
              </div>
            </div>
          </div>
                  
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
     </div>

          
            
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				
                
                <div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="#" font-color="blue">博奥学</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
						
							 <a href="#">欢迎[${sessionScope.user.username }]访问</a>
						</li>
						<li>
							 <a href="#">注册</a>
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
        
       
        
	<div class="row clearfix">
		<div class="col-md-4 column">
			<h2>
				专栏订阅
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
				每天听本书
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-4 column">
			<h2>
				知识新闻
			</h2>
			<p>
				Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
			</p>
			<p>
				 <a class="btn" href="#">View details »</a>
			</p>
		</div>
	</div>
</div>
    
    <div id="footer" class="container" style="background-color:green;color:white;">Footer</div>
    <!-- jQuery引用 -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
        $(function() {
            $('.carousel').carousel({
              interval: 2000
            });
        });
    </script>
</body>
</html>

<!--
    <div id="header" style="background-color:royalblue;color:white;">Header</div>
    
    <div class="row">
        <div class="col-sm-3" style="background-color:orange">Left Bar</div>
        <div class="col-sm-6">Main content</div>
        <div class="col-sm-3" style="background-color:pink">Right Bar</div>
    </div>
    
    <div id="footer" style="background-color:green;color:white;">Footer</div>
-->