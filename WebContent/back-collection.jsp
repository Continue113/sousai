<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 全部采集 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网-管理员页面-全部采集"> 
  <s:include value="seg-meta.jsp"/>
  <link href="css/sousai.back.css" rel="stylesheet">
 </head> 
 <body class="background"> 
  <s:include value="seg-back-head.jsp"/> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
     <span class="logotext">管理员页面</span> 
    </div>
   </div> 
   <div class="row"> 
    <div class="span11"> 
      <s:include value="seg-back-menu.jsp"/><!-- 后台导航菜单 -->
     <div class="span9"> 
      <!--全部采集主体开始--> 
      <div class="matchList"> 
       <!-- panel --> 
       <div class="panel-top form-inline"> 
        <select class="select selectRows span1"></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteCollection">删除选中</button>
         <button type="button" class="btn passCollection">发布选中</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover collectionsTable">
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
        <s:include value="seg-editMatch.jsp"/>
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
                        
        <tr class="match" data-info="{{data}}"> 
          <td class="match-title"><label for="{{id}}"><input type="checkbox" id="{{id}}"><span>{{name}}</span></label></td> 
          <td class="match-time">{{matchStartTime}} - {{matchDeadline}}</td> 
          <td class="match-court">{{matchAddress}}</td>
          <td class="match-from"><a href="{{url}}">{{url}}</a></td> 
          <td class="match-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function e(argso){
		//定义默认选项 
		var args=argso;
		args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
		args.rows = args.rows||$("select.selectRows option:selected").val()||25;
		args.orderByCol = args.orderByCol||$(".sort button .current").attr("data-orderbycol")||"name";
		args.isAsc = args.isAsc||$(".sort button .current").attr("data-isasc")||true;
		args.strColumns = args.strColumns||$(".text-filter-box button .current").attr("data-strcolumns")||"name";
		args.keyValue = args.keyValue||$(".text-filter-box input").val()||"";
	  	
  	$("#ajaxState .load").show();
    $.ajax({
      url: "backgroundCollections",
      data: args,
      success: function(rspdata) {
	      var target = $(".collectionsTable > tbody"),template = Handlebars.compile($('#collections-template').html());
	      Handlebars.registerHelper("data",function(){
	    	  return JSON.stringify(this);
	      });
	      target.empty().html(template(rspdata.body));
	      $("#ajaxState .load").hide();
	      $("#ajaxState .noresult").hide();
	      if(target.find("tr.match").length == 0){
	      $("#ajaxState .noresult").show();
	      }
	      //字数限制，溢出省略
	      $("td > label > span").wordLimit();
	      $(".match-court").wordLimit();
	      $(".match-time").wordLimit();
	      $(".match-from > a").wordLimit();
	      pages(rspdata.count,args.currentPage,args.rows);
	    }
    });
  }
function sureDelete(){
	hideSousaiRemindDialog();
	var collectionId = new Array();
	$(".match input:checked").each(function(index,element){
		collectionId.push($(this).attr("id"));
	});
    $.ajax({
      url: "deleteCollections",
      data: {
        "collectionId": collectionId.join(","),
      },
      success: function(rspdata) {
    	  if( rspdata == "success" ){
    		  sousaiRemindDialog("删除成功");
    		  $(".match input:checked").parent().parent().parent().remove();
    	  }else{
    		  sousaiRemindDialog("删除失败，错误代码为："+rspdata);
    	  }
      }
    });
}
function sureDeleteEdit(){
	hideSousaiRemindDialog();
	$.ajax({
        url: "deleteCollections",
        data: {
      	  "collectionId": $("#inputMatchTitle").attr("data-id"),
        },
        success: function(rspdata) {
      	  if( rspdata == "success" ){
      		  sousaiRemindDialog("删除成功");
      		  $("#"+$("#inputMatchTitle").attr("data-id")).parent().parent().parent().remove();
      	  }else{
      		  sousaiRemindDialog("删除失败，错误代码为："+rspdata);
      	  }
        }
      });
}
  $(function(){
	  if(isAdmin() == '-1'){
		  return false;
	  }
	  
	  setMenu();
	  //删除.btnbar 中绑定为比赛的class 改为Collection 使原来的发布比赛、保存修改、删除比赛的点击函数失效，
	  $(".editMatch").find(".btnbar").html('<button type="button" class="btn passCollection">发布采集</button><button type="button" class="btn saveCollection">保存修改</button><button type="button" class="btn deleteCollection">删除采集</button><button type="button" class="btn backList">返回列表</button>');
	  
	//ajax接收所有比赛
	//e({currentPage:1,rows:25});
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
              url: "publishCollections",
              data: {
                "collectionId": collectionId.join(","),
              },
              success: function(rspdata) {
            	  if( rspdata == "success" ){
            		  //sousaiRemindDialog("删除成功");sousaiRemindDialog(crtPage);
            		  sousaiRemindDialog("发布成功");
            		  $(".match input:checked").parent().parent().parent().hide();
            		  //e(crtPage,rs);//刷新数据
            	  }else{
            		  sousaiRemindDialog("发布失败，错误代码："+rspdata);
            	  }
              }
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
                  url: "updateCollections",
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
                  success: function(rspdata) {
                	  if( rspdata == "success" ){
                		  window.setTimeout("window.location。href=window.location。href",3000);
                  		  sousaiRemindDialog("保存成功,3秒后将刷新页面。");
                	  }else{
                		  sousaiRemindDialog("保存失败，错误代码为："+rspdata);
                	  }
                  }
                });
    	}else{
    		sousaiRemindDialog("填写信息不符合验证，请重新填写。");
    	}
    });
    //发布比赛 编辑界面
    $(".editMatch .passCollection").click(function (){
                 $.ajax({
                  url: "publishCollections",
                  data: {
                    "collectionId": $("#inputMatchTitle").attr("data-id"),
                  },
                  success: function(rspdata) {
                	  if( rspdata == "success" ){
                		  sousaiRemindDialog("发布成功");
                	  }else{
                		  sousaiRemindDialog("发布失败，错误代码为："+rspdata);
                	  }
                  }
                }); 
    });
  });
  </script>  
 </body>
</html>