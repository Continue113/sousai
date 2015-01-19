<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 场地维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-场地维护" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
  .files img {height: 70px;width: auto;}
  /** 编辑场地 按钮bar  **/
  .editCourt > .btnbar {margin-left: 0;}
  /** 编辑场地按钮bar 中的按钮  **/
  .editCourt > .btnbar > .btn {float: right;margin-left: 10px;}  
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
      <li><a href="javascript:void(0)">待处理的比赛信息<span>(5)</span></a></li> 
     </ul> 
     <div class="span2 backgroundMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>系统发布:</a></h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li class="active"><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>网站统计</a></li>
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9">
     <div class="courtList">
      <!--场地维护 开始-->
      <div id="courtMaintenance">
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
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"/> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-strcolumns="name">场地名称</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)" data-strcolumns="name">场地名称</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="matchType">比赛类型</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="addr">场地地址</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="relDate">发布时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="userName">发布用户</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button" id="textFilterBoxSearchButton">搜索</button>
         <!-- <span class="add-on"><i class="icon-search"></i></span> -->
        </div> 
        <select class="select selectRows span1"><option value=10>10条/页</option><option value=2>2条/页</option><option value=5>5条/页</option></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteCourt">删除选中</button>
         <button type="button" class="btn passCourt">发布选中</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover courtTable"> 
        <caption>场地维护</caption> 
        <thead>
         <tr>
          <th>场地名称</th>
          <th>比赛类型</th>
          <th>场地地址</th>
          <th>发布时间</th>
          <th>发布用户</th>
         </tr>
        </thead> 
        <tbody></tbody> 
       </table>
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>       
      </div> 
      </div>
      <!--场地维护 结束-->
      <!--编辑场地开始-->
      <s:include value="editCourt.jsp" />
      <!-- /编辑场地信息 -->
     </div>
     <!-- /span8 --> 
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
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/sousai.common.js"></script>
  <script src="js/sousai.editcourt.js"></script>
  <!-- handlebars template -->
  <script id="court-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <tr class="court" data-info="{{data this}}"> 
          <td class="court-title"><label for="{{id}}"><input type="checkbox" id="{{id}}"/><span>{{name}}</span></label></td> 
          <td class="match-type">{{matchType}}</td> 
          <td class="court-addr">{{addr}}</td> 
          <td class="court-releaseTime">{{relDate}}</td> 
          <td class="court-releaseUser">{{userName}}</td> 
          <td class="court-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr>
                            
    {{/each}}
  </script>
  <script>
  //定义函数

	function e(crtPage,rs,obc,ia,sc,kv){
		//定义默认选项
		rs = rs||$("select.selectRows option:selected").val()||25,
		crtPage = crtPage||$("ul.pagination li.active a").html()||1, //每次点击改变条数都从第一页开始；parseInt($("ul.pagination > li.active").text()) || 1; //若当前页数为空则默认为第一页
	  	obc = obc||$(".sort button .current").attr("data-orderbycol"), 
		ia = ia||$(".sort button .current").attr("data-isasc"),
		sc = sc||$(".text-filter-box button .current").attr("data-strcolumns"),
		kv = kv||$(".text-filter-box input").val();
	  	alert(crtPage+" "+rs+" "+obc+" "+ia+" "+sc+" "+kv);
	  	
	  $("#ajaxState .load").show();console.log("start");
    $.ajax({
      type: "POST",
      url: "getAllCourt",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {currentPage:crtPage,rows:rs,orderByCol:obc,isAsc:ia,strColumns:sc,keyValue:kv},
      dataType: "json",
      success: function(rspdata) {
	      console.log(rspdata);//sousaiRemindDialog(rspdata);
      var target = $(".courtTable > tbody"),template = Handlebars.compile($('#court-template').html());
      Handlebars.registerHelper("data",function(v){
        //将当前对象转化为字符串，保存在data-info中
        //console.log(v);
        var v1 = JSON.stringify(v);
        //console.log("v1:"+v1);
        return v1;
      });
      target.empty(); //清空tbody
      target.html(template(rspdata.body));
      $("#ajaxState .load").hide();
      $("#ajaxState .noresult").hide();
      console.log("stop");
	    //出错或无结果
	    //target.empty(); //清空tbody
	    if(target.find("tr.court").length == 0){
	    $("#ajaxState .noresult").show();console.log("无结果");
	    }
	    //管理员界面表格列字数限制，溢出省略
	    $("td > label > span").wordLimit();
	    $(".court-addr").wordLimit();
	    pages(rspdata.count,crtPage,rs);
	    },
      error: function(jqXHR,textStatus,errorThrown){
    	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	      $("#ajaxState .noresult").show();console.log("出错了");
          sousaiRemindDialog("抱歉，ajax出错了。");
      },
    });
}
  
  $(function(){
	 //ajax接收所有的场地 默认为第一页 25条，按name排序，升序
	 e(1,25,"name",true,"name","");
	 //初始化场地类型 初始化为默认的比赛详细类型的其他 id为1
	 initCourtType(1);
	  //点击编辑比赛隐藏List列表同时显示编辑比赛
	  $("tbody").on("click",".court-oprate > a",function(event){
	      var datainfo = $(this).parent().parent().attr("data-info");
	      console.log(datainfo);
	      //设置场地信息在编辑界面的初始值
	      setCourtInfo(datainfo);
	    $(".courtList").slideUp();
	    $(".editCourt").slideDown();
	  });
    //点击删除场地 列表界面
    $("#courtMaintenance .deleteCourt").click(function(){
    	var checked = $(".court input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		var courtIds = new Array(),
    		rs = $("select.selectRows option:selected").val(),
    		crtPage = $("ul.pagination").find("li.active a").text();
    		$(".court input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
    			courtIds.push($(this).attr("id"));
    		});
    		console.log(courtIds);sousaiRemindDialog(courtIds);
            $.ajax({
              type: "POST",
              url: "deleteCourts",
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
                "courtIds": courtIds.join(","),
              },
              dataType: "json",
              success: function(rspdata) {
            	  if( rspdata == "success" ){
            		  sousaiRemindDialog("删除成功");
                      e(crtPage,rs); //刷新数据 
            	  }else if( rspdata == "fail" ){
            		  sousaiRemindDialog("删除失败");
            	  }else{
            		  sousaiRemindDialog("删除失败，错误代码未知");
            	  }
              },
              error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
              },
            }); //ajax 已得到具体比赛类型
    	}
    });
    //点击发布比赛 列表界面
    $("#courtMaintenance .passCourt").click(function(){
    	/*var checked = $(".court input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中场地");
    	}else{
    		var courtIds = new Array();
    		$(".court input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
        		courtIds.push($(this).attr("id"));
    		});
    		console.log(courtIds);sousaiRemindDialog("courtIds:"+courtIds.join(",,,"));
            $.ajax({
              type: "POST",
              url: "passCourts",
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              data: {
                "courtIds": courtIds.join(","),
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
              error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
              },
            });
    	}*/
    });
    
  });
  </script>  
 </body>
</html>