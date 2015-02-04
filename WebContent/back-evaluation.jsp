<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 评论维护 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网-管理员页面-评论维护" > 
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
      <!--评论维护 开始--> 
      <div id="evaluationMaintenance"> 
       <!-- panel --> 
       <div class="panel-top form-inline">
       <div class="btn-group sort" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-orderbycol="courtName" data-isasc="true">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)" data-orderbycol="mesg" data-isasc="true">评论内容<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="courtName" data-isasc="true">场地名称<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="time" data-isasc="true">发布时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="userName" data-isasc="true">发布用户<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div>
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-strcolumns="courtName">场地名称</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)" data-strcolumns="mesg">评论内容</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="courtName">场地名称</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="time">发布时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="userName">发布用户</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button" id="textFilterBoxSearchButton">搜索</button>
        </div>  
        <select class="select selectRows span1"></select>
        <label class="checkbox"><input type="checkbox">显示所有</label>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteEvaluation">删除</button>
         <button type="button" class="btn signDelete">标记删除</button>
         <button type="button" class="btn unSignDelete">取消标注</button>
        </div> 
       </div>
       <table class="table table-striped table-hover evaluationTable">
        <thead>
         <tr>
          <th>评论内容</th>
          <th class="text-center">场地名称</th>
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
      <!--评论维护 结束--> 
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/jquery.validate.min.js"></script> 
  <script src="js/sousai.common.js"></script>
  <!-- handlebars template -->
  <script id="evaluation-template" type="text/x-handlebars-template">
    {{#each this}}

      <tr class="evaluation"  data-info="{{data}}">
         <td class="evaluation-content form-inline" data-parentId="{{parentId}}">{{checkState}}</td>
         <td class="court-name" data-courtId="{{courtId}}">{{courtName}}</td>
         <td class="evaluation-releaseTime">{{time}}</td>
         <td class="evaluation-releaseUser" data-userId="{{userId}}">{{userName}}</td>
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
		args.orderByCol = args.orderByCol||$(".sort button .current").attr("data-orderbycol")||"courtName";
		args.isAsc = args.isAsc||$(".sort button .current").attr("data-isasc")||true;
		args.strColumns = args.strColumns||$(".text-filter-box button .current").attr("data-strcolumns")||"courtName";
		args.keyValue = args.keyValue||$(".text-filter-box input").val()||"";
	$("#ajaxState .load").show();
    $.ajax({
        url: "getAllMesg",
        data: args,
        success: function(rspdata) {
    		console.log(rspdata);
            var target = $(".evaluationTable > tbody"),template = Handlebars.compile($('#evaluation-template').html());
            Handlebars.registerHelper("data",function(){
              return JSON.stringify(this);
            });
            Handlebars.registerHelper("checkState",function(){
            	var item = '<label for="'+this.id+'"><input type="checkbox" id="'+this.id+'" ><span>'+this.id+':'+this.mesg+'</span></label>';
                if(this.state == 0){
                	item +='<span class="label label-info">已标记为删除</span>&nbsp;&nbsp;';
                }
                if(this.visibleName == null){
                	item +='<span class="label label-info">匿名</span>';
                }
                return new Handlebars.SafeString(item);                
              });
            target.empty().html(template(rspdata.body));
            $("#ajaxState .load").hide();
  	        $("#ajaxState .noresult").hide();
      	    if(target.find("tr.evaluation").length == 0){
      	    $("#ajaxState .noresult").show();
      	    }
            //管理员界面表格列字数限制，溢出省略
            $("td > label > span").wordLimit();
            $(".court-name").wordLimit();
            pages(rspdata.count,args.currentPage,args.rows);
  	    }
      });
	}
  function sureDelete(){
	  hideSousaiRemindDialog();
		var evaluationIds = new Array();
		$(".evaluation input:checked").each(function(index,element){
			evaluationIds.push($(this).attr("id"));
		});
      $.ajax({
        url: "deleteMesgs",
        data: {
          "messageIds": evaluationIds.join(","),
        },
        success: function(rspdata) {
      	  if( rspdata == "success" ){
      		  sousaiRemindDialog("发布成功");
      		  $(".evaluation input:checked").parent().parent().prepend('<span class="label label-info">已标记为删除</span>').end().remove();
      	  }else{
      		  sousaiRemindDialog("发布失败，错误代码为："+rspdata);
      	  }
        }
      });
  }
  
  $(function(){
	  setMenu();
	//ajax接受所有的评论
	e({currentPage:1,rows:25});
	//点击删除比赛 列表界面
    $("#evaluationMaintenance .deleteEvaluation").click(function(){
    	
    	var checked = $(".evaluation input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中评论");
    	}else{
    		$("#SRDadd").text('小提示：此删除将无法取消操作,不会真正删除用户的评论,而是将其设置为 "已被管理员删除" 状态。');
    		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDelete()");
    		sousaiRemindDialog("确定删除？",-1,"show");
    	}
    });
  });
  </script>  
 </body>
</html>