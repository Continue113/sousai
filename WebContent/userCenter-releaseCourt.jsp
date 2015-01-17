<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布场地 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布场地" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.userCenter.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
  .files img {height: 70px;width: auto;}
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
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li class="active"><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind"> 
       <ul class="breadcrumb"> 
        <li>比赛信息:</li> 
        <li>暂无信息</li>
       </ul> 
      </div> 
      <div class="tab-content"> 
       <div id="releaseCourt" class="tab-pane active">
	      <!--编辑场地开始-->
	        <s:include value="editCourt.jsp" />
	      <!-- /编辑场地信息 -->
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
  <s:include value="footer.jsp" />
  <!-- 页首导航条 --> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editcourt.js"></script> 
  <script>
  $(function(){

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
  			var userId = parseInt($("#userId").attr("data-userid"));
  			
  			if(!userId){
  				//设置搜撒提示框，不自动消失，显示确定按钮
  				sousaiRemindDialog("请先登录再发布场地！",-1,true);
  			}else{
  				
  	  			var court = getCourtInfo();
  	  			court.userId = parseInt(userId);		
  	  			console.log(court);
  				var data = {
  						"court.userId": court.userId,
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
  						"court.intro": court.intro
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
  		            type: "POST",
  		            url: "relCourt",
  		         	//processData: false, //不处理数据
  		        	//contentType: false, //不自动设置请求头
  		            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
  		            data: data,
  		            dataType: "json",
  		            success: function(data) {
  		          	  if( rspdata == "success" ){
  		          		  sousaiRemindDialog("发布场地成功");
  		          	  }else if( data == "fail" ){
  		          		  sousaiRemindDialog("发布场地失败");
  		          	  }else{
  		          		  sousaiRemindDialog("删除失败，错误代码未知");
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