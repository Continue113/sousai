<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 评论维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-评论维护" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
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
      <li><a href="javascript:void(0)">待处理的比赛信息<span>(5)</span></a></li> 
     </ul> 
     <div class="span2 backgroundMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><h5><i class="icon-minus"></i>系统发布:</h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li> 
       <li><h5><i class="icon-minus"></i>数据维护:</h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li class="active"><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><i class="icon-minus"></i>网站统计</h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li> 
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li> 
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li> 
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <!--评论维护 开始--> 
      <div id="evaluationMaintenance"> 
       <!-- panel --> 
       <div class="panel-top">
       <div class="btn-group sort" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-orderbycol="courtName" data-isasc="true">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)" data-orderbycol="mesg" data-isasc="true">评论内容<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="courtName" data-isasc="true">场地名称<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="time" data-isasc="true">发布时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="userName" data-isasc="true">发布用户<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div>
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"/> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-strcolumns="courtName">场地名称</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)" data-strcolumns="mesg">评论内容</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="courtName">场地名称</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="time">发布时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="userName">发布用户</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button" id="textFilterBoxSearchButton">搜索</button>
         <!-- <span class="add-on"><i class="icon-search"></i></span> -->
        </div>  
        <select class="select selectRows span1"><option value=10>10条/页</option><option value=2>2条/页</option><option value=5>5条/页</option></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteEvaluation">删除选中</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover evaluationTable"> 
        <caption>评论维护</caption> 
        <thead>
         <tr>
          <th>评论内容</th>
          <th class="text-center">场地名称</th>
          <th>发布时间</th>
          <th>发布用户</th>
         </tr>
        </thead> 
        <tbody></tbody> 
       </table>
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>
      </div> 
      <!--评论维护 结束--> 
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/sousai.common.js"></script>
  <!-- handlebars template -->
  <script id="evaluation-template" type="text/x-handlebars-template">
    {{#each this}}

      <tr class="evaluation"  data-info="{{data this}}">
         <td class="evaluation-content form-inline" data-parentId="{{parentId}}"><label for="{{id}}"><input type="checkbox" id="{{id}}" />{{mesg}}</label></td>
         <td class="court-name" data-courtId="{{courtId}}">{{courtName}}</td>
         <td class="evaluation-releaseTime">{{time}}</td>
         <td class="evaluation-releaseUser" data-userId="{{userId}}">{{#if userName}}{{userName}}{{else}}匿名发布{{/if}}</td>
      </tr>
            
    {{/each}}
  </script>
  
  <script>
  //定义函数

	function e(crtPage,rs,obc,ia,sc,kv){
	$("#ajaxState .load").show();console.log("start");
    $.ajax({
        type: "POST",
        url: "getAllMesg",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {currentPage:crtPage,rows:rs,orderByCol:obc,isAsc:ia,strColumns:sc,keyValue:kv},
        dataType: "json",
        success: function(data) {
            var target = $(".evaluationTable > tbody"),template = Handlebars.compile($('#evaluation-template').html());
            Handlebars.registerHelper("data",function(v){
              //将当前对象转化为字符串，保存在data-info中
              console.log(v);
              var v1 = JSON.stringify(v);
              //console.log("v1:"+v1);
              return v1;
            });
            target.empty(); //清空tbody
            target.html(template(data.body));
            $("#ajaxState .load").hide();
  	      $("#ajaxState .noresult").hide();
  	      console.log("stop");
      	    //出错或无结果
      	    //target.empty(); //清空tbody
      	    if(target.find("tr.evaluation").length == 0){
      	    $("#ajaxState .noresult").show();console.log("无结果");
      	    }
            //管理员界面表格列字数限制，溢出省略
            $("td > label").wordLimit();
            $(".court-name").wordLimit();
            pages(data.count,crtPage,rs);
  	    },
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
  	      $("#ajaxState .noresult").show();console.log("出错了");
          sousaiRemindDialog("抱歉，ajax出错了。");
        },
      });
	}
  
  $(function(){
	//ajax接受所有的评论
	e(1,25,"courtName",true,"courtName","");
  });
  </script>  
 </body>
</html>