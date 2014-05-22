<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 评论维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-评论维护" /> 
  <meta name="author" content="KING@CQU" /> 
  <!-- styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
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
       <li class="active"><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="#"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li> 
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li> 
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li> 
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <!--全部采集主体开始--> 
      <div id="evaluationMaintenance"> 
       <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
       <div class="jplist-ios-button">
         展开面板 
       </div> 
       <!-- panel --> 
       <div class="jplist-panel jplist-panel-top"> 
        <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
         <ul> 
          <li><span data-path="default" data-default="true">排序方式</span></li> 
          <li><span data-path=".evaluation-content" data-order="asc" data-type="text">评论内容</span><i class="icon-arrow-up"></i></li> 
          <li><span data-path=".court-name" data-order="asc" data-type="text">场地名称</span><i class="icon-arrow-up"></i></li> 
          <li><span data-path=".evaluation-releaseTime" data-order="asc" data-type="datetime">发布时间</span><i class="icon-arrow-up"></i></li> 
          <li><span data-path=".evaluation-releaseUser" data-order="asc" data-type="text">发布用户</span><i class="icon-arrow-up"></i></li> 
         </ul> 
        </div> 
        <!-- filter by description --> 
        <div class="text-filter-box input-append"> 
         <input data-path=".court-name" type="text" placeholder="请输入关键字" data-control-type="textbox" data-control-name="match-filter" data-control-action="filter" /> 
         <select class="selectFilter"> <option data-forfilter=".evaluation-content">评论内容</option> <option data-forfilter=".court-name">场地名称</option> <option data-forfilter=".releaseTime">发布时间</option> <option data-forfilter=".releaseUser">发布用户</option> </select> 
         <span class="add-on"><i class="icon-search"></i></span> 
        </div> 
        <div class="btnbar pull-right"> 
         <button>删除选中</button> 
        </div> 
       </div> 
       <!-- /jplist-panel --> 
       <table class="table table-striped table-hover evaluationTable"> 
        <caption>
         评论维护
        </caption> 
        <thead>
         <tr>
          <th>评论内容</th>
          <th class="text-center">场地名称</th>
          <th>发布时间</th>
          <th>发布用户</th>
         </tr>
        </thead> 
        <tbody> 
         <tr class="evaluation"> 
          <td class="evaluation-content form-inline"><input type="checkbox" id="23787654123" /><label for="23787654123">2014年成都市乒乓球比赛</label></td> 
          <td class="court-name">四川省成都市武侯区人民体育馆乒乓球馆</td> 
          <td class="releaseTime">2014-9-14</td> 
          <td class="releaseUser">搜赛网</td> 
         </tr> 
         <tr class="evaluation"> 
          <td class="evaluation-content form-inline"><input type="checkbox" id="23787654123" /><label for="23787654123">2014年成都市乒乓球比赛2014年成都市乒乓球比赛2014年成都市乒乓球比赛2014年成都市乒乓球比赛</label></td> 
          <td class="court-name">四川省成都市武侯区人民体育馆乒乓球馆四川省成都市武侯区人民体育馆乒乓球馆</td> 
          <td class="releaseTime">2014-9-14</td> 
          <td class="releaseUser">搜赛网</td> 
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
     </div>
     <!-- /span8 --> 
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
  <script src="js/jquery.wordLimit.js"></script> 
  <script src="js/jplist.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script>
  $(function(){
    //列表排序
    $('#evaluationMaintenance').jplist({
          itemsBox: '.evaluationTable',
          itemPath: '.evaluation',
          panelPath: '.jplist-panel'
        });
    //管理员界面表格列字数限制，溢出省略
    $("td > label").wordLimit();
    $(".court-name").wordLimit();
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