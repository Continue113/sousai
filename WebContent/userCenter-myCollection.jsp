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
  /** 排序下拉按钮 **/
  .panel-top > .btn-group {margin-top: 10px;}
  
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
        <li><a href="javascript:void(0)">暂无信息<span>(0)</span></a></li>        
       </ul>
      </div> 
      <div class="tab-content">
       <div id="myCollection" class="tab-pane active">
        <div class="matchs" id="matchsList-collection">
         <!-- panel --> 
         <div class="panel-top">
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
       		<div id="ajaxState" class="text-center"><span class="hide noresult">您还没有收藏比赛</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
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

       <div class="matchBox"  data-info="{{data}}>
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a target="_blank" href="matchSearchDetail.jsp?id={{id}}">{{name}}</a> 
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
          <li class="matchBox-btns "><a target="_blank" href="matchSearchDetail.jsp?id={{id}}" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
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
	        type: "POST",
	        url: "getUserFavM",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        dataType: "json",
	        data: args,
	        success: function(rspdata) {
	        	console.log(rspdata);
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(){
			    	  return JSON.stringify(this);
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
			      pages(rspdata.count,args.currentPage,args.rows);		    	    
	        },
	        error: function(jqXHR,textStatus,errorThrown){
	          console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	          sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
	        },
	      });
  }
    $(function () {
    	//获得已有比赛信息
    	userCenterRemind();
		e({currentPage:1,rows:25});
        //鼠标hover matchbox
        $(".matchBoxs ").on('mouseenter','div.matchBox',function(){
        	      $('div.matchBox').removeClass("box-active");
        	      $(this).addClass("box-active");
        });
    });
</script>
</body></html>