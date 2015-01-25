<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 全部采集 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-全部采集" /> 
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
  .table .match-from > a:first-child {width: 200px;}
  /** 编辑比赛 按钮bar  **/
  .editMatch > .btnbar {margin-left: 0;}
  /** 编辑比赛按钮bar 中的按钮  **/
  .editMatch > .btnbar > .btn {float: right;margin-left: 10px;}  
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
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>网站设置</a></li> 
       <li><h5><a href="#"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="#"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>网站统计</a></li>
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <!--全部采集主体开始--> 
      <div class="matchList"> 
       <!-- panel --> 
       <div class="panel-top"> 
        <select class="select selectRows span1"><option value=25>25条/页</option><option value=2>2条/页</option><option value=5>5条/页</option></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteCollection">删除选中</button>
         <button type="button" class="btn passCollection">发布选中</button> 
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
        <tbody></tbody> 
       </table> 
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>
      </div> 
      <!--全部采集主体结束-->
      
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
  <script id="collections-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <tr class="match" data-info="{{data this}}"> 
          <td class="match-title"><label for="{{id}}"><input type="checkbox" id="{{id}}"/><span>{{name}}</span></label></td> 
          <td class="match-time">{{matchStartTime}} - {{matchDeadline}}</td> 
          <td class="match-court">{{matchAddress}}</td>
          <td class="match-from"><a href="#">{{url}}</a></td> 
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
      url: "backgroundCollections",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {currentPage:crtPage,rows:rs},
      dataType: "json",
      success: function(rspdata) {
    	  console.log(rspdata);
	      var target = $(".collectionsTable > tbody"),template = Handlebars.compile($('#collections-template').html());
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
	      $(".match-from > a").wordLimit(25);
	      pages(rspdata.count,crtPage,rs);
	    },
      error: function(jqXHR,textStatus,errorThrown){
    	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	      $("#ajaxState .noresult").show();console.log("出错了");
	      sousaiRemindDialog("抱歉，获取数据出错了。");
      },
    });
  }
function sureDelete(){
	hideSousaiRemindDialog();
	var collectionId = new Array();
	$(".match input:checked").each(function(index,element){
		console.log($(this).attr("id"));
		collectionId.push($(this).attr("id"));
	});
    $.ajax({
      type: "POST",
      url: "deleteCollections",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {
        "collectionId": collectionId.join(","),
      },
      dataType: "json",
      success: function(rspdata) {
    	  if( rspdata == "success" ){
    		  sousaiRemindDialog("删除成功");
    		  $(".match input:checked").parent().parent().parent().remove();
    	  }else if( rspdata == "error" ){
    		  sousaiRemindDialog("删除失败");
    	  }else{
    		  sousaiRemindDialog("删除失败，错误代码为："+rspdata);
    	  }
      },
      error: function(jqXHR,textStatus,errorThrown){
    	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
       	  sousaiRemindDialog("delete:抱歉，发送信息到服务器出错了。");
      },
    });
}
function sureDeleteEdit(){
	hideSousaiRemindDialog();
	$.ajax({
        type: "POST",
        url: "deleteCollections",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
      	  "collectionId": $("#inputMatchTitle").attr("data-id"),
        },
        dataType: "json",
        success: function(rspdata) {
      	  if( rspdata == "success" ){
      		  sousaiRemindDialog("删除成功");
      		  $("#"+$("#inputMatchTitle").attr("data-id")).parent().parent().parent().remove();
      	  }else if( rspdata == "error" ){
      		  sousaiRemindDialog("删除失败");
      	  }else{
      		  sousaiRemindDialog("删除失败，错误代码为："+rspdata);
      	  }
        },
        error: function(jqXHR,textStatus,errorThrown){
          	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
      	  sousaiRemindDialog("delete:抱歉，发送信息到服务器出错了。");
        },
      });
}
  $(function(){
	  //删除.btnbar 中绑定为比赛的class 改为Collection 使原来的发布比赛、保存修改、删除比赛的点击函数失效，
	  $(".editMatch").find(".btnbar").html('<button type="button" class="btn passCollection">发布采集</button><button type="button" class="btn saveCollection">保存修改</button><button type="button" class="btn deleteCollection">删除采集</button><button type="button" class="btn backList ">返回列表</button>');
	  
	//ajax接收所有比赛
	e(1,25);
    //点击编辑比赛隐藏List列表同时显示编辑比赛
    $("tbody").on("click",".match-oprate > a",function(event){
        var datainfo = $(this).parent().parent().attr("data-info");
        //setMatchInfo(datainfo);
        if($("#editMatchType").text() == "取消修改"){
        	$("#editMatchType").click();
        }
        if($("#editMatchCourt").text() == "取消修改"){
        	$("#editMatchCourt").click();
        }    	
        //解析datainfo中的信息
        var data = eval('(' + datainfo + ')');
        $("#inputMatchTitle").val(data.name).attr("data-id",data.id).attr("data-url",data.url);
        $("#inputMatchType").val(data.matchType).attr("data-oldtype",data.matchType);
        $("#inputMatchTimefrom").val(data.matchStartTime);
        $("#inputMatchTimeto").val(data.matchDeadline);
        $("#inputMatchCourt").val(data.matchAddress).attr("data-oldcourt",data.matchAddress);
        tinymce.activeEditor.setContent(data.matchIntroduction);
                       
    	$(".matchList").slideUp();
    	$(".editMatch").slideDown();
  	});
    //点击删除比赛 列表界面
    $(".matchList .deleteCollection").click(function(){
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中采集");
    	}else{
    		$("#SRDadd").text("小提示：一旦确定删除将无法取消操作。");
    		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDelete()");
    		sousaiRemindDialog("确定删除？",-1,"show");
    	}
    });
    //点击发布比赛 列表界面
    $(".matchList .passCollection").click(function(){
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		var collectionId = new Array();
    		$(".match input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
        		collectionId.push($(this).attr("id"));
    		});
            $.ajax({
              type: "POST",
              url: "publishCollections",
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
                "collectionId": collectionId.join(","),
              },
              dataType: "json",
              success: function(rspdata) {
            	  if( rspdata == "success" ){
            		  //sousaiRemindDialog("删除成功");sousaiRemindDialog(crtPage);
            		  sousaiRemindDialog("发布成功");
            		  $(".match input:checked").parent().parent().parent().hide();
            		  //e(crtPage,rs);//刷新数据
            	  }else if( rspdata == "error" ){
            		  //sousaiRemindDialog("删除失败")
            		  sousaiRemindDialog("发布失败");
            	  }else{
            		  sousaiRemindDialog("发布失败，错误代码："+rspdata);
            	  }
              },
              error: function(jqXHR,textStatus,errorThrown){
            	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                sousaiRemindDialog("pass:抱歉，发送信息到服务器出错了。");
              },
            });
    	}
    });

    //***************************************************************************************
    // 编辑比赛的js代码，同比赛发布页面。 ***************************** BEGIN ***************************
    //***************************************************************************************
    //删除比赛 编辑界面
    $(".editMatch .deleteCollection").click(function (){
    	$("#SRDadd").text("小提示：一旦确定删除将无法取消操作。");
		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDeleteEdit()");
		sousaiRemindDialog("确定删除？",-1,"show");
    });
    //点击保存修改
    $(".editMatch .saveCollection").click(function (){
    	var match = getMatchInfo();
    	console.log(match);
    	var id = $("#inputMatchTitle").attr("data-id"),
    	url = $("#inputMatchTitle").attr("data-url"),
    	title = $("#inputMatchTitle").val(),
        type = $("#inputMatchType").val(),
        //typeid = $("#inputMatchType").attr("data-typeid"),
        begintime = $("#inputMatchTimefrom").val(),
        endtime = $("#inputMatchTimeto").val(),
        courtaddr = $("#inputMatchCourt").val(),
        //courtid = $("#inputMatchCourt").attr("data-courtid"),
    	//iscourt = $("#inputMatchCourt").attr("data-iscourt"),
        intro = tinymce.activeEditor.getContent();
    	
    	//console.log("id: "+id+",title: "+title+",type: "+type+",typeid: "+typeid+",begintime: "+begintime+",endtime: "+endtime+",court: "+court+",courtid: "+courtid+",userid: "+userid+",iscourt: "+iscourt+",rule: "+rule);
    	
    	
    	if( $("#editMatchForm").valid() === true ){
    		console.log("验证通过");
                $.ajax({
                  type: "POST",
                  url: "updateCollections",
                  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                  data: {
                	  		"matchData.id": id,
                	  		"matchData.url": url,
                			"matchData.name": title,
                		    "matchData.matchIntroduction": intro,
                		    "matchData.matchStartTime": begintime,
                		    "matchData.matchDeadline": endtime,
                		    "matchData.matchType": type,
                		    //"matchDate.userId": userid,
                		    //"courtDate.name": court,
                		    "matchData.matchAddress": courtaddr,
                		    //"court.regionId": "",
                		    //"court.courtTypeId": "",
                		    //"isCourt": iscourt,
                		  },
                  dataType: "json",
                  success: function(rspdata) {
                	  //sousaiRemindDialog(rspdata);console.log(rspdata);
                	  if( rspdata == "success" ){
                		  //sousaiRemindDialog("保存成功");
                		  sousaiRemindDialog("保存成功");
                	  }else if( rspdata == "error" ){
                		  sousaiRemindDialog("保存失败");
                	  }else{
                		  sousaiRemindDialog("保存失败，错误代码未知");
                	  }
                  },
                  error: function(jqXHR,textStatus,errorThrown){
  	            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                    sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
                  },
                });
    	}else{
    		sousaiRemindDialog("填写信息不符合验证，请重新填写。");
    	}
    });
    //发布比赛 编辑界面
    $(".editMatch .passCollection").click(function (){
                 $.ajax({
                  type: "POST",
                  url: "publishCollections",
                  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                  data: {
                    "collectionId": $("#inputMatchTitle").attr("data-id"),
                  },
                  dataType: "json",
                  success: function(rspdata) {
                	  if( rspdata == "success" ){
                		  sousaiRemindDialog("发布成功");
                	  }else if( rspdata == "fail" ){
                		  sousaiRemindDialog("发布失败");
                	  }else{
                		  sousaiRemindDialog("发布失败，错误代码未知");
                	  }
                  },
                  error: function(jqXHR,textStatus,errorThrown){
                    sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
                  },
                }); 
    });
  });
  </script>  
 </body>
</html>