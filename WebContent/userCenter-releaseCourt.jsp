<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布场地 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布场地">
  <s:include value="seg-meta.jsp"/>
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
       <div id="releaseCourt" class="tab-pane active">
	      <!--编辑场地开始-->
	        <s:include value="seg-editCourt.jsp"/>
	      <!-- /编辑场地信息 -->
      <div id="afterRelease" class="hide">
	      <div class="page-header row"><h4>场地发布成功</h4></div>
	      <div class="releaseInfo">
	      <p>您创建的“<span class="label label-success releaseInfoTitle"></span>”，网站管理员已经收到，将在1-4小时内完成审核，请您耐心等待。（加急联系QQ：200799663）</p>
	      <p>场地编号为：<span class="label label-success releaseInfoId"></span></p>
	      <p>场地地址：<a href="javascript:void(0);" class="releaseInfoHref"></a></p>
	      <p class="text-center"><button type="button" class="btn btn-success" onclick="backEdit()">返回</button></p>
	      </div>
      </div>
       </div> 
       <!-- /releaseCourt --> 
      </div> 
      <!-- /tab-content --> 
     </div> 
     <!-- /span8 offset2 --> 
    </div> 
    <!-- /span11 主要代码 --> 
   </div> 
   <!-- /row --> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <!-- 页首导航条 --> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editcourt.js"></script> 
  <script>
  //定义函数
  function backEdit(){
	  $(".editCourt").show();
	  $("#afterRelease").hide();
	  }
  $(function(){
	  setMenu();
		//检测用户是否为登录状态
		var userid =isLogined();
		if(userid.responseJSON=="error"){
			$(".span8",".span11").html("您还未登录，请先登录。");
			return false;
		}

	  //将editCourt修改为适合发布场地页面
	  $(".editCourt").show().find(".btnbar").remove().end().find("div.control-group.hide").show();
	  $("#inputMatchType").parent().parent().hide();
	  $("#inputCrtCourtType").parent().parent().hide();
	  $("#inputCourtRegion").parent().parent().hide();
	  $("div.controls.hide").show();
	  
  	  //获得已有比赛信息
  	  userCenterRemind();
  	  
  	  //点击确认发布，获取地区，比赛类型，场地类型
  	  $("#rlsCourt").click(function(){
  		    //检测用户是否为登录状态
  			var userid =isLogined();
  			if(userid.responseJSON=="error"){
  				return false;
  			}else{
  	  			var court = getCourtInfo();
  	  			console.log(court);
  				var data = {
  						"court.userId": userid.responseJSON.userId,
  						"court.addr": court.addr,
  						"court.courtTypeId": court.courtTypeId,
  						"court.name": court.name,
  						"court.matchType":court.matchType,
  						"court.regionId": court.regionId,
  						"court.region": court.region,
  						"court.tableNum": court.tableNum,
  						"court.tel": court.tel,
  						"court.price": court.price,
  						"court.workTime": court.workTime,
  						"court.matchCount": court.matchCount,
  						"court.intro": court.intro,
  						"court.verify": "0"
  				};
  	  			console.log(data);
  					/***********************************************
  					//测试formdata
  					var formdata = new FormData();

  		  			for( i in court){
  		  				formdata["court."+i] = court[i];
  		  				court["court."+i] = court[i];
  		  			}
  					console.log(formdata);
  					console.log(court);
  					/*************************************************/
  				$.ajax({
  		            url: "relCourt",
  		         	//processData: false, //不处理数据
  		        	//contentType: false, //不自动设置请求头
  		            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
  		            data: data,
  		            dataType: "json",
  		            success: function(rspdata) {
  		          	  if( rspdata == "fail" ){
  		          		  sousaiRemindDialog("发布场地失败,fail");
  		          	  }else{
	              		  $(".editCourt").hide();
	              		  $("#afterRelease").find(".releaseInfoTitle").text(court.name).end()
	              		  .find(".releaseInfoId").text(rspdata).end()
	              		  .find(".releaseInfoHref").text("http://www.isousai.com/sousai/courtSearchDetail.jsp?id="+rspdata).attr("href","courtSearchDetail.jsp?id="+rspdata).end()
	              		  .show();
  		          	  }
  		            },
  		          });
  			}
  	  });
  	  
  });
  </script>
 </body>
</html>