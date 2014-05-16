<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*background.jsp
*describe:搜赛网管理员 场地维护 界面
*author:king
*date:2015-5-14
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>管理员页面 &middot; 场地维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-场地维护" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]--> 
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
       <s:include value="background-nav.jsp" /><!-- 管理员界面待处理提醒 和 侧边导航 --> 
     <div class="span9">
         <!--全部采集主体开始-->
         <div id="courtMaintenance"> 
         <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
         <div class="jplist-ios-button">
          展开面板
         </div> 
         <!-- panel --> 
         <div class="jplist-panel jplist-panel-top"> 
          <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
           <ul> 
            <li><span data-path="default" data-default="true">排序方式</span></li>
            <li><span data-path=".court-name" data-order="asc" data-type="text">场地名称</span><i class="icon-arrow-up"></i></li> 
            <li><span data-path=".match-type" data-order="asc" data-type="text">比赛类型</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".court-address" data-order="asc" data-type="text">场地地址</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".releaseTime" data-order="asc" data-type="datetime">发布时间</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".releaseUser" data-order="asc" data-type="text">发布用户</span><i class="icon-arrow-up"></i></li> 
           </ul>
          </div>
          <!-- filter by description --> 
          <div class="text-filter-box input-append"> 
           <input data-path=".court-name" type="text" placeholder="请输入关键字" data-control-type="textbox" data-control-name="match-filter" data-control-action="filter" />
           <select class="selectFilter">
            <option data-forFilter=".court-name">场地名称</option>
            <option data-forFilter=".match-type">比赛类型</option>
            <option data-forFilter=".court-address">场地地址</option>
            <option data-forFilter=".releaseTime">发布时间</option>
            <option data-forFilter=".releaseUser">发布用户</option>
           </select>
           <span class="add-on"><i class="icon-search"></i></span> 
          </div>
         <div class="btnbar pull-right">
         <button>删除选中</button><button>发布选中</button>
         </div>
         </div>
         <!-- /jplist-panel --> 
         <table class="table table-striped table-hover courtTable">
         <caption>场地维护</caption>
         <thead><th>场地名称</th><th>比赛类型</th><th>场地地址</th><th>发布时间</th><th>发布用户</th></thead>
         <tbody>
         <tr class="court">
         <td class="court-name form-inline"><input type="checkbox" id="23787654123"/><label for="23787654123">2014年成都市乒乓球比赛</label></td>
         <td class="match-type">乒乓球</td>
         <td class="court-address">四川省成都市武侯区人民体育馆乒乓球馆</td>
         <td class="releaseTime">2014-9-14</td>
         <td class="releaseUser">搜赛网</td>
         <td class="oprate"><a href="#" class="btn btn-mini pull-right">查看编辑</a></td>
         </tr>
         <tr class="court">
         <td class="court-name form-inline"><input type="checkbox" id="237876541231"/><label for="237876541231">2014年成都市乒乓球比赛2014年成都市乒乓球比赛2014年成都市乒乓球比赛</label></td>
         <td class="match-type">乒乓球</td>
         <td class="court-address">四川省成都市武侯区人民体育馆乒乓球馆四川省成都市武侯区人民体育馆乒乓球馆</td>
         <td class="releaseTime">2014-9-14</td>
         <td class="releaseUser">KINGKINGKING14</td>
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
     </div><!-- /span8 -->
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
    $('#courtMaintenance').jplist({
          itemsBox: '.courtTable',
          itemPath: '.court',
          panelPath: '.jplist-panel'
        });
    //管理员界面表格列字数限制，溢出省略
    $("td > label").wordLimit();
    $(".court-address").wordLimit();
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