<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>我的搜赛 &middot; 我收藏的比赛 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-我收藏的比赛" /> 
  <meta name="author" content="KING@CQU" />
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" />
  <link href="css/sousai.userCenter.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
/** 比赛列表 **/
.matchBoxs{border: 1px solid #ccc;margin: 10px 0;float: left;padding: 10px;}
.matchBox .matchBox-all{float: left;}
.matchBox .matchBox-title{background-color: #f5f5f5;border: 1px solid #ccc;border-bottom: 0;padding:2px 5px;}
.matchBox ul{padding: 0;background-color: #fff;border: 1px solid #ccc;-webkit-border-radius: 0;
  -moz-border-radius: 0;border-radius: 0;}
.matchBox ul > li{padding-left:5px;vertical-align: middle;text-align: center;border-left: 1px solid #ccc;}
.matchBox .matchBox-time{width: 185px;border-left: 0;}
.matchBox .matchBox-time > div{float:left;}
.matchBox .matchBox-time > div.line{height: 50px;line-height:50px;}
.matchBox .matchBox-court{width: 180px;}
.matchBox .matchBox-state{width: 50px;color: #ff040f;}
.matchBox .matchBox-info{width: 220px;}
.matchBox .matchBox-btns{width: 60px;padding-right: 5px;}
  </style>
</head>
<body class="userCenter">
<s:include value="navbar.jsp" /><!-- 页首导航条 -->
<div class="container"> 
 <div class="hdpush"></div> 
 <div class="row"> 
  <div class="span4"> 
   <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a>
   <span class="logotext">我的搜赛</span> 
  </div> 
  <s:include value="searchbox.jsp" /><!-- 搜索框 -->
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
     <div class="span2 mySousaiMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><a href="userCenter-myMatch.jsp"><i class="icon-chevron-right"></i> 我发布的比赛</a></li> 
       <li class="active"><a href="userCenter-myCollection.jsp"><i class="icon-chevron-right"></i> 我收藏的比赛</a></li> 
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
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
       <div id="myCollection" class="tab-pane active">
        <div class="matchs" id="matchsList-collection"> 
         <!-- panel --> 
         <div class="panel-top"></div>
         <div class="matchBoxs">

          <div class="matchBox"><div class="matchBox-all"> 
           <div class="matchBox-title">
            <a href="javascript:void(0)">一北京东城区草根杯乒乓球比赛</a>
            <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-10</span></span>
           </div>
           <div class="hidden">
            <span class="matchBox-type-pp">乒乓球</span>
           </div> 
           <ul class="breadcrumb">
            <li class="matchBox-time">
             <div class="matchBox-matchTime">
              2013-10-17
              <p>星期五</p>
             </div>
             <div class="line">
              &nbsp;-&nbsp;
             </div>
             <div>
              2013-10-20
              <p>星期日</p>
             </div></li> 
            <li class="matchBox-court "><a href="javascript:void(0)">一北京东城区北京大学体育乓</a></li> 
            <li class="matchBox-state ">报名中</li> 
            <li class="matchBox-info "><a href="javascript:void(0)">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
            <li class="matchBox-btns "><a href="javascript:void(0)" class="btn btn-mini">查看详细</a></li> 
           </ul> 
          </div>
          </div>
         </div>
         <!-- /matchBoxs -->
         <div class="panel-bottom">
       		<div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       		<div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      	 </div>
        </div> 
       </div>
       <!-- /myCollection --> 
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
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
    {{#each this}}

       <div class="matchBox"  data-info="{{data this}}>
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="javascript:void(0)">{{name}}</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">{{relTime}}</span></span> 
         </div>
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-beginTime">{{beginTime}}<p>星期五</p></div> 
           <div class="line">&nbsp;-&nbsp;</div> 
           <div class="matchBox-endTime">{{endTime}}<p>星期日</p></div>
		  </li>
          <li class="matchBox-court "><a href="javascript:void(0)">{{courtName}}</a></li> 
          <li class="matchBox-state ">报名中</li> 
          <li class="matchBox-info "><a href="javascript:void(0)">{{{rule}}}</a></li> 
          <li class="matchBox-btns "><a href="javascript:void(0)" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
    {{/each}}
  </script>
  <script>
    $(function () {
		//ajax接收所有比赛
		$("#ajaxState .load").show();console.log("start");
		$.ajax({
	        type: "POST",
	        url: "getUserFavM",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        dataType: "json",
	        data:null,
	        success: function(data) {
	        	console.log(data);//sousaiRemindDialog(data);
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(v){
			    	  //将当前对象转化为字符串，保存在data-info中
			    	  console.log(v);
			    	  var v1 = JSON.stringify(v);
			    	  //console.log("v1:"+v1);
			    	  return v1;
			      });
			      target.empty().show().html(template(data));
			      $("#ajaxState .load").hide();
			      $("#ajaxState .noresult").hide();
			      console.log("stop");
			      //出错或无结果
			      //target.empty(); //清空tbody
			      if(target.find("div.matchBox").length == 0){
			      $("#ajaxState .noresult").show();
			      target.hide();
			      console.log("无结果");
			      }
		    	    //字数限制，溢出省略
		    	    $(".matchBox-court").wordLimit(20);
		    	    $(".matchBox-info > a").wordLimit(28);
		    	    
	        },
	        error: function(jqXHR,textStatus,errorThrown){
	          console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	          sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
	        },
	      });
        //鼠标hover matchbox
        $(".matchBoxs ").on('mouseenter','div.matchBox',function(){
        	      $('div.matchBox').removeClass("box-active");
        	      $(this).addClass("box-active");
        });
      //字数限制，溢出省略
    $(".matchBox-court").wordLimit(20);
    $(".matchBox-info > a").wordLimit(28);
    });
</script>
</body></html>