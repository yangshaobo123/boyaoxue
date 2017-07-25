<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>博奥学</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="owner" content="" />
<meta name="robots" content="index, follow" />
<meta name="googlebot" content="index, follow" />
<link href="css/style2.css" rel="stylesheet">

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
                <li><a href="collection.action?username=${ sessionScope.user.username }" >我的收藏</a></li>
                <li><a href="cart">我的购物车</a></li>
             </ul>
    	 </div>
   </div>
  </div>
  

 
  
	<div class="row clearfix">
		<div class="col-md-1 column">
		</div>
		<div class="col-md-10 column">
<form role="form" action="addcomment">
        
<div class="form-group">
         <div style="width:60%;margin:auto auto;">
        
         <h2 >尊敬的${sessionScope.user.username}用户，请评价您的订单<a href="cart.action?username=${ sessionScope.user.username }"  ></a>
           
                                             
         <table class="table table-hover">                
                <tr>
			<th class="thtd">书籍图片</th>			
			<th class="thtd">书籍名称</th>
			<th class="thtd">书籍价格</th>						
		    </tr>		    
           <c:forEach items="${requestScope.order_list }" var="order">		
			<tr>
				<td><img src="image/${book.image}"></td>			
				<td>${book.remark}</td>
				<td>${book.price}</td>									
		   </tr>		  		  		  		
		</c:forEach>		
        </table>

       </div>
</div>
        
<div class="form-group" >
   <div class="shop-rating"   >
     <span class="title">物流服务：</span>
	<ul class="rating-level" id="stars1"   >
		<li><a class="one-star" star:value="1" href="#">1</a></li>
		<li><a class="two-stars" star:value="2" href="#">2</a></li>
		<li><a class="three-stars" star:value="3" href="#">3</a></li>
		<li><a class="four-stars" star:value="4" href="#">4</a></li>
		<li><a class="five-stars" star:value="5" href="#">5</a></li>
	</ul>
	<span class="result" id="stars1-tips"></span>
	<input type="hidden" id="service" name="service" value="4" size="2" />
   </div>

<!--
	# 星级评分
	# star:value = 分数
-->
   <div class="shop-rating">
	<span class="title">服务：</span>
	<ul class="rating-level" id="stars3">
		<li><a class="one-star" star:value="1" href="#">1</a></li>
		<li><a class="two-stars" star:value="2" href="#">2</a></li>
		<li><a class="three-stars" star:value="3" href="#">3</a></li>
		<li><a class="four-stars" star:value="4" href="#">4</a></li>
		<li><a class="five-stars" star:value="5" href="#">5</a></li>
	</ul>
	<span class="result" id="stars3-tips"></span>
	<input type="hidden" id="logistics" name="logistics" value="3" size="2" />
	</div>	
   </div>
   <div class="shop-rating">
	<span class="title">商品质量：</span>
	<ul class="rating-level" id="stars2">
		<li><a class="one-star" star:value="1" href="#">1</a></li>
		<li><a class="two-stars" star:value="2" href="#">2</a></li>
		<li><a class="three-stars" star:value="3" href="#">3</a></li>
		<li><a class="four-stars" star:value="4" href="#">4</a></li>
		<li><a class="five-stars" star:value="5" href="#">5</a></li>
	</ul>
	<span class="result" id="stars2-tips"></span>
	<input type="hidden" id="quality" name="quality" value="3" size="2" />
   </div>
   
		<div class="form-group">
		<label for="inputfile">文件输入</label>
		<input type="file" id="image1" name="image1">
		</div>
	    <div class="form-group">
		<label for="name">文本框</label>
		<textarea class="form-control" rows="3"  id="comments" name="comments"></textarea>
	    </div>

<%--         <input type="hidden" name="orderid" id="orderid" value="${order.orderid }"> --%>
	    <button type="submit" class="btn btn-default">提交</button>
</form>
		</div>
		<div class="col-md-3 column">
		</div>
	</div>
</div>

<script type="text/javascript">
var Class = {
	create: function() {
		return function() { this.initialize.apply(this, arguments); }
	}
}
var Extend = function(destination, source) {
	for (var property in source) {
		destination[property] = source[property];
	}
}
function stopDefault( e ) {
	 if ( e && e.preventDefault ){
		e.preventDefault();
	}else{
		window.event.returnValue = false;
	}
	return false;
} 
/**
 * 星星打分组件
 *
 * @author	Yunsd
 * @date		2010-7-5
 */
var Stars = Class.create();
Stars.prototype = {
	initialize: function(star,options) {
		this.SetOptions(options); //默认属性
		var flag = 999; //定义全局指针
		var isIE = (document.all) ? true : false; //IE?
		var starlist = document.getElementById(star).getElementsByTagName('a'); //星星列表
		var input = document.getElementById(this.options.Input) || document.getElementById(star+"-input"); // 输出结果
		var tips = document.getElementById(this.options.Tips) || document.getElementById(star+"-tips"); // 打印提示
		var nowClass = " " + this.options.nowClass; // 定义选中星星样式名
		var tipsTxt = this.options.tipsTxt; // 定义提示文案
		var len = starlist.length; //星星数量
		

		for(i=0;i<len;i++){ // 绑定事件 点击 鼠标滑过
			starlist[i].value = i;
			starlist[i].onclick = function(e){
				stopDefault(e);
				this.className = this.className + nowClass;
				flag = this.value;
				input.value = this.getAttribute("star:value");
				tips.innerHTML = tipsTxt[this.value]
			}
			starlist[i].onmouseover = function(){
				if (flag< 999){
					var reg = RegExp(nowClass,"g");
					starlist[flag].className = starlist[flag].className.replace(reg,"")
				}
			}
			starlist[i].onmouseout = function(){
				if (flag< 999){
					starlist[flag].className = starlist[flag].className + nowClass;
				}
			}
		};
		if (isIE){ //FIX IE下样式错误
			var li = document.getElementById(star).getElementsByTagName('li');
			for (var i = 0, len = li.length; i < len; i++) {
				var c = li[i];
				if (c) {
					c.className = c.getElementsByTagName('a')[0].className;
				}
			}
		}
	},
	//设置默认属性
	SetOptions: function(options) {
		this.options = {//默认值
			Input:			"",//设置触保存分数的INPUT
			Tips:			"",//设置提示文案容器
			nowClass:	"current-rating",//选中的样式名
			tipsTxt:		["1分-严重不合格","2分-不合格","3分-合格","4分-优秀","5分-完美"]//提示文案
		};
		Extend(this.options, options || {});
	}
}

var Stars1 = new Stars("stars1")
var Stars2 = new Stars("stars2")
var Stars3 = new Stars("stars3")
</script>


</body>
</html>