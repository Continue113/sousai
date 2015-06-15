<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>比赛详情   &middot; 搜赛网</title> 
  <meta name="description" content="搜赛网比赛搜索页面" > 
  <s:include value="seg-meta.jsp"/>
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
 </head> 
 <body class="matchSearchDetail"> 
  <s:include value="seg-navbar.jsp"/>
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset2"> 
   <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
    </div> 
    <s:include value="seg-searchbox.jsp"/>
    <!-- 搜索框 --> 
   </div> 
   <div class="row"> 
    <div class="span8 offset2"> 
     <div class="text-center adFirst">这里是ad.no1</div> 
     <div class="search-remind"> 
      <p><i class="icon-th-list"></i>&nbsp;比赛详情&nbsp;</p> 
     </div>
     <div id="match" class="matchList">
     <div class="matchShortInfo"> 
      <a href="javascript:void(0);" class="btn btn-mini pull-right" id="markMatch">收藏比赛</a> 
      <a href="javascript:void(0);" class="btn btn-mini pull-right hide" id="modifyMatch">修改比赛</a> 
      <a href="javascript:void(0);" class="btn btn-mini pull-right hide" id="updateSocre">录入成绩</a> 
      <table> 
       <thead> 
        <tr> 
         <th>比赛名称:</th> 
         <th class="thisname">暂无信息</th> 
        </tr> 
       </thead> 
       <tbody> 
        <tr> 
         <td>比赛时间:</td> 
         <td class="thistime">暂无信息</td> 
        </tr> 
        <tr> 
         <td>比赛地点:</td> 
         <td class="thiscourt">暂无信息</td> 
        </tr> 
        <tr> 
         <td>发&nbsp;&nbsp;布&nbsp;&nbsp;者:</td> 
         <td class="thisuser">暂无信息</td> 
        </tr> 
        <tr> 
         <td>发布时间:</td> 
         <td class="thisreltime">暂无信息</td> 
        </tr> 
       </tbody> 
      </table> 
     </div> 
     <div class="matchContent"> 
      <div class="matchScore hide"> 
       <div class="title">比赛成绩 </div> 
       <div class="matchScoreContent">暂无信息</div> 
      </div> 
      <div class="title">"<span class="thisname">暂无信息</span>"&nbsp;&nbsp;&nbsp;&nbsp;<span>比赛规程</span></div> 
      <div class="match"><p>暂无信息</p></div> 
     </div> 
    </div>
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
    <div class="span1"> 
     <div class="text-center adSecond">这里是ad.no2</div> 
    </div> 
   </div> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <script src="js/bootstrap-datetimepicker.min.js"></script> 
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editmatch.js"></script>
  <!-- 页尾信息 -->
  <script>
  //定义函数
  //根据id获取比赛信息
function e(){
	var url = window.location.search,
    id = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length)),
    target = $("#match");
	//设置收藏比赛的函数为markMatch(id);
	$("#markMatch").attr("onclick","markMatch("+id+")");
	
	      $.ajax({
	          url: "getMatchById",//"matchDetail",
	          data: {id:id},
	          success: function(rspdata) {
	        	  console.log(rspdata);
	        	  // 比赛进程（状态）是报名中，则不显示比赛成绩这栏。这个页面是在新的窗口打开，添加“修改”和“录入成绩”的按钮，可以修改“比赛规程”和“基本比赛信息”，按钮根据比赛状态（进程），改变按钮出现的情况。根据是否是发布者，出现录入成绩和修改比赛按钮
				  //修改title
				  $("title").html(rspdata.name+" &middot; 搜赛网");
			      $('meta[name="description"]').attr("content",rspdata.name+" &middot; 搜赛网");	        	  
				  target.find(".thisname").text(rspdata.name).attr("data-info", JSON.stringify(rspdata));
				  target.find(".thistime").text(rspdata.beginTime+" -  "+rspdata.endTime+"    "+rspdata.beginDayOfWeek+"-"+rspdata.endDayOfWeek);
				  target.find(".thisreltime").text(rspdata.relTime);
				  target.find(".thisuser").text(rspdata.userName);
			      target.find(".thiscourt").text(rspdata.region+"  "+rspdata.courtName);
			      target.find(".match").html(rspdata.rule);
			      //判断比赛的进程 和 是否为发布者
			      if(rspdata.state == "已结束"){
			    	  $(".matchScore").find(".matchScoreContent").html(rspdata.score).end().show();
			      }
			      if(rspdata.userId == $("#userId").attr("data-userid")){
			    	  $("#modifyMatch").show();
			    	  $("#updateSocre").show();
			      }
	          }
	        });
	}  
  $(function(){
	//搜索栏模糊搜索
	e();
	$("#modifyMatch").click(function(){
		//检测用户是否为登录状态
		var userid =isLogined();
		console.log(userid.responseJSON);
		if(userid.responseJSON==-1){
			// -1 为未登录状态，其他则为用户ID
			newformloginBox();
		}else{
    	var datainfo = $(".thisname").attr("data-info");
    	console.log(datainfo);
    	setMatchInfo(datainfo);
		$(".matchList").slideUp();
		$(".editMatch").find("button.passMatch").hide().end().slideDown();
		}
	});
	$("#updateSocre").click(function(){
		//检测用户是否为登录状态
		var userid =isLogined();
		if(userid.responseJSON=="error"){
			// -1 为未登录状态，其他则为用户ID
			newformloginBox();
		}else{
			$("h4.thisname").text($("th.thisname").text()).attr("data-info",$("th.thisname").attr("data-info"));
			$(".matchList").slideUp();
			$(".updateScore").slideDown();
		} 
	});

    //点击返回比赛列表
    $(".updateScore .backList").click(function(){
    	$(".matchList").slideDown();
    	$(".updateScore").slideUp();
    });

    $(".updateScore .relScore").click(function(){
		//检测用户是否为登录状态
		var userid =isLogined();
		if(userid.responseJSON=="error"){
			// -1 为未登录状态，其他则为用户ID
			newformloginBox();
		}else{
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
            }
          }); 
		} 
    });
    
  });
  </script>  
 </body>
</html>