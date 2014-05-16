<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*background.jsp
*describe:搜赛网管理员 数据统计 注册用户 界面
*author:king
*date:2015-5-16
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>管理员页面 &middot; 注册用户 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-数据统计-注册用户" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
  <![endif]-->
  <style>
.table .match-from > a:first-child {width: 200px;}
  </style>
 </head> 
 <body class="background"> 
  <s:include value="background-head.jsp" /> <!-- 管理员界面页头 --> 
  <div class="container">
    <div class="row">
    <div class="span4"> 
     <img src="img/logo.png" />
     <span class="logotext">管理员页面</span> 
    </div></div>
    <div class="row">
    	<div class="span11">
       <!-- background-remind & backgroundMenu -->
       <ul class="breadcrumb background-remind"> 
        <li>提醒:</li> 
        <li><a href="#">待处理的比赛信息<span>(5)</span></a></li>
       </ul>
     <div class="span2 backgroundMenu "> 
      <ul class="nav nav-stacked nav-side">
       <li><h5><a href="#"><i class="icon-minus"></i>系统发布:</a></h5></li>
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li>
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li>
       <li><h5><a href="#"><i class="icon-minus"></i>数据维护:</a></h5></li>
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li>
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li>
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li>
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li>
       <li><h5><a href="#"><i class="icon-minus"></i>网站统计</a></h5></li>
       <li class="active"><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li>
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li>
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li>
       </ul>
     </div> 
<!-- /background-remind & backgroundMenu -->
     <div class="span9">
         
     </div><!-- /span9 -->
   </div><!-- /span11-->
   </div><!-- /row-->
   </div><!-- /container-->

<!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script>
  $(function(){
  })
  </script>
</body>
</html>