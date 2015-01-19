<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布比赛 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布比赛" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.userCenter.css" rel="stylesheet" /> 
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
  .existCourtsBox .jplist-panel > .text-center > .btn {margin-top: 10px;float: none;}
  /** 最小宽度情况下 **/
  @media (max-width: 480px) {
    /** 搜索现有场地按钮 **/
    #searchExistedCourt{margin-top: 5px;}
  }
  </style>
 </head> 
 <body class="userCenter"> 
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span4"> 
     <img src="img/logo.png" /> 
     <span class="logotext">我的搜赛</span> 
    </div> 
    <s:include value="searchbox.jsp" />
    <!-- 搜索框 --> 
   </div>
   <!-- /row --> 
   <div class="row"> 
    <div class="span11"> 
     <div class="navbar"> 
      <div class="navbar-inner"> 
       <ul class="nav"> 
        <li class="active"><a href="javascript:void(0)">我的搜赛网</a></li> 
       </ul> 
      </div> 
     </div> 
     <div class="span2 mySousaiMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><a href="userCenter-myMatch.jsp"><i class="icon-chevron-right"></i> 我发布的比赛</a></li> 
       <li><a href="userCenter-myCollection.jsp"><i class="icon-chevron-right"></i> 我收藏的比赛</a></li> 
       <li class="active"><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind"> 
       <ul class="breadcrumb"><li>比赛信息:</li></ul> 
      </div> 
      <div class="tab-content"> 
       <div id="releaseMatch" class="tab-pane active">
      <!--编辑比赛 开始-->
        <s:include value="editMatch.jsp" />
      <!-- /编辑比赛信息 -->
       </div> 
       <!-- /releaseMatch -->
      
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
  <s:include value="footer.jsp" />
  <!-- 页首导航条 --> 
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script> 
  <script src="js/jquery.ui.datepicker-zh-CN.js"></script> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editmatch.js"></script>
  
  <!-- handlebars template -->
  <script id="existCourts-template" type="text/x-handlebars-template">
    {{#each this}}

		    <tr class="tritem"  data-info="{{data this}}" data-courtid="{{id}}">
				<td>{{name}}</td>
				<td>{{addr}}</td>
				<td>{{courtTypeId}}</td>
				<td>{{tableNum}}</td>
				<td>{{matchCount}}</td>
				<td><a target="_blank" href="courtLink;courtId=?{{id}}">详细</a></td>
			</tr>

    {{/each}}
  </script>
  <script>
  
  $(function () {
	  
	  //将editMatch修改为适合发布场地页面
	  $(".editMatch").show().find(".btnbar").remove().end().find("div.control-group.hide").show();
	  $("#inputMatchType").parent().parent().hide();
	  $("#matchTypeControls").show();
	  $("#editMatchCourt").hide();
	  //$("#inputMatchCourt").parent().parent().hide();
	  
  	  //获得已有比赛信息
  	  userCenterRemind();
	  

      //用户点击确认发布比赛
      $("#rlsMatch").click(function(){
    	  var userId = parseInt($("#userId").attr("data-userid")),match = getMatchInfo();
			
			if(!userId){
				//设置搜撒提示框，不自动消失，显示确定按钮
				sousaiRemindDialog("请先登录再发布比赛！",-1,true);
			}else if(!match){
				return false;
			}else{
				console.log("beginTime");console.log($("#inputMatchTimefrom").datepicker( 'getDate' ) );
				console.log("endTime");console.log($("#inputMatchTimeto").datepicker( 'getDate' ) );
				
		      		console.log("getMatchInfo获取到的：");console.log(match);
		      		var data;
		      		if(match.iscourt == "true"){
		      			match.iscourt = true;
			      		data = {
			      			    //"match.id": parseInt(match.id),
			      			    "match.name": match.title,
			      			    "match.type": match.type,
			      			    //"match.typeId": parseInt(match.typeid), //未使用
			      			    "match.beginTime": match.begintime,
			      			    "match.endTime": match.endtime,
			      			    //"match.court": match.court,
			      			    "match.courtId": parseInt(match.courtid),
			      			    "match.rule": match.rule,
			      			    //"match.relTime": match.reltime,
			      			    //"match.score": match.name,
			      			    "match.userId": parseInt(userId),
			      			    "isCourt": match.iscourt,
			      			    "court.name": match.court,
			      			    "court.addr": match.courtaddr,
			      			    "court.type": match.courttype,
			      			    "court.typeId": parseInt(match.courttypeid),
			      			};
		      		}else{
		      			match.iscourt = false;
			      		data = {
			      			    //"match.id": parseInt(match.id),
			      			    "match.name": match.title,
			      			    "match.type": match.type,
			      			    //"match.typeId": parseInt(match.typeid), //未使用
			      			    "match.beginTime": match.begintime,
			      			    "match.endTime": match.endtime,
			      			    //"match.court": match.court,
			      			    "match.courtId": parseInt(match.courtid),
			      			    "match.rule": match.rule,
			      			    //"match.relTime": match.reltime,
			      			    //"match.score": match.name,
			      			    "match.userId": parseInt(userId),
			      			    "isCourt": match.iscourt,
			      			};
		      		}
		      		
		      		console.log("转换后的：match data");console.log(data);
		      		$.ajax({
		                type: "POST",
		                url: "relMatch",
		                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		                data: data,
		                dataType: "json",
		                success: function(rspdata) {
		              	  if( rspdata == "fail" ){
		              		  sousaiRemindDialog("'"+match.title+"' 发布失败，fail");
		              	  }else{
		              		  var uriStr = "<h5>发布比赛 成功：</h5><strong>'"+match.title+"'</strong> 成功，比赛信息地址为：<a href='courtSearchDetail.jsp?id="+rspdata+"'>courtSearchDetail.jsp?id="+rspdata+"</a>";
		              		  sousaiRemindDialog(uriStr,-1);
		              	  }
		                },
		                error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
		                  sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
		                },
		              });
		 	}
      });
      
  });
 </script> 
 </body>
</html>