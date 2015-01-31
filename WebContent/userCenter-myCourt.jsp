<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>我的搜赛 &middot; 我发布的场地 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网用户中心-我的搜赛-我发布的场地">
  <s:include value="seg-meta.jsp"/>
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
        <li>场地信息:</li> 
        <li><a href="javascript:void(0)">暂无信息<span>(0)</span></a></li>
       </ul>
      </div> 
      <div class="tab-content">
       <div id="myCourt" class="tab-pane active">
        <div class="courts courtList" id="courtsList">
         <!-- panel --> 
         <div class="panel-top">
       <div class="btn-group sort" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-orderbycol="name" data-isasc="true">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)" data-orderbycol="name" data-isasc="true">场地名称<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="matchType" data-isasc="true">比赛类型<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="addr" data-isasc="true">场地地址<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="relDate" data-isasc="true">发布时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="userName" data-isasc="true">发布用户<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div>
	   </div>
         <div class="courtBoxs"></div>
         <!-- /courtBoxs -->
         <div class="panel-bottom">
       		<div id="ajaxState" class="text-center"><span class="hide noresult">您还没有创建场地</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       		<div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      	 </div>
        </div> 
        <!-- /courts -->
       </div>
       <!-- /myCourt --> 
       
       <!--编辑比赛 开始-->
        <s:include value="seg-editCourt.jsp"/>
       <!-- /编辑比赛信息 -->
       
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.editcourt.js"></script>
  <!-- handlebars template -->
  <script id="court-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <div class="courtBox"  data-info="{{data}}"> 
         <!-- img --> 
         <div class="courtBox-img"> 
          <img src="img/defaultImg.png" alt="" title="" > 
         </div> 
         <!-- data --> 
         <div class="courtBox-block"> 
          <div class="courtBox-title"> 
           <a target="_blank" href="courtSearchDetail.jsp?id={{id}}">{{name}}</a> 
           <a href="courtSearchDetail.jsp?id={{id}}" target="_blank" class="btn btn-mini pull-right">查看详细</a> <a href="javascript:void(0);" class="btn btn-mini pull-right modifyCourt">编辑场地</a>
          </div> 
          <ul class="breadcrumb"> 
           <li class="courtBox-address">{{addr}}</li> 
           <li class="courtBox-info"><p>{{courtType}}</p><p>{{#if tableNum}}赛场{{tableNum}}个{{else}}暂无赛场数据{{/if}}</p><p>{{#if tel}}电话：{{tel}}{{else}}暂无电话信息{{/if}}</p></li>
           <li class="courtBox-tel">电话：<p>{{#if tel}}{{tel}}{{else}}暂无电话信息{{/if}}</p></li>
		   <li class="courtBox-record ">举办比赛次数<p><span class="courtBox-recordNumb">{{recordNumb}}</span>次</p></li> 
           <li class="courtBox-evaluation ">评论次数<p><span class="courtBox-evaluationNumb">{{evaluationNumb}}</spn>次</p></li>
		  </ul> 
         </div> 
        </div>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  
  function e(argso){
	  //设置默认参数
	  var args=argso;
	  args.keyValue = args.keyValue||$("#keyValue").val()||"";
	  args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
	  args.rows = args.rows||25;
	  args.orderByCol = args.orderByCol||$(".sort .current").attr("data-orderbycol")||"name";
	  args.isAsc = args.isAsc||$(".sort .current").attr("data-isasc")||true;
		  
  	  $("#ajaxState .load").show();
  	  $(".courtBoxs").show();
  	  
  	$.ajax({
        url: "getCourtByUserId",
        data:args,
        success: function(rspdata) {
        	console.log(rspdata);
		      var target = $(".courtBoxs"),template = Handlebars.compile($('#court-template').html());
		      Handlebars.registerHelper("data",function(){
	                return JSON.stringify(this);
	              });
	        	Handlebars.registerHelper("recordNumb",function(){
	          	  	var recordNumb = $.ajax({
	          	  		type: "POST",
	          	        url: "getMatchByCourtId",
	          	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          	        data: {
	          	          courtId: this.id,
	          	          currentPage: 1,
	          	          rows: 1
	          	        },
	        	        async: false, //设置异步为false,解决ajax异步不能设置全局变量的问题
	          	        dataType: "json"
	          	        });
	          	  	console.log(recordNumb.responseJSON);
	          	  	 if(!recordNumb.responseJSON.count){
	          	  		 return 0;
	          	  	 }
		          	 return recordNumb.responseJSON.count;
	              });
	        	Handlebars.registerHelper("evaluationNumb",function(){
	          	  	 var evaluationNumb = $.ajax({
	          	  		type: "POST",
	          	        url: "showMsgs",
	          	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          	        data: {courtId: this.id},
	        	        async: false, //设置异步为false,解决ajax异步不能设置全局变量的问题
	          	        dataType: "json"
	          	        });
		          	 console.log(evaluationNumb.responseJSON);
	          	  	 if(!evaluationNumb.responseJSON.length){
	          	  		 return 0;
	          	  	 }
	          	  	 return evaluationNumb.responseJSON.length;
	              });
		      target.empty().show().html(template(rspdata.body));
		      $("#ajaxState .load").hide();
		      $("#ajaxState .noresult").hide();
		      if(target.find("div.courtBox").length == 0){
		      $("#ajaxState .noresult").show();
		      target.hide();
		      }
	    	    //字数限制，溢出省略
	          $(".courtBox-address").wordLimit();
	    	  $(".courtBox-tel p").wordLimit();
	    	  pages(rspdata.count,args.currentPage,args.rows);
        }
      });
  }
  
    $(function () {
    	setMenu();
    	//检测用户是否为登录状态
    	var userid =isLogined();
    	if(userid.responseJSON=="error"){
    		$(".span8",".span11").html("您还未登录，请先登录。");
    		return false;
    	}
    	//获得已有比赛信息
    	userCenterRemind();
   	 	e({currentPage:1,rows:25});
    	
    	//点击编辑比赛隐藏List列表同时显示编辑比赛
    	$(".courtBoxs").on("click",".modifyCourt",function(event){
        	var datainfo = $(this).parent().parent().parent().attr("data-info");
        	console.log(datainfo);
        	setCourtInfo(datainfo);
    		$(".courtList").slideUp();
    		$(".editCourt").find("button.passCourt").hide().end().slideDown();
  		});
    });
</script>
</body></html>