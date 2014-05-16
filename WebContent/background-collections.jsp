<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*background.jsp
*describe:搜赛网管理员 全部采集 界面
*author:king
*date:2015-5-12
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>管理员页面 &middot; 全部采集 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-全部采集" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
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
       <li class="active"><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li>
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li>
       <li><h5><a href="#"><i class="icon-minus"></i>数据维护:</a></h5></li>
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li>
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li>
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li>
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li>
       <li><h5><a href="#"><i class="icon-minus"></i>网站统计</a></h5></li>
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li>
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li>
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li>
       </ul>
     </div> 
<!-- /background-remind & backgroundMenu -->
     <div class="span9">
         <!--全部采集主体开始-->
         <div id="collectionLists"> 
         <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
         <div class="jplist-ios-button">
          展开面板
         </div> 
         <!-- panel --> 
         <div class="jplist-panel jplist-panel-top"> 
          <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
           <ul> 
            <li><span data-path="default" data-default="true">排序方式</span></li>
            <li><span data-path=".match-time" data-order="asc" data-type="datetime">比赛时间</span><i class="icon-arrow-up"></i></li> 
            <li><span data-path=".match-title" data-order="asc" data-type="text">比赛名称</span><i class="icon-arrow-up"></i></li> 
            <li><span data-path=".court-name" data-order="asc" data-type="text">比赛场地</span><i class="icon-arrow-up"></i></li> 
            <li><span data-path=".match-from" data-order="asc" data-type="text">来源网址</span><i class="icon-arrow-up"></i></li> 
           </ul>
          </div>
          <!-- filter by description --> 
          <div class="text-filter-box input-append"> 
           <input data-path=".match-title" type="text" placeholder="请输入关键字" data-control-type="textbox" data-control-name="match-filter" data-control-action="filter" />
           <select class="selectFilter">
            <option data-forFilter=".match-title">比赛名称</option>
            <option data-forFilter=".match-time">比赛时间</option>
            <option data-forFilter=".court-name">比赛场地</option>
            <option data-forFilter=".match-from">来源网址</option>
           </select>
           <span class="add-on"><i class="icon-search"></i></span> 
          </div>
         <div class="btnbar pull-right">
         <button>删除选中</button><button>发布选中</button>
         </div>
         </div>
         <!-- /jplist-panel --> 
         <table class="table table-striped table-hover collectionsTable">
         <caption>全部采集</caption>
         <thead><th>比赛名称</th><th>比赛时间</th><th class="text-center">比赛场地</th><th>网站来源</th></thead>
         <tbody>
         <tr class="match">
         <td class="match-title form-inline"><input type="checkbox" id="23787654123"/><label for="23787654123">2014年成都市乒乓球比赛2014</label></td>
         <td class="match-time">2014-9-15</td>
         <td class="court-name">wu四川省成都市武侯区人民体育馆乒乓球馆四川省民体育馆乒乓球馆四川省</td>
         <td class="match-from"><a href="#">http://www.baidu1.com四川省成都市民体育馆乒乓球馆四川省</a></td>
         <td class="oprate"><a href="#" class="btn btn-mini pull-right">查看编辑</a></td>
         </tr>
         <tr class="match">
         <td class="match-title form-inline"><input type="checkbox" id="23787654123"/><label for="23787654123">2014年成都市乒乓球比赛</label></td>
         <td class="match-time">2014-9-14</td>
         <td class="court-name">四川省成都市武侯区人民体育馆乒乓球馆</td>
         <td class="match-from"><a href="#">http://www.baidu.com</a></td>
         <td class="oprate"><a href="#" class="btn btn-mini pull-right">查看编辑</a></td>
         </tr>
         </tbody>
         </table>
         <div class="jplist-no-results jplist-hidden">
          <p>暂时没有结果哟！</p>
         </div> 
          <div class="jplist-ios-button">
          展开分页
         </div>
         <!-- panel --> 
         <div class="jplist-panel"> 
          <!-- pagination --> 
          <div class="jplist-pagination" data-control-type="pagination" data-control-name="paging" data-control-action="paging" data-items-per-page="10"> 
           <!-- default items per page (if no "items per page" dropdown on the page) --> 
          </div> 
         </div>
         <!-- /jplist-panel --> 
         </div>
         <!--全部采集主体结束-->
     </div><!-- /span9 -->
   </div><!-- /span11-->
   </div><!-- /row-->
   </div><!-- /container-->

<!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/jquery.wordLimit.js"></script> 
  <script src="js/jplist.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script>
  $(function(){
    //列表排序
    $('#collectionLists').jplist({
          itemsBox: '.collectionsTable',
          itemPath: '.match',
          panelPath: '.jplist-panel'
        });
    //字数限制，溢出省略
    $("td > label").wordLimit();
    $(".court-name").wordLimit();
    $(".match-from > a").wordLimit(25);
    //重复点击下拉列表改变排序
    var sortflag=1;
    $("div[data-control-action='sort'] li").click(function(){
      if(sortflag==1){
            //执行方法;
            $(this).find("span").attr("data-order","desc").end().find("i").removeClass("icon-arrow-up").addClass("icon-arrow-down");
            sortflag=0;
        }else{
            //执行方法;
            $(this).find("span").attr("data-order","asc").end().find("i").removeClass("icon-arrow-down").addClass("icon-arrow-up");
            sortflag=1;
        }
    });
  })
  </script>
</body>
</html>