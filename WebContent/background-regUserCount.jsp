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
  form {margin: 0;}
  form .btn {margin-bottom: 10px;}
  .table th:first-child {text-align: center;padding-left: 0;}
  .table td:first-child {text-align: right;}
  .chartBox {height:500px;border:1px solid #ccc;padding:10px;}
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
      <div class="toolBox">
        <form class="from-inline" id="form1" name="form1" method="post" action="">
          <label for="year">请选择年份</label>
          <select class="span1" name="year" id="year">
            <option>2010</option>
            <option selected="selected">2011</option>
          </select>
        <button class="btn pull-right">显示表格</button>
        </form>
      </div>
      <div class="hide" id="mainTable">
        <table class="table table-bordered table-striped table-condensed table-hover ">
          <thead>
            <tr><th colspan="14">搜赛网统计数据（2014年）</th></tr>
            <tr>
              <th>项目</th>
              <th>累计</th>
              <th>1月</th>
              <th>2月</th>
              <th>3月</th>
              <th>4月</th>
              <th>5月</th>
              <th>6月</th>
              <th>7月</th>
              <th>8月</th>
              <th>9月</th>
              <th>10月</th>
              <th>11月</th>
              <th>12月</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>访问量</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>注册用户</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>比赛发布（搜赛网）</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>比赛发布（自然人）</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>场地发布（搜赛网）</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>场地发布（自然人）</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td>场地评论</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="chartBox" id="mainLine"></div>
      <div class="chartBox" id="mainMap"></div>

     </div><!-- /span9 -->
   </div><!-- /span11-->
   </div><!-- /row-->
   </div><!-- /container-->

<!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script>
  <script src="js/esl.js"></script>
  <script src="js/sousai.bg-eCount.js"></script>
  <script src="js/sousai.bg-eCount-optionLine.js"></script>
  <script src="js/sousai.bg-eCount-optionMap.js"></script>
  <script src="js/sousai.common.js"></script>
  <script>
  $(function(){
    //重复点击显示/隐藏表格
    var flag = 1;
    $("#form1 > button").click(function(){
      if(flag==1){
            //执行方法;
            $("#mainTable").slideDown();
            $(this).text("隐藏表格");
            flag=0;
            //禁止form自动提交表单
            return false;
        }else{
            //执行方法;
            $("#mainTable").slideUp();
            $(this).text("显示表格");
            flag=1;
            //禁止form自动提交表单
            return false;
        }
    });
  })
  </script>
</body>
</html>