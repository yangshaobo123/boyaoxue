<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
  <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />
<title>博奥学</title>

      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 </head>
 <body>
 

 <div class="header">
    
      <div class="dl-title" class="col-md-10  col-sm-6">
        <a href="http://sc.chinaz.com" title="文档库地址" target="_blank"><!-- 仅仅为了提供文档的快速入口，项目中请删除链接 -->
          <span class="lp-title-port">博奥学</span><span class="dl-title-text">后台管理系统</span>
        </a>
      </div>

    <div class="dl-log">欢迎<span class="dl-log-user">[${sessionScope.user.username }]访问</span><a href="loginForm" title="退出系统" class="dl-log-quit">[退出]</a><a href="loginForm" title="文档库" class="dl-log-quit">系统</a>
    </div>
  </div>
  
   <div class="content" class="col-md-10  col-sm-6">
    <div class="dl-main-nav" >
      <div class="dl-inform"><div class="dl-inform-title">贴心小秘书<s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">首页</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-order">表单页</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-inventory">搜索页</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-supplier">详情页</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-marketing">图表</div></li>
      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
  <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui.js"></script>
  <script type="text/javascript" src="./assets/js/config.js"></script>

  <script>
    BUI.use('common/main',function(){
      var config = [{
          id:'menu', 
          homePage : 'code',
          menu:[{
              text:'商品管理',
              items:[
                {id:'code',text:'现存商品',href:'allbook',closeable : false},
                {id:'main-menu',text:'商品添加',href:'addproduct'},
                {id:'second-menu',text:'商品下架',href:'xiajiabook'},           
              ]
            },{
              text:'订单管理',
              items:[
                {id:'operation',text:'已售商品',href:'main/operation.html'},
                {id:'quick',text:'订单处理',href:'lookorder'}  
              ]
            },{
              text:'用户管理',
              items:[
                {id:'resource',text:'用户明细',href:'main/resource.html'},
              
              ]
            }]
          },{
            id:'form',
            menu:[{
                text:'表单页面',
                items:[
                  {id:'code',text:'表单代码',href:'form/code.html'},
                  {id:'example',text:'表单示例',href:'form/example.html'},
                  {id:'introduce',text:'表单简介',href:'form/introduce.html'},
                  {id:'valid',text:'表单基本验证',href:'form/basicValid.html'},
                  {id:'advalid',text:'表单复杂验证',href:'form/advalid.html'},
                  {id:'remote',text:'远程调用',href:'form/remote.html'},
                  {id:'group',text:'表单分组',href:'form/group.html'},
                  {id:'depends',text:'表单联动',href:'form/depends.html'}
                ]
              },{
                text:'成功失败页面',
                items:[
                  {id:'success',text:'成功页面',href:'form/success.html'},
                  {id:'fail',text:'失败页面',href:'form/fail.html'}
                
                ]
              },{
                text:'可编辑表格',
                items:[
                  {id:'grid',text:'可编辑表格',href:'form/grid.html'},
                  {id:'form-grid',text:'表单中的可编辑表格',href:'form/form-grid.html'},
                  {id:'dialog-grid',text:'使用弹出框',href:'form/dialog-grid.html'},
                  {id:'form-dialog-grid',text:'表单中使用弹出框',href:'form/form-dialog-grid.html'}
                ]
              }]
          },{
            id:'search',
            menu:[{
                text:'搜索页面',
                items:[
                  {id:'code',text:'搜索页面代码',href:'search/code.html'},
                  {id:'example',text:'搜索页面示例',href:'search/example.html'},
                  {id:'example-dialog',text:'搜索页面编辑示例',href:'search/example-dialog.html'},
                  {id:'introduce',text:'搜索页面简介',href:'search/introduce.html'}, 
                  {id:'config',text:'搜索配置',href:'search/config.html'}
                ]
              },{
                text : '更多示例',
                items : [
                  {id : 'tab',text : '使用tab过滤',href : 'search/tab.html'}
                ]
              }]
          },{
            id:'detail',
            menu:[{
                text:'详情页面',
                items:[
                  {id:'code',text:'详情页面代码',href:'detail/code.html'},
                  {id:'example',text:'详情页面示例',href:'detail/example.html'},
                  {id:'introduce',text:'详情页面简介',href:'detail/introduce.html'}
                ]
              }]
          },{
            id : 'chart',
            menu : [{
              text : '图表',
              items:[
                  {id:'code',text:'引入代码',href:'chart/code.html'},
                  {id:'line',text:'折线图',href:'chart/line.html'},
                  {id:'area',text:'区域图',href:'chart/area.html'},
                  {id:'column',text:'柱状图',href:'chart/column.html'},
                  {id:'pie',text:'饼图',href:'chart/pie.html'}, 
                  {id:'radar',text:'雷达图',href:'chart/radar.html'}
              ]
            }]
          }];
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
  </script>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>

 </body>
 </html>