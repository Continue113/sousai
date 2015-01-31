<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>我的搜赛 &middot; 我发布的比赛 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网用户中心-我的搜赛-我发布的比赛">
  <s:include value="seg-meta.jsp"/>
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="css/sousai.userCenter.css" rel="stylesheet">
</head>
<body class="userCenter">
<s:include value="seg-navbar.jsp"/><!-- 页首导航条 -->
<div class="container"> 
 <div class="hdpush"></div> 
 <div class="row"> 
  <div class="span4"> 
   <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
   <span class="logotext">我的搜赛</span> 
  </div> 
  <s:include value="seg-searchbox.jsp"/><!-- 搜索框 -->
 </div><!-- /row -->

    <div class="row"> 
    <div class="span11"> 
     <div class="navbar">
      <div class="navbar-inner"> 
       <ul class="nav"> 
        <li class="active"><a href="javascript:void(0)">我的搜赛网</a></li>
       </ul>
      </div>
     </div> 
      <s:include value="seg-userCenter-menu.jsp"/><!-- 用户中心导航菜单 -->
     <div class="span8"> 
      <div class="userCenter-remind">
       <ul class="breadcrumb"> 
        <li>比赛信息:</li>
        <li><a href="javascript:void(0)">暂无信息<span>(0)</span></a></li>
       </ul>
      </div> 
      <div class="tab-content">
       <div id="myMatch" class="tab-pane active"> 
        <div class="matchs matchList" id="matchsList">
         <!-- panel --> 
         <div class="panel-top form-inline">
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
         </div>
         <div class="matchBoxs"></div>
         <!-- /matchBoxs -->
         <div class="panel-bottom">
       		<div id="ajaxState" class="text-center"><span class="hide noresult">您还没有创建比赛</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       		<div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      	 </div>
        </div> 
       </div>
       <!-- /myMatch -->
       <!--编辑比赛 开始-->
        <s:include value="seg-editMatch.jsp"/>
       <!-- /编辑比赛信息 -->  
       
    <div class="updateScore hide">
        <div class="page-header row">
         <h4 class="thisname">暂无信息</h4>
         <h4>发布成绩</h4>
        </div>
	    <textarea id="updateScoreTextarea" required="required"></textarea>
	    <button type="button" class="btn pull-right relScore">发布</button>
	    <button type="button" class="btn pull-right backList">返回</button>
    </div>     
      </div>
      <!-- /tab-content --> 
     </div>
     <!-- /span8 offset2 --> 
    </div>
    <!-- /span11 主要代码 --> 
   </div>
   <!-- /row --> 
   <div class="ftpush"></div> 
  </div>
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script src="js/bootstrap-datetimepicker.min.js"></script> 
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editmatch.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
    {{#each this}}

       <div class="matchBox"  data-info="{{data}}" id="match{{id}}">
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a target="_blank" href="courtSearchDetail.jsp?id={{id}}">{{name}}</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">{{relTime}}</span></span> 
         </div>
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-beginTime">{{beginTime}}<p>{{beginDayOfWeek}}</p></div> 
           <div class="line">&nbsp;-&nbsp;</div> 
           <div class="matchBox-endTime">{{endTime}}<p>{{endDayOfWeek}}</p></div>
		  </li>
          <li class="matchBox-court "><a target="_blank" href="courtSearchDetail.jsp?id={{courtId}}">{{courtName}}</a></li> 
          <li class="matchBox-state ">{{state}}</li> 
          <li class="matchBox-info "><a target="_blank" href="matchSearchDetail.jsp?id={{id}}">{{{rule}}}</a></li> 
          <li class="matchBox-btns ">{{checkState}}<a target="_blank" href="matchSearchDetail.jsp?id={{id}}" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
    {{/each}}
  </script>
  <script>
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
	        url: "getMatchByUserId",
	        data: argso,
	        success: function(rspdata) {
	        	console.log(rspdata);
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(){
			    	  return JSON.stringify(this);
			      });
			      Handlebars.registerHelper("checkState",function(){
			    	  if(this.state == "已结束"){
			    		  return new Handlebars.SafeString('<a href="javascript:void(0)" class="btn btn-mini" onclick="updateScore('+this.id+')">录入成绩</a>');
			    	  }
			    	  return new Handlebars.SafeString('<a href="javascript:void(0)" class="btn btn-mini" onclick="modifyMatch('+this.id+')">修改比赛</a>');
			      });
			      target.empty().show().html(template(rspdata.body));
			      $("#ajaxState .load").hide();
			      $("#ajaxState .noresult").hide();
			      if(target.find("div.matchBox").length == 0){
			      $("#ajaxState .noresult").show();
			      target.hide();
			      }
		    	  //字数限制，溢出省略
		    	  $(".matchBox-court").wordLimit(20);
		    	  $(".matchBox-info > a").wordLimit(28);
		  	      //根据总数、当前页数、每页行数 分页
		    	  pages(rspdata.count,args.currentPage,args.rows);
	        },
	      });
  }
  //点击编辑比赛隐藏List列表同时显示编辑比赛
  function modifyMatch(id){
	var datainfo = $("#match"+id).attr("data-info");
  	setMatchInfo(datainfo);
	$(".matchList").slideUp();
	$(".editMatch").find("button.passMatch").hide().end().slideDown();
	}
  //点击编辑比赛隐藏List列表同时显示编辑比赛
  function updateScore(id){
  	var datainfo = $("#match"+id).attr("data-info");
	$("h4.thisname").text(JSON.parse(datainfo).name).attr("data-info",datainfo);
	$(".matchList").slideUp();
	$(".updateScore").slideDown();
	}
    
  $(function(){
	  setMenu();
		//检测用户是否为登录状态
		var userid =isLogined();
		if(userid.responseJSON=="error"){
			$(".span8",".span11").html("您还未登录，请先登录。");
			return false;
		}
    	//获得已有比赛信息
    	userCenterRemind();
		//ajax接收所有我发布的比赛
		e({currentPage:1,rows:25});
        //点击返回比赛列表
        $(".updateScore .backList").click(function(){
        	$(".matchList").slideDown();
        	$(".updateScore").slideUp();
        });
        $(".updateScore .relScore").click(function(){
        	var datainfo = $("h4.thisname").attr("data-info"),
        		match = JSON.parse(datainfo);
      		data = {
      			    "match.id": parseInt(match.id),
      			    "match.name": match.name,
      			    "match.type": match.type,
      			    "match.beginTime": match.beginTime,
      			    "match.endTime": match.endTime,
      			    "match.courtId": match.courtId,
      			    "match.rule": match.rule,
      			    "match.relTime": match.relTime,
      			    "match.verify": match.verify,
      			    "match.score": tinymce.activeEditor.getContent(),
      			    "match.userId": match.userId,
      			    isCourt: false,
      			};
        	 $.ajax({
                url: "updateMatch",
                data: data,
                success: function(rspdata) {
              	  if( rspdata == "success" ){
              		  window.setTimeout("window.location.href=window.location.href",3000);
                		  sousaiRemindDialog("录入成绩成功,3秒后将刷新页面。");
              	  }else{
              		  sousaiRemindDialog("录入成绩失败，错误代码为："+rspdata);
              	  }
                },
              }); 
        });

    });
</script>
</body></html>