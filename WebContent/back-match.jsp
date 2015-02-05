<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" > 
  <title>管理员页面 &middot; 比赛维护 &middot; 搜赛网</title> 
  <meta name="description" content="搜赛网-管理员页面-比赛维护"> 
  <s:include value="seg-meta.jsp"/>
  <link href="css/sousai.back.css" rel="stylesheet">
 </head> 
 <body class="background"> 
  <s:include value="seg-back-head.jsp"/> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
     <span class="logotext">管理员页面</span> 
    </div>
   </div> 
   <div class="row"> 
    <div class="span11"> 
      <s:include value="seg-back-menu.jsp"/><!-- 后台导航菜单 -->
     <div class="span9">
      <!--比赛维护 开始-->
      <div class="matchList">
      <div id="matchMaintenance">
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
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-strcolumns="name">比赛名称</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)" data-strcolumns="name">比赛名称</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="beginTime">比赛时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="courtName">比赛场地</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="relTime">发布时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="userName">发布用户</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button" id="textFilterBoxSearchButton">搜索</button>
        </div> 
        <select class="select selectRows span1"></select>
        <label class="checkbox" for="selType"><input id="selType" type="checkbox" value="1"><span>显示所有</span></label>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteMatch">删除</button>
         <button type="button" class="btn passMatch">发布</button>
         <button type="button" class="btn unpassMatch">不发布</button> 
        </div> 
       </div>
       </div>
       <table class="table table-striped table-hover matchTable">
        <thead>
         <tr>
          <th>比赛名称</th>
          <th>比赛时间</th>
          <th class="th-matchCourt">比赛场地</th>
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
      <!--比赛维护 结束-->
      
      <!--编辑比赛 开始-->
        <s:include value="seg-editMatch.jsp" />
      <!-- /编辑比赛信息 -->
      </div>
     <!-- /span9 --> 
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
  <script src="js/bootstrap-datetimepicker.min.js"></script> 
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.common.js"></script>
  <script src="js/sousai.editmatch.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <tr class="match" data-info="{{data}}"> 
          <td class="match-title">{{checkState}}</td> 
          <td class="match-time">{{beginTime}} - {{endTime}}</td> 
          <td class="match-court">{{region}}:{{courtName}}</td> 
          <td class="match-releaseTime">{{relTime}}</td> 
          <td class="match-releaseUser">{{userName}}</td> 
          <td class="match-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr>
                            
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
		args.selType = args.selType||$("#selType").attr("value")||1;
	  	
		console.log(args);
  	$("#ajaxState .load").show();
    $.ajax({
      url: "getAllMatch",
      data: args,
      success: function(rspdata) {
    	  console.log(rspdata);
	      var target = $(".matchTable > tbody"),template = Handlebars.compile($('#match-template').html());
	      Handlebars.registerHelper("data",function(){
	    	  return JSON.stringify(this);
	      });
	      Handlebars.registerHelper("checkState",function(){
              if(this.verify == "1"){
              	return  new Handlebars.SafeString('<label for="'+this.id+'"><input type="checkbox" id="'+this.id+'" ><span>'+this.id+':'+this.name+'</span></label><span class="label label-info">已发布</span>');
              }else{
              	return new Handlebars.SafeString('<label for="'+this.id+'"><input type="checkbox" id="'+this.id+'" ><span>'+this.id+':'+this.name+'</span></label>');
              }
            });
	  	  target.empty().html(template(rspdata.body));
	      $("#ajaxState .load").hide();
	      $("#ajaxState .noresult").hide();
	      //出错或无结果
	      if(target.find("tr.match").length == 0){
	      $("#ajaxState .noresult").show();
	      }
	      //字数限制，溢出省略
	      $("td > label > span").wordLimit();
	      $(".match-court").wordLimit();
	      pages(rspdata.count,args.currentPage,args.rows);
	    }
    });
  }
  function sureDelete(){
	  hideSousaiRemindDialog();
	  var matchIds = new Array();
		$(".match input:checked").each(function(index,element){
  			matchIds.push($(this).attr("id"));
		});
      $.ajax({
        url: "deleteMatches",
        data: {
          "matchIds": matchIds.join(","),
        },
        success: function(rspdata) {
      	  if( rspdata == "success" ){
      		  sousaiRemindDialog("删除成功");
      		  $(".match input:checked").parent().parent().parent().remove();
      	  }else{
      		  sousaiRemindDialog("删除失败，错误代码为"+rspdata);
      	  }
        }
      });
  }
  $(function(){
	  setMenu();
	//ajax接收所有比赛
	e({currentPage:1,rows:25});
    //点击编辑比赛隐藏List列表同时显示编辑比赛
    $("tbody").on("click",".match-oprate > a",function(event){
        var datainfo = $(this).parent().parent().attr("data-info");
        setMatchInfo(datainfo);
        if($("#editMatchType").text() == "取消修改"){
        	$("#editMatchType").click();
        }
        if($("#editMatchCourt").text() == "取消修改"){
        	$("#editMatchCourt").click();
        }
    	$(".matchList").slideUp();
    	$(".editMatch").slideDown();
  	});
    //点击发布比赛 列表界面
    function passMatch(isrel){
	var checked = $(".match input:checked"),n = checked.length,data={};
	//若为选中则提示
	if( n == 0){
		sousaiRemindDialog("请先选中比赛");
	}else{
		var matchIds = new Array();
		$(".match input:checked").each(function(index,element){
			console.log($(this).attr("id"));
    		matchIds.push($(this).attr("id"));
		});
		data.ids=matchIds.join(",");
		data.isRel=isrel;
		console.log(data);
        $.ajax({
          url: "relMatchesByAdmin",
          data: data,
          success: function(rspdata) {
        	  if( rspdata == "success" ){
        		  //判断是发布还是不发布
        		  if(data.isRel){
            		  sousaiRemindDialog("发布成功");
              		  $(".match input:checked").attr("checked",false).parent().parent().append('<span class="label label-info">已发布</span>');
        		  }else{
            		  sousaiRemindDialog("取消发布成功");
              		  $(".match input:checked").attr("checked",false).parent().parent().find(".label").remove();
        		  }
        	  }else{
        		  sousaiRemindDialog("操作失败，错误代码为："+rspdata);
        	  }
          }
        });
	}
	}
    
    $("#matchMaintenance").find(".unpassMatch").click(function(){passMatch(false);}).end()
    .find(".passMatch").click(function(){passMatch(true);}).end()
    .find(".deleteMatch").click(function(){
    	var checked = $(".match input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中比赛");
    	}else{
    		$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对收藏此比赛的用户照成影响。");
    		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDelete()");
    		sousaiRemindDialog("确定删除？",-1,"show");
    	}
    });

    $("#selType").click(function(){
    	var target = $(this);
    	if(target.attr("value")==1){
    		e({selType:1});
    		target.attr("value",0);//.parent().find("span").text("显示未发布");
    	}else if(target.attr("value")==0){
    		e({selType:0});
    		target.attr("value",1);//.parent().find("span").text("显示所有");    		
    	}
    });
  });
  </script>  
 </body>
</html>