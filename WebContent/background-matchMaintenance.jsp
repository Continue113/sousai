<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>管理员页面 &middot; 比赛维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-比赛维护" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style>
  /** 现有场地框 **/
  .existCourtsBox{border: 3px solid #ddd;
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;}
  /** 避免验证后无圆角 **/
  .input-append span.add-on{
  -webkit-border-radius: 0 4px 4px 0;
  -moz-border-radius: 0 4px 4px 0;
  border-radius: 0 4px 4px 0;
  }
  /** 现有场地表格 **/
  .existCourtsBox tr{cursor: pointer;}
  .existCourtsBox tr.active {
    font-weight: bold;
  }
  /** 添加场地按钮 **/
  .existCourtsBox > .text-center > .btn {margin-top: 10px;float: none;}
  /** 编辑比赛 按钮bar  **/
  .editMatch > .btnbar {margin-left: 0;}
  /** 编辑比赛按钮bar 中的按钮  **/
  .editMatch > .btnbar > .btn {float: right;margin-left: 10px;}  
  /** 最小宽度情况下 **/
  @media (max-width: 480px) {
    /** 搜索现有场地按钮 **/
    #searchExistedCourt{margin-top: 5px;}
  }
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
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>系统发布:</a></h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>网站设置</a></li> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li class="active"><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>网站统计</a></li>
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9">
      <!--比赛维护 开始-->
      <div class="matchList">
      <div id="matchMaintenance">
       <!-- panel --> 
       <div class="panel-top">
       <div class="btn-group sort" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-orderbycol="name" data-isasc="true">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)" data-orderbycol="name" data-isasc="true">比赛名称<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="beginTime" data-isasc="true">比赛时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="courtName" data-isasc="true">比赛场地<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="relTime" data-isasc="true">发布时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="userName" data-isasc="true">发布用户<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div>
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"/> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-strcolumns="name">比赛名称</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)" data-strcolumns="name">比赛名称</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="beginTime">比赛时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="courtName">比赛场地</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="relTime">发布时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="userName">发布用户</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button" id="textFilterBoxSearchButton">搜索</button>
         <!-- <span class="add-on"><i class="icon-search"></i></span> -->
        </div> 
        <select class="select selectRows span1"><option value=10>10条/页</option><option value=2>2条/页</option><option value=5>5条/页</option></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteMatch">删除选中</button>
         <button type="button" class="btn passMatch">发布选中</button> 
        </div> 
       </div>
       </div>
       <table class="table table-striped table-hover matchTable"> 
        <caption>比赛维护</caption> 
        <thead>
         <tr>
          <th>比赛名称</th>
          <th>比赛时间</th>
          <th class="th-matchCourt">比赛场地</th>
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
      <!--比赛维护 结束-->
      
      <!--编辑比赛 开始-->
        <s:include value="editMatch.jsp" />
      <!-- /编辑比赛信息 -->
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
  <script src="js/bootstrap-datetimepicker.min.js"></script> 
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.common.js"></script>
  <script src="js/sousai.editmatch.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <tr class="match" data-info="{{data this}}"> 
          <td class="match-title"><label for="{{id}}"><input type="checkbox" id="{{id}}"/><span>{{id}}:{{name}}</span></label></td> 
          <td class="match-time">{{beginTime}} - {{endTime}}</td> 
          <td class="match-court">{{region}}:{{courtName}}</td> 
          <td class="match-releaseTime">{{relTime}}</td> 
          <td class="match-releaseUser">{{userName}}</td> 
          <td class="match-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function e(crtPage,rs,obc,ia,sc,kv){
		//定义默认选项
		rs = rs||$("select.selectRows option:selected").val()||25,
		crtPage = crtPage||$("ul.pagination li.active a").html()||1, //每次点击改变条数都从第一页开始；parseInt($("ul.pagination > li.active").text()) || 1; //若当前页数为空则默认为第一页
	  	obc = obc||$(".sort button .current").attr("data-orderbycol"), 
		ia = ia||$(".sort button .current").attr("data-isasc"),
		sc = sc||$(".text-filter-box button .current").attr("data-strcolumns"),
		kv = kv||$(".text-filter-box input").val();
	  	console.log(crtPage+" "+rs+" "+obc+" "+ia+" "+sc+" "+kv);
	  	
  	$("#ajaxState .load").show();console.log("start");
    $.ajax({
      type: "POST",
      url: "getAllMatch",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {currentPage:crtPage,rows:rs,orderByCol:obc,isAsc:ia,strColumns:sc,keyValue:kv},
      dataType: "json",
      success: function(rspdata) {
    	  console.log(rspdata);
	      var target = $(".matchTable > tbody"),template = Handlebars.compile($('#match-template').html());
	      Handlebars.registerHelper("data",function(v){
	    	  //将当前对象转化为字符串，保存在data-info中
	    	  //console.log(v);
	    	  var v1 = JSON.stringify(v);
	    	  //console.log("v1:"+v1);
	    	  return v1;
	      });
	      target.empty(); //清空tbody
	  	  target.html(template(rspdata.body));
	      $("#ajaxState .load").hide();
	      $("#ajaxState .noresult").hide();
	      console.log("stop");
	      //出错或无结果
	      //target.empty(); //清空tbody
	      if(target.find("tr.match").length == 0){
	      $("#ajaxState .noresult").show();console.log("无结果");
	      }
	      //字数限制，溢出省略
	      $("td > label > span").wordLimit();
	      $(".match-court").wordLimit();
	      pages(rspdata.count,crtPage,rs);
	    },
      error: function(jqXHR,textStatus,errorThrown){
    	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	      $("#ajaxState .noresult").show();console.log("出错了");
          sousaiRemindDialog("抱歉，ajax出错了。");
      },
    });
  }
  function sureDelete(){
	  hideSousaiRemindDialog();
	  var matchIds = new Array(),
		rs = $("select.selectRows option:selected").val(),
		crtPage = $("ul.pagination").find("li.active a").text();
		$(".match input:checked").each(function(index,element){
			console.log($(this).attr("id"));
  			matchIds.push($(this).attr("id"));
		});
      $.ajax({
        type: "POST",
        url: "deleteMatches",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "matchIds": matchIds.join(","),
        },
        dataType: "json",
        success: function(rspdata) {
      	  if( rspdata == "success" ){
      		  //sousaiRemindDialog("删除成功");sousaiRemindDialog(crtPage);
      		  //e(crtPage,rs);//刷新数据
      		  sousaiRemindDialog("删除成功");
      		  $(".match input:checked").parent().parent().parent().remove();
      	  }else if( rspdata == "fail" ){
      		  sousaiRemindDialog("删除失败");
      	  }else{
      		  sousaiRemindDialog("删除失败，错误代码为"+rspdata);
      	  }
        },
        error: function(jqXHR,textStatus,errorThrown){
        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
        },
      });
  }
  $(function(){
	//ajax接收所有比赛
	e(1,25,"name",true,"name","");
    //点击编辑比赛隐藏List列表同时显示编辑比赛
    $("tbody").on("click",".match-oprate > a",function(event){
        var datainfo = $(this).parent().parent().attr("data-info");
        setMatchInfo(datainfo);
        if($("#editMatchType").text() == "取消修改"){
        	$("#editMatchType").click();
        }
        if($("#editMatchCourt").text() == "取消修改"){
        	$("#editMatchCourt").click();
        }
    	$(".matchList").slideUp();
    	$(".editMatch").slideDown();
  	});
    //点击删除比赛 列表界面
    $("#matchMaintenance .deleteMatch").click(function(){
    	
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对收藏此比赛的用户照成影响。");
    		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDelete()");
    		sousaiRemindDialog("确定删除？",-1,"show");
    	}
    });
    //点击发布比赛 列表界面
    $("#matchMaintenance .passMatch").click(function(){
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		var matchIds = new Array();
    		$(".match input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
        		matchIds.push($(this).attr("id"));
    		});
    		console.log(matchIds);
            $.ajax({
              type: "POST",
              url: "passMatches",
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
                "matchIds": matchIds.join(","),
              },
              dataType: "json",
              success: function(data) {
            	  if( data == "success" ){
            		  sousaiRemindDialog("发布成功");
            	  }else if( data == "fail" ){
            		  sousaiRemindDialog("发布失败");
            	  }else{
            		  sousaiRemindDialog("发布失败，错误代码未知");
            	  }
              },
              error: function(jqXHR,textStatus,errorThrown){
            	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
              },
            });
    	}
    });
    
  });
  </script>  
 </body>
</html>