<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 注册用户 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-数据统计-注册用户" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
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
  <s:include value="background-head.jsp" /> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <img src="img/logo.png" /> 
     <span class="logotext">管理员页面</span> 
    </div>
   </div> 
   <div class="row"> 
    <div class="span11"> 
     <!-- background-remind & backgroundMenu --> 
     <ul class="breadcrumb background-remind"> 
      <li>提醒:</li> 
      <li><a href="javascript:void(0);">待处理的比赛信息<span>(5)</span></a></li> 
     </ul> 
     <div class="span2 backgroundMenu"> 
      <ul class="nav nav-stacked nav-side"> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>系统发布:</a></h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li class="active"><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li> 
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li> 
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li> 
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <div class="toolBox total form-inline">
        <label for="year">请选择年份：<select class="span1" name="year" id="year"> <option>2010</option> <option selected="selected">2011</option> </select></label> 
        <button class="btn pull-right" id="tableTiggler">隐藏表格</button>
        <button class="btn pull-right" id="chartTiggler">显示图表</button>
        <button class="btn pull-right" onclick="GetAjaxChartData()">通过Ajax获取数据</button>
      </div> 
      <div class="" id="mainTable"> 
       <table class="table table-bordered table-striped table-condensed table-hover "> 
        <thead> 
         <tr>
          <th colspan="14">搜赛网统计数据（2014年）</th>
         </tr> 
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
      <div class="chartBox " id="mainLine"></div>
      
      <div class="toolBox region form-inline">
        <label for=regionTimeYear>请选择地域统计时间段：</label> 
        <select class="span1" name="timeYear" id="regionTimeYear"> <option>2010</option> <option selected="selected">2011</option> </select>
        <select class="span1" name="timeMonth" id="regionTimeMonth"> <option>全年</option> <option selected="selected">1月</option> </select> 
        <button class="btn " id="regionTiggler">显示地图</button>
        <button class="btn " onclick="GetAjaxChartDataRegion()">通过Ajax获取数据</button>
      </div>
      <div class="chartBox " id="mainMap"></div>
      
      <div class="toolBox Match form-inline">
        <label for=matchTime>请输入时间以统计比赛场次：</label>
        <input type="text" class="input-small height-mini" id="matchTime" placeholder="请输入时间" /> 天内各地乒乓球比赛统计。
        <button class="btn " id="tableTigglerMatch">统计</button>
        <p>北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、</p>
        <!-- <button class="btn " onclick="GetAjaxChartDataMatch()">通过Ajax获取数据</button> -->
      </div> 
     </div>
     <!-- /span9 --> 
    </div>
    <!-- /span11--> 
   </div>
   <!-- /row--> 
  </div>
  <!-- /container--> 
  <!-- HTML5 elements ,IE9模式, for IE6-8 --> 
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/IE9.js"></script>
  <![endif]--> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/esl.js"></script> 
  <script src="js/sousai.bg-eCount.js"></script> 
  <script src="js/sousai.bg-eCount-optionLine.js"></script> 
  <script src="js/sousai.bg-eCount-optionMap.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script>
  //定义函数

  function GetAjaxChartDataRegion(){
	  alert("SSSS");
  }
  $(function(){
	  $("#mainLine").slideUp();
	  $("#mainMap").slideUp();
	  //重复点击显示/隐藏表格
	  $("#tableTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示表格"){
	            $("#mainTable").slideDown();
	            $(this).text("隐藏表格");
	        }else{
	            $("#mainTable").slideUp();
	            $(this).text("显示表格");
	        }
	  });
	  $("#chartTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示图表"){
	            $("#mainLine").slideDown();
	            $(this).text("隐藏图表");
	        }else{
	            $("#mainLine").slideUp();
	            $(this).text("显示图表");
	        }
	  });
	  $("#regionTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示地图"){
	            $("#mainMap").slideDown();
	            $(this).text("隐藏地图");
	        }else{
	            $("#mainMap").slideUp();
	            $(this).text("显示地图");
	        }
	  });
  });
  </script>  
 </body>
</html>