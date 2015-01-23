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
  .table th:first-child {text-align: center;padding-left: 0;}
  .table td:first-child {text-align: right;}
  .toolBox {margin-bottom: 10px;}
  .chartBox {height:500px;border:1px solid #ccc;padding:10px;margin-bottom: 10px;}
  </style> 
 </head> 
 <body class="background"> 
  <s:include value="background-head.jsp" /> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a>
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
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>网站设置</a></li> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li class="active"><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>网站统计</a></li>
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <div class="toolBox total form-inline">
        <label for="year">请选择年份：<select class="span1 year" name="year" id="year"><option>暂无年份</option></select></label> 
        <button class="btn pull-right" id="tableTiggler">显示表格</button>
        <button class="btn pull-right" id="chartTiggler">隐藏图表</button>
      </div> 
      <div class="hide" id="mainTable">
      <table class="table table-bordered table-striped table-condensed table-hover statisticsTable"> 
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
      <hr />
      <div class="toolBox region form-inline">
        <label for=regionTimeYear>请选择地域统计时间段：</label> 
        <select class="span1 year" name="timeYear" id="regionTimeYear"><option>暂无年份</option></select>
        <select class="span1" name="timeMonth" id="regionTimeMonth"> <option value="-1">全年</option> <option value="1">1月</option>  <option value="2">2月</option>  <option value="3">3月</option>  <option value="4">4月</option>  <option value="5">5月</option>  <option value="6">6月</option>  <option value="7">7月</option>  <option value="8">8月</option>  <option value="9">9月</option>  <option value="10">10月</option>  <option value="11">11月</option>  <option value="12">12月</option> </select> 
        <button class="btn pull-right" id="regionTiggler">隐藏地图</button>
      </div>
      <div class="chartBox " id="mainMap"></div>
      <hr />
      <div class="toolBox Match form-inline">
        <label for=matchTime>请输入时间以统计比赛场次：</label>
        <input type="text" class="input-small height-mini" id="matchTime" placeholder="请输入时间" /> 天内各地乒乓球比赛统计。
        <button class="btn " id="tableTigglerMatch">统计</button>
        <button class="btn pull-right" id="matchTiggler">显示表格</button>        
      </div>
      <p>北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、</p>
      <table class="table table-bordered table-striped table-condensed table-hover matchTable"> 
        <thead> 
         <tr>
          <th colspan="14">30天内各地乒乓球比赛数量统计</th>
         </tr> 
         <tr> 
          <th>北京</th> 
          <th>北京</th> 
          <th>北京</th> 
          <th>北京</th> 
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
          <td>58</td> 
          <td>5</td> 
          <td>455</td> 
          <td>52</td> 
          <td>54</td> 
          <td>515</td> 
          <td>5</td> 
          <td>215</td> 
          <td>54</td> 
          <td>5</td> 
          <td>5454</td> 
          <td>6</td> 
          <td>8</td> 
          <td>65</td> 
         </tr>
        </tbody> 
       </table>
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/sousai.common.js"></script> 
  <script src="js/esl.js"></script> 
  <script src="js/sousai.bg-eCount-optionLine.js"></script> 
  <script src="js/sousai.bg-eCount-optionMap.js"></script> 
  <script src="js/sousai.bg-eCount.js"></script> 

  <!-- handlebars template -->
  <script id="statistics-template" type="text/x-handlebars-template">
  {{#each this}}
 
  {{/each}}
  </script>
  <script>
  //定义函数
  </script>  
 </body>
</html>