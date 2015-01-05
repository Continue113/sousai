<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 全部采集 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-全部采集" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
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
        <tbody></tbody> 
       </table> 
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>
      </div> 
      <!--全部采集主体结束-->
      
      <!-- ****************************************************************************************************************** -->
      <!-- ****************************************************************************************************************** -->
      <!-- ****************************************************************************************************************** -->
      
      <!--编辑比赛 开始-->
      <div class="editMatch hide">
        <div class="btnbar row"> 
         <button type="button" class="btn passMatch ">发布比赛</button> 
         <button type="button" class="btn saveMatch ">保存修改</button>
         <button type="button" class="btn deleteMatch ">删除比赛</button>
         <button type="button" class="btn backList ">返回列表</button>
        </div>
        <div class="page-header row"> 
         <h4>比赛基本信息</h4> 
        </div>
        <form id="editMatchForm" class="form-horizontal row"> 
         <fieldset> 
          <legend>比赛基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="searchKey">比赛名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputMatchTitle" name="match.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchType">比赛类型：</label> 
           <div class="controls">
            <div class="input-append">
            <input class="span5" type="text" id="inputMatchType"  disabled/>
            <button class="btn" type="button" id="editMatchType">修改</button>
            </div>
           </div>
           <div class="controls  form-inline hide" id="matchTypeControls">
            <select class="selectMatchType" name="mcId">
              <option value=0>请选择比赛类型</option>
            </select>
            <select class="selectParticularMatchType hide" name="matchTypeId">
              <option value=0>请选择比赛类型</option>
            </select>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：</label>
            <input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型" name="match.type"/>
           </div>
          </div>
          <div class="control-group"> 
           <label class="control-label" for="matchTime">比赛时间：</label> 
           <div class="controls form-inline"> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimefrom" name="match.beginTime" placeholder="请选择开始日期" required="required" value=""/> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择开始日期"><i class="icon-calendar"></i></span> 
            </div> 
            <label for="to">—</label> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimeto" name="match.endTime" placeholder="请选择结束日期" required="required" value=""/> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="一天以内结束的比赛，日期为同一天"><i class="icon-calendar"></i></span> 
            </div> 
           </div> 
           <div class="controls controls-error"></div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchRegion">比赛地点：</label> 
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputMatchCourt" data-iscourt="false" disabled/>
            <button class="btn" type="button" id="editMatchCourt">修改</button>
            </div>
            </div>
          </div>
           <div class="control-group hide matchAdressControls"> 
           <div class="controls form-inline">
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
            <a href="javascript:void(0)" class="btn btn-success pull-right" id="searchExistedCourt">搜索现有球场</a>
            </div>
            </div>
          <div class="control-group existCourtsBox hide matchAdressControls"> 
           <table class="table table-striped table-hover"> 
            <thead> 
             <tr> 
              <th>球场名称</th> 
              <th>详细地址</th> 
              <th>类型</th> 
              <th>球台数</th> 
              <th>比赛次数</th> 
              <th>详细</th> 
             </tr> 
            </thead> 
            <tbody></tbody> 
           </table>
            <div class="text-center"> 
             <button class="btn" type="button" id="newCourtBtn">没有我要的场地，我要添加新场地</button> 
            </div>
          </div> 
          <div class="control-group hide matchAdressControls"> 
           <div class="releaseCourtBox"> 
            <label class="checkbox"><input type="checkbox" id="newCourtCheckbox" name="matchState_all" />添加新场地&nbsp;&nbsp;(<span id="newCourtRegion"><span class="newCourtProvince">请选择省</span>-<span class="newCourtCity">请选择市</span>-<span class="newCourtCountry">请选择区</span></span>)</label> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchRules">比赛规程：</label> 
          </div> 
          <textarea id="inputMatchRules" name="match.rule" required="required"></textarea>
          </fieldset> 
        </form>
        </div> 
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
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script> 
  <script src="js/jquery.ui.datepicker-zh-CN.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.common.js"></script>
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
      success: function(data) {
    	  //console.log(data);alert(data);
	      var target = $(".collectionsTable > tbody"),template = Handlebars.compile($('#collections-template').html());
	      Handlebars.registerHelper("data",function(v){
	    	  //将当前对象转化为字符串，保存在data-info中
	    	  console.log(v);
	    	  var v1 = JSON.stringify(v);
	    	  //console.log("v1:"+v1);
	    	  return v1;
	      });
	      target.empty(); //清空tbody
	  	  target.html(template(data));
	      $("#ajaxState .load").hide();console.log("stop");
	      //出错或无结果
	      //target.empty(); //清空tbody
	      if(target.find("tr.match").length == 0){
	      $("#ajaxState .noresult").show();console.log("无结果");
	      }
	      //字数限制，溢出省略
	      $("td > label > span").wordLimit();
	      $(".match-court").wordLimit();
	      $(".match-from > a").wordLimit(25);
	      //pages(data.count,crtPage,rs);
	    },
      error: function(jqXHR,textStatus,errorThrown){
    	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	      $("#ajaxState .noresult").show();console.log("出错了");
	      sousaiRemindDialog("抱歉，ajax出错了。");
      },
    });
  }

  $(function(){
	//ajax接收所有比赛
	e(1,25);
    //点击编辑比赛隐藏List列表同时显示编辑比赛
    $("tbody").on("click",".match-oprate > a",function(event){
        var datainfo = $(this).parent().parent().attr("data-info");
        console.log(datainfo);
        //解析datainfo中的信息
        var data = eval('(' + datainfo + ')');
        $("#inputMatchTitle").val(data.name).attr("data-id",data.id).attr("data-url",data.url);
        $("#inputMatchType").val(data.matchType).attr("data-oldtype",data.matchType);
        $("#inputMatchTimefrom").val(data.matchStartTime);
        $("#inputMatchTimeto").val(data.matchDeadline);
        $("#inputMatchCourt").val(data.matchAddress).attr("data-oldcourt",data.matchAddress);
        tinymce.activeEditor.setContent(data.matchIntroduction);
        //立即初始化比赛类型
        initMatchType();
                
    	$("#collectionLists").slideUp();
    	$(".editMatch").slideDown();
  	});
    //点击返回比赛列表
    $(".backList").click(function(){
    	$("#collectionLists").slideDown();
    	$(".editMatch").slideUp();
    });
    //点击删除比赛 列表界面
    $("#collectionLists .deleteMatch").click(function(){
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		var collectionId = new Array(),
    		rs = $("select.selectRows option:selected").val(),
    		crtPage = $("ul.pagination").find("li.active a").text();
    		$(".match input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
        		matchIds.push($(this).attr("id"));
    		});
    		console.log(matchIds);sousaiRemindDialog("collectionId:"+collectionId.join(","));
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
            		  //alert("删除成功");alert(crtPage);
            		  sousaiRemindDialog("删除成功");
            		  //e(crtPage,rs);//刷新数据
            	  }else if( rspdata == "fail" ){
            		  sousaiRemindDialog("删除失败");
            	  }else{
            		  sousaiRemindDialog("删除失败，错误代码："+rspdata);
            	  }
              },
              error: function(jqXHR,textStatus,errorThrown){
            	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
              },
            });
    	}
    });
    //点击发布比赛 列表界面
    $("#collectionLists .passMatch").click(function(){
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		var collectionId = new Array();
    		$(".match input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
        		matchIds.push($(this).attr("id"));
    		});
    		console.log(matchIds);sousaiRemindDialog("collectionId:"+collectionId.join(","));
            $.ajax({
              type: "POST",
              url: "passCollections",
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
            	  "collectionId": collectionId.join(","),
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

    //***************************************************************************************
    // 编辑比赛的js代码，同比赛发布页面。 ***************************** BEGIN ***************************
    //***************************************************************************************
    //删除比赛 编辑界面
    $(".editMatch .deleteMatch").click(function (){
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
                	  }else if( rspdata == "fail" ){
                		  sousaiRemindDialog("删除失败");
                	  }else{
                		  sousaiRemindDialog("删除失败，错误代码未知");
                	  }
                  },
                  error: function(jqXHR,textStatus,errorThrown){
    	            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                	  sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
                  },
                });
    });
    //点击保存修改
    $(".editMatch .saveMatch").click(function (){
    	
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
                	  //alert(rspdata);console.log(rspdata);
                	  if( rspdata == "success" ){
                		  //alert("保存成功");
                		  sousaiRemindDialog("保存成功");
                	  }else if( rspdata == "fail" ){
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
    $(".editMatch .passMatch").click(function (){
/*                 $.ajax({
                  type: "POST",
                  url: "passCollections",
                  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                  data: {
                    "matchIds": $("#inputMatchTitle").attr("data-id"),
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
                }); */
    });
    //点击修改比赛类型
    $("#editMatchType").click(function (){
    	if($(this).text() == "修改"){
    		$("#matchTypeControls").slideDown();
    		$(this).text("取消修改");
    	}else{
    		$("#matchTypeControls").slideUp();
    		//重置选择类型的下拉框，同时将原类型还原
    		$(".selectParticularMatchType").hide().empty().append("<option value=0>请选择比赛类型</option>");
    		$("#inputMatchType").val($("#inputMatchType").attr("data-oldtype"));
    		$(this).text("修改");
    	}
    });
    $("#editMatchCourt").click(function (){
    	if($(this).text() == "修改"){
    		$(".matchAdressControls").slideDown();
    		$(this).text("取消修改");
    	}else{
    		$(".matchAdressControls").slideUp();
    		//重置选择比赛场地，同时还原类型
      		$("#inputMatchCourt").val($("#inputMatchCourt").attr("data-oldcourt"));
    		$(this).text("修改");
    	}
    });
    
    //选择比赛地点时，修改下方添加新场地的区域
    $("#editMatchForm .controls > .selectProvince").change(function(){
  	  //当未选择省就提交表单时，出现提示，当选择省时隐藏未选择省的错误提示
  	  $(".matchRegion-error").hide();
  	  
  	  var tgPrt = $(this).parent();
  	  $("#newCourtRegion > .newCourtProvince").text( tgPrt.find(".selectProvince option:selected").text() );
  	  $("#newCourtRegion > .newCourtCity").text( tgPrt.find(".selectCity option:selected").text() );
  	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
    });
    $("#editMatchForm .controls > .selectCity").change(function(){
  	  var tgPrt = $(this).parent();
  	  $("#newCourtRegion > .newCourtCity").text( tgPrt.find(".selectCity option:selected").text() );
  	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
    });
    $("#editMatchForm .controls > .selectCountry").change(function(){
  	  var tgPrt = $(this).parent();
  	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
    });
  		  
  		  
    //点击大类比赛类型获得具体比赛类型
    $(".selectMatchType").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent();
    if (tgPrt.find(".selectMatchType option:selected").attr("value") == 0) {
  	  //当点击默认选项时将具体比赛类型隐藏并设为默认状态
  	  tgPrt.find(".selectParticularMatchType").hide().empty().append("<option value=0>请选择比赛类型</option>");
  	  //若存在场地类型 则将场地类型设置为默认状态 
  	  if ($(".selectCourtType").length != 0) {
  	  $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
  	  }
  	  //若已选择“其他”则改为默认选项
        if( omtf == 1){
      	//tgPrt.find(".selectParticularMatchType").attr("name","match.type");
          tgPrt.find(".omthide").slideUp();
          //$("#otherMatchType").removeAttr("name");
          omtf = 0;
        }
        //将otherMatchType中填入已选的具体类型设置为空 val为空，同时value为空
        $("#otherMatchType").val("");
    }else {
        //将otherMatchType中填入已选的具体类型设置为空 val为空，同时value为空
        $("#otherMatchType").val("");
      $.ajax({
        type: "POST",
        url: "showMT",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "mcId": tgPrt.find(".selectMatchType option:selected").attr("value"),
        },
        dataType: "json",
        success: function(rspdata) {
          var sctParMatchType = $(".selectParticularMatchType");
          sctParMatchType.empty().append("<option value=0>请选择比赛类型</option>");
          for (var i = 0; i < rspdata.length; i++) {
            sctParMatchType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
          }
          sctParMatchType.append("<option value=1>其他</option>"); //每一个大类比赛类型的“其他”选项
        },
        error: function(jqXHR,textStatus,errorThrown){
        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          sousaiRemindDialog("抱歉，获取比赛类型出错了。");
        },
      }); //ajax 已得到具体比赛类型
      //出现具体比赛类型下拉列表并且不再隐藏
      tgPrt.find(".selectParticularMatchType").show();
    }
    });

    //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
    var omtf = 0;//other match type flag ；0表示默认，1表示已经选过“其他”选项
    $(".selectParticularMatchType").change(function() {
      //tgPrt: targetparent 目标父元素
      var tgPrt = $(this).parent();
      if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 1 && omtf == 0){
          //将otherMatchType中填入已选的具体类型设置为空
          $("#otherMatchType").val("");
        //当用户选择其他的时候，弹出隐藏的label和input
        tgPrt.find(".omthide").slideDown();
        omtf = 1;

        console.log("获得场地类型");
          $.ajax({
            type: "POST",
            url: "showCT",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: {
              "matchId": tgPrt.find(".selectParticularMatchType option:selected").attr("value"),
            },
            dataType: "json",
            success: function(rspdata) {
              var sctCourtType = $(".selectCourtType");
              sctCourtType.empty().append("<option value=0>请选择场地类型</option>");
              for (var i = 0; i < rspdata.length; i++) {
                sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
              }
            },
            error: function(jqXHR,textStatus,errorThrown){
            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
              sousaiRemindDialog("抱歉，获取场地类型出错了。");
            },
          }); //ajax 已得到场地类型

      }else if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 0) {
        //存在场地类型的下拉列表时 当用户选择具体比赛类型为默认选项时的时候，就将场地类型下拉列表框中原有的“请选择”字样删除。
        if ($(".selectCourtType").length != 0) {
          $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
        };
        //若已选择“其他”则改为默认选项
        if( omtf == 1){
          //$(this).attr("name","match.type");
          tgPrt.find(".omthide").slideUp();
          //$("#otherMatchType").removeAttr("name");
          omtf = 0;
        }
        //将otherMatchType中填入已选的具体类型设置为空
        $("#otherMatchType").val("");
      }else {
        //若已选择“其他”则改为默认选项
        if( omtf == 1){
          //$(this).attr("name","match.type");
          tgPrt.find(".omthide").slideUp();
          //$("#otherMatchType").removeAttr("name");
          omtf = 0;
        }
        //存在场地类型的下拉列表时 当用户选择具体比赛类型时，同时获取相应场地类型
        if ($(".selectCourtType").length != 0) {
          console.log("获得场地类型");
          $.ajax({
            type: "POST",
            url: "showCT",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: {
              "matchId": tgPrt.find(".selectParticularMatchType option:selected").attr("value"),
            },
            dataType: "json",
            success: function(rspdata) {
              var sctCourtType = $(".selectCourtType");
              sctCourtType.empty().append("<option value=0>请选择场地类型</option>");
              for (var i = 0; i < rspdata.length; i++) {
                sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
              }
            },
            error: function(jqXHR,textStatus,errorThrown){
            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
              sousaiRemindDialog("抱歉，获取场地类型出错了。");
            },
          }); //ajax 已得到场地类型
        }
        //将otherMatchType中填入已选的具体类型
        $("#otherMatchType").val( tgPrt.find(".selectParticularMatchType option:selected").text() );
        //修改的新类型
        $("#inputMatchType").val(tgPrt.find(".selectParticularMatchType option:selected").text()).attr("data-typeid",tgPrt.find(".selectParticularMatchType option:selected").attr("value"));
        sousaiRemindDialog("设置inputMatchType 的val typeid");
      }
    });

    //日期选择器 
    $( "#inputMatchTimefrom" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#inputMatchTimeto" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#matchTimefrom" ).datepicker( "option", "maxDate", selectedDate );
      }
    });

    //选中表格某行
    $("tbody").on("click",".tritem",function(event){
      $("tr").removeClass("active");
      $(this).addClass("active");
      //设置比赛场地
      $("#inputMatchCourt").val($(this).find("td:eq(0)").text());
      $("#inputMatchCourt").attr("data-courtid",$(this).attr("data-courtid"));
      sousaiRemindDialog("设置inputMatchCourt比赛场地  courtid val");
    });

    //搜索现有场地
    $("#searchExistedCourt").click(function(){
  	  //tgPrt: targetparent 目标父元素 ；regionId 默认为零
  	  var tgPrt = $(this).parent(),regionId = 0;
  	  //获取省市区信息
  	  var provinceId = tgPrt.find(".selectProvince option:selected").attr("data-regionid"),
  	      cityId = tgPrt.find(".selectCity option:selected").attr("data-regionid"), 
  	      countryId = tgPrt.find(".selectCountry option:selected").attr("data-regionid");
  	  if(provinceId == 0){
  		  sousaiRemindDialog("省，市，区请至少选择一个为比赛区域！");		  
  	  }else {
  		  
  		  if(cityId == 0 && countryId == 0){ //若市，区都为零，则说明只有省
  			  regionId = provinceId;
  		  }else if(cityId != 0 && countryId == 0){ //若省、市不为零，但区为零，则说明最深选中为市
  			  regionId = cityId;
  		  }else if(cityId != 0 && countryId != 0){ //若省，市，区都不为零，则说明最深选中为区
  			  regionId = countryId;
  		  }
  	  
  	  //sousaiRemindDialog(province + city + country);  //得到省市区信息
  	  
  	  //ajax 获取已有场地信息列表
  	  $.ajax({
  	      type: "POST",
  	      url: "getCourtM",
  	      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
  	      data: {
  	        "regionId": regionId,
  	      },
  	      dataType: "json",
  	      success: function(rspdata) {
  	        var existCourtsTbody = $(".existCourtsBox > table > tbody");
  	        $(".jplist-no-results").hide(); //隐藏无结果提醒
  	        existCourtsTbody.empty(); //清空已有场地列表
  	        console.log(rspdata);//alert(rspdata);
  	        /** 循环遍历获得的场地信息并加入已有场地列表中 **/
  	        for (var i = 0; i < rspdata.length; i++) {
  	        	existCourtsTbody.append(
  	        			'<tr class="tritem" data-courtid="'
                    + rspdata[i].id+'"><td>'
  	    	        	+ rspdata[i].name + '</td><td>'
  	    	        	+ rspdata[i].addr + '</td><td>'
  	    	        	+ rspdata[i].courtTypeId + '</td><td>'
  	    	        	+ rspdata[i].tableNum + '</td><td>'
  	    	        	+ rspdata[i].matchCount + '</td><td><a target="_blank" href="courtLink;courtId=?'
  	    	        	+ rspdata[i].id + '">详细</a></td></tr>'	        			
  	        	);
  	        }
  	        //若没有相应的结果，给出提醒
  	        if($(".tritem").length == 0){
  	        	console.log("在您选择的比赛地点没有搜索到已有场地，请更换比赛地点或在此地点添加新场地。");
  	        	$(".jplist-no-results").show();
  	        }
  	      },
  	      error: function(jqXHR,textStatus,errorThrown){
  	    	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
  	        sousaiRemindDialog("抱歉，获取已有场地信息出错了。");
  	      },
  	    }); //ajax 已得到相应地点场地列表
  	  
      $("div.existCourtsBox").slideDown(); //将已有场地类表滑出
      //若添加新场地列表存在，则隐藏并删除
      if($("#newCourtCheckbox").is(":checked")){
        $("div.inputCourt").slideUp();
        $("div.inputCourt").remove();
        $("#newCourtCheckbox").attr("checked",false);//将添加新场地的复选框设置为非选中状态
      }
      }
    });
    //添加新场地
    $("#newCourtBtn").click(function () {
      $("#newCourtCheckbox").click();
    });

    $("#newCourtCheckbox").click(function () {
      if($(this).is(":checked")){ //若添加新场地的复选框 是选中状态时则生成添加新场地的表单
        var inputCourtStr = '<div class="inputCourt hide"><div class="control-group"><label class="control-label" for="courtName">场地名称：</label><div class="controls"><input type="text" id="courtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtAddress">详细地址：</label><div class="controls"><input type="text" id="courtAddress" name="court.addr" placeholder="如：某某桥某某路XXXXXXX杯乒乓球季度赛某楼" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtType">场地类型：</label><div class="controls"><select class="selectCourtType" name="court.courtTypeId"><option value="0">请先选择比赛类型</option></select></div></div></div>';
      $(inputCourtStr).insertAfter($(this).parent());
      //根据已选的比赛类型获取场地类型
      if($(".selectParticularMatchType option:selected").attr("value") != 0){
      $.ajax({
          type: "POST",
          url: "showCT",
          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
          data: {
            "matchId": $(".selectParticularMatchType option:selected").attr("value"),
          },
          dataType: "json",
          success: function(rspdata) {
            var sctCourtType = $(".selectCourtType");
            sctCourtType.empty().append("<option value=0>请选择场地类型</option>");
            for (var i = 0; i < rspdata.length; i++) {
              sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</  option>");
            }
          },
          error: function(jqXHR,textStatus,errorThrown){
        	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
            sousaiRemindDialog("抱歉，获取场地类型出错了。");
          },
        }); //ajax 已得到场地类型
      }

      $("div.inputCourt").slideDown();
      $("div.existCourtsBox").slideUp();

      //删除已有$("#hideCourtId")中的name属性，将value设置为空 .attr("value","")
      $("#hideCourtId").removeAttr("name");

    }else {//若复选框不是选中的，则滑出已有场地列表并删除添加新场地的表单
      $("div.existCourtsBox").slideDown();
      $("div.inputCourt").slideUp();
      $("div.inputCourt").remove();

      //恢复已有$("#hideCourtId")中的name属性，将value设置为空 .attr("value","")
      $("#hideCourtId").attr("name","match.courtId");
    }
    });

    //tinymce
    tinymce.init({
      mode: 'textareas',
      language :'zh_CN',
      menubar: false,
      toolbar_items_size: 'small',
      plugins: [
                "advlist autolink autosave link image preview ",
                "searchreplace fullscreen ",
                "table"
        ],
        height:300,
    toolbar1: "newdocument bold italic underline | fontsizeselect | bullist numlist | alignleft aligncenter alignright alignjustify | link unlink image searchreplace table | undo redo preview fullscreen",
    image_advtab: true,
    // update validation status on change
    onchange_callback: function(editor) {
      tinyMCE.triggerSave();
      $("#" + editor.id).valid();
    }
    });
	
    //表单验证
    //为比赛地点中的省添加name属性，然后利用validate插件的min=1验证是否选择了省
    $(".controls > .selectProvince").attr("name","selectProvince");

    $("#editMatchForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
    rules: {
      "match.name": {
        minlength: 6,
        maxlength: 30
      },
      "court.courtTypeId": {
      	min: 1,
      },
      matchTypeId: { //比赛详细类型
      	min: 1,
      },
      mcId: {//比赛大类
      	min: 1,
      },
      selectProvince: {//为比赛地点中的省添加的name属性
      	min: 1,
      },
    },
    messages: {
  	"match.name": {
        required: "请输入比赛名称",
        minlength: "比赛名称至少6个字符",
        maxlength: "比赛名称至多30个字符"
      },
      "match.rule": "请输入比赛规程",
      "court.name": "请输入场地名称",
      "court.addr": "请输入场地地址",
      "match.beginTime": "请选择开始日期",
      "match.endTime": "请选择结束日期",
      "court.courtTypeId": "",
      matchTypeId: "",
      mcId: "",
      selectProvince: "",
    },
    errorPlacement: function(error, element){
      if(element.parent().hasClass("input-append")){
        error.appendTo($(".controls-error"));
      }
      else if (element.is("textarea")) {
          error.insertAfter($("label[for='inputMatchRules']"));
        }
        else error.insertAfter(element);
    }
    });

    //***************************************************************************************
    // 编辑比赛的js代码，同比赛发布页面。 ***************************** END *****************************
    //***************************************************************************************
    
  });
  </script>  
 </body>
</html>