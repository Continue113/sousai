<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*background.jsp
*describe:搜赛网管理员 用户维护 界面
*author:king
*date:2015-5-14
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>管理员页面 &middot; 用户维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-用户维护" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet" /> 
  <link href="css/bootstrap.css" rel="stylesheet" /> 
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
         <div id="userMaintenance"> 
         <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
         <div class="jplist-ios-button">
          展开面板
         </div> 
         <!-- panel --> 
         <div class="jplist-panel jplist-panel-top"> 
          <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
           <ul> 
            <li><span data-path="default" data-default="true">排序方式</span></li>
            <li><span data-path=".user-userName" data-order="asc" data-type="text">用户名</span><i class="icon-arrow-up"></i></li> 
            <li><span data-path=".user-email" data-order="asc" data-type="text">注册邮箱</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".user-registerTime" data-order="asc" data-type="datetime">注册时间</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".user-loginNumber" data-order="asc" data-type="number">登录次数</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".user-matchNumber" data-order="asc" data-type="number">比赛发布</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".user-courtNumber" data-order="asc" data-type="number">场地发布</span><i class="icon-arrow-up"></i></li>
           </ul>
          </div>
          <!-- filter by description --> 
          <div class="text-filter-box input-append"> 
           <input data-path=".user-userName" type="text" placeholder="请输入关键字" data-control-type="textbox" data-control-name="match-filter" data-control-action="filter" />
           <select class="selectFilter">
            <option data-forFilter=".user-userName">用户名</option>
            <option data-forFilter=".user-email">注册邮箱</option>
            <option data-forFilter=".user-registerTime">注册时间</option>
            <option data-forFilter=".user-IP">IP地域</option>
           </select>
           <span class="add-on"><i class="icon-search"></i></span> 
          </div>
         <div class="btnbar pull-right">
         <button>禁用用户</button><button>添加用户</button>
         </div>
         </div>
         <!-- /jplist-panel --> 
         <table class="table table-striped table-hover userTable">
         <caption>用户维护</caption>
         <thead><th>用户名</th><th>注册时间</th><th>最后登录时间</th><th>比赛发布</th><th>场地发布</th><th>登录次数</th><th>登录邮箱</th><th>常用IP</th></thead>
         <tbody>
         <tr class="user">
         <td class="user-userName form-inline"><input type="checkbox" id="23787654123"/><label for="23787654123">KINGTSET</label></td>
         <td class="user-registerTime">2014-9-14</td>
         <td class="user-lastLoginTime">2014-9-14</td>
         <td class="user-matchNumber">1</td>
         <td class="user-courtNumber">1</td>
         <td class="user-loginNumber">1</td>
         <td class="user-email">sousai@163.com</td>
         <td class="user-IP">222.222.222.222<span>&nbsp;北京</span></td>
         <td class="oprate"><a href="#" class="btn btn-mini pull-right">查看编辑</a></td>
         </tr>
         <tr class="user">
         <td class="user-userName form-inline"><input type="checkbox" id="237876541231"/><label for="237876541231">KINGTSETKINGTS</label></td>
         <td class="user-registerTime">2014-9-14</td>
         <td class="user-lastLoginTime">2014-9-14</td>
         <td class="user-matchNumber">1</td>
         <td class="user-courtNumber">1</td>
         <td class="user-loginNumber">1</td>
         <td class="user-email">sousais1211@163.com</td>
         <td class="user-IP">222.222.222.222<span>&nbsp;北京</span></td>
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
    $('#userMaintenance').jplist({
          itemsBox: '.userTable',
          itemPath: '.user',
          panelPath: '.jplist-panel'
        });
    //管理员界面表格列字数限制，溢出省略
    $(".user-email").wordLimit(16);
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