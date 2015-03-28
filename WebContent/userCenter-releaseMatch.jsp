<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布比赛 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布比赛">
  <s:include value="seg-meta.jsp"/>
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"> 
  <link href="css/sousai.userCenter.css" rel="stylesheet">
 </head> 
 <body class="userCenter"> 
  <s:include value="seg-navbar.jsp"/>
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span4"> 
   <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
     <span class="logotext">我的搜赛</span> 
    </div> 
    <s:include value="seg-searchbox.jsp"/>
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
      <s:include value="seg-userCenter-menu.jsp"/><!-- 用户中心导航菜单 -->
     <div class="span8"> 
      <div class="userCenter-remind"> 
       <ul class="breadcrumb">
       <li>比赛信息:</li>
       <li><a href="javascript:void(0)">暂无信息<span>(0)</span></a></li>
       </ul> 
      </div> 
      <div class="tab-content"> 
       <div id="releaseMatch" class="tab-pane active">
      <!--编辑比赛 开始-->
        <s:include value="seg-editMatch.jsp"/>
      <!-- /编辑比赛信息 -->
      <div id="afterRelease" class="hide">
	      <div class="page-header row"><h4>比赛发布成功</h4></div>
	      <div class="releaseInfo">
	      <p>您创建的“<span class="label label-success releaseInfoTitle"></span>”，网站管理员已经收到，将在1-4小时内完成审核，请您耐心等待。（加急联系QQ：200799663）</p>
	      <p>比赛编号为：<span class="label label-success releaseInfoId"></span></p>
	      <p>比赛地址：<a href="" class="releaseInfoHref"><a></p>
	      <p class="text-center"><button type="button" class="btn btn-success" onclick="backEdit()">返回</button></p>
	      </div>
      </div>
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
  <s:include value="seg-footer.jsp" />
  <!-- 页首导航条 --> 
  <script src="js/bootstrap-datetimepicker.min.js"></script> 
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editmatch.js"></script>
  <script>
  //定义函数
  function backEdit(){
	  $(".editMatch").show();
	  $("#afterRelease").hide();
	  }
  $(function () {
	  setMenu();
		//检测用户是否为登录状态
		var userid =isLogined();
		if(!userid.responseJSON){
			$(".span8",".span11").html("您还未登录，请先 <a href=\"login.jsp\">登录</a>。");
			return false;
		}else if(userid.responseJSON.userType=="0"){
			$(".span8",".span11").html("您已被禁用（不能发布比赛、场地与评论），请先向管理员 <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=822547462&amp;site=qq&amp;menu=yes\">申请解禁</a> .");
			return false;			
		}
	  
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
    		//检测用户是否为登录状态
			var userid =isLogined(),match = getMatchInfo();
			if(userid.responseJSON=="error"){
				return false;
			}else if(userid.responseJSON.userType=="0"){
				$(".span8",".span11").html("您已被禁用（不能发布比赛、场地与评论），请先向管理员 <a target=\"_blank\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=822547462&amp;site=qq&amp;menu=yes\">申请解禁</a> .");
				return false;			
			}else if(!match){
				return false;
			}else{
		      		var data,regionData = getRegion();
		      		if(!regionData.region){
		      			sousaiRemindDialog("场地区域不对，请重新选择省市区");
		      			return false;
		      		}
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
			      			    //"match.courtId": parseInt(match.courtid),
			      			    "match.rule": match.rule,
			      			    //"match.relTime": match.reltime,
			      			    //"match.score": match.name,
			      			    "match.userId": userid.responseJSON.userId,
		  						"match.verify": "0",
			      			    "isCourt": match.iscourt,
		  						"court.userId": userid.responseJSON.userId,
		  						"court.addr": match.courtaddr,
		  						"court.courtTypeId": parseInt(match.courttypeid),
		  						"court.name": match.court,
		  						"court.matchType":match.type,
		  						"court.regionId": regionData.regionId,
		  						"court.region": regionData.region,
		  						"court.tableNum": "",
		  						"court.tel": "",
		  						"court.price": "",
		  						"court.workTime": "",
		  						"court.intro": "",
		  						"court.verify": "0"
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
			      			    "match.userId": userid.responseJSON.userId,
			      			    "isCourt": match.iscourt,
		  						"match.verify": "0"
			      			};
		      		}
		      		console.log(data);
		      		 $.ajax({
		                url: "relMatch",
		                data: data,
		                success: function(rspdata) {
		              	  if( rspdata == "fail" ){
		              		  sousaiRemindDialog("'"+match.title+"' 发布失败，fail");
		              	  }else{
		              		  $(".editMatch").hide("fast",function(){
			              		  $("#afterRelease").find(".releaseInfoTitle").text(match.title).end()
			              		  .find(".releaseInfoId").text(rspdata).end()
			              		  .find(".releaseInfoHref").text("http://www.isousai.com/sousai/matchSearchDetail.jsp?id="+rspdata).attr("href","matchSearchDetail.jsp?id="+rspdata).end()
			              		  .show();		              			  
		              		  });
		              	  }
		                },
		              }); 
		 	}
      });
  });
  
 </script> 
 </body>
</html>