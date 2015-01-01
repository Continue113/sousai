<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 全部采集 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-全部采集" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style>
  .table .match-from > a:first-child {width: 200px;}
  /** 排序下拉按钮 **/
  .panel-top > .btn-group {margin-top: -10px;}
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
       <!-- panel --> 
       <div class="panel-top">
       <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)">比赛名称<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">比赛时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">比赛场地<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">网站来源<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div>
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"/> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current">比赛名称</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)">比赛名称</a></li>
			<li><a href="javascript:void(0)">比赛时间</a></li>
			<li><a href="javascript:void(0)">比赛场地</a></li>
			<li><a href="javascript:void(0)">网站来源</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button">搜索</button>
         <!-- <span class="add-on"><i class="icon-search"></i></span> -->
        </div> 
        <select class="select selectRows span1"><option value=10>10条/页</option><option value=2>2条/页</option><option value=5>5条/页</option></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteMatch">删除选中</button>
         <button type="button" class="btn passMatch">发布选中</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover collectionsTable"> 
        <caption>全部采集</caption> 
        <thead>
         <tr>
          <th>比赛名称</th>
          <th>比赛时间</th>
          <th class="text-center">比赛场地</th>
          <th>网站来源</th>
         </tr>
        </thead> 
        <tbody> 
         <tr class="match"> 
          <td class="match-title form-inline"><input type="checkbox" id="23787654123" /><label for="23787654123">2014年成都市乒乓球比赛2014</label></td> 
          <td class="match-time">2014-9-15</td> 
          <td class="court-name">wu四川省成都市武侯区人民体育馆乒乓球馆四川省民体育馆乒乓球馆四川省</td> 
          <td class="match-from"><a href="#">http://www.baidu1.com四川省成都市民体育馆乒乓球馆四川省</a></td> 
          <td class="oprate"><a href="#" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr> 
         <tr class="match"> 
          <td class="match-title form-inline"><input type="checkbox" id="23787654123" /><label for="23787654123">2014年成都市乒乓球比赛</label></td> 
          <td class="match-time">2014-9-14</td> 
          <td class="court-name">四川省成都市武侯区人民体育馆乒乓球馆</td> 
          <td class="match-from"><a href="#">http://www.baidu.com</a></td> 
          <td class="oprate"><a href="#" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr> 
        </tbody> 
       </table> 
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>
      </div> 
      <!--全部采集主体结束--> 
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
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/sousai.common.js"></script>
  <!-- handlebars template -->
  <script id="Collections-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <tr class="match" data-info="{{data this}}"> 
          <td class="match-title"><label for="{{id}}"><input type="checkbox" id="{{id}}"/>{{name}}</label></td> 
          <td class="match-time">{{beginTime}} - {{endTime}}</td> 
          <td class="match-court">{{courtName}}</td>
          <td class="match-from"><a href="#">{{source}}</a></td> 
          <td class="match-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function e(crtPage,rs){
  	$("#ajaxState .load").show();console.log("start");
    $.ajax({
      type: "POST",
      url: "getAllCollection",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {currentPage:crtPage,rows:rs},
      dataType: "json",
      success: function(data) {
	      var target = $(".collectionsTable > tbody"),template = Handlebars.compile($('#collections-template').html());
	      Handlebars.registerHelper("data",function(v){
	    	  //将当前对象转化为字符串，保存在data-info中
	    	  console.log(v);
	    	  var v1 = JSON.stringify(v);
	    	  //console.log("v1:"+v1);
	    	  return v1;
	      });
	      target.empty(); //清空tbody
	  	  target.html(template(data.body));
	      $("#ajaxState .load").hide();console.log("stop");
	      //出错或无结果
	      //target.empty(); //清空tbody
	      if(target.find("tr.match").length == 0){
	      $("#ajaxState .noresult").show();console.log("无结果");
	      }
	      //字数限制，溢出省略
	      $("td > label").wordLimit();
	      $(".court-name").wordLimit();
	      $(".match-from > a").wordLimit(25);
	      pages(data.count,crtPage,rs);
	    },
      error: function() {
	      $("#ajaxState .noresult").show();console.log("出错了");
          alert("抱歉，ajax出错了。");
      },
    });
  }
  $(function(){
	//ajax接收所有采集
	//e(1,25);
  })
  </script>  
 </body>
</html>