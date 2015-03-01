<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 注册用户 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网-管理员页面-数据统计-注册用户">
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
      <div class="toolBox total form-inline">
        <label for="year">请选择年份：<select class="span1 year" name="year" id="year"><option>暂无年份</option></select></label>
      </div> 
      <div class="" id="mainTable">
      <table class="table table-bordered table-striped table-condensed table-hover statisticsTable"> 
        <thead> 
         <tr>
          <th colspan="14">搜赛网统计数据（暂无年份）</th>
         </tr> 
         <tr> 
          <th>项目</th> 
          <th>累计</th> 
          <th>1月</th> 
          <th>2月</th> 
          <th>3月</th> 
          <th>4月</th> 
          <th>5月</th> 
          <th>6月</th> 
          <th>7月</th> 
          <th>8月</th> 
          <th>9月</th> 
          <th>10月</th> 
          <th>11月</th> 
          <th>12月</th> 
         </tr> 
        </thead> 
        <tbody>
         <tr> 
          <td>注册用户</td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
         </tr> 
         <tr> 
          <td>比赛发布（搜赛网）</td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
         </tr> 
         <tr> 
          <td>比赛发布（自然人）</td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
         </tr> 
         <tr> 
          <td>场地发布（搜赛网）</td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
         </tr> 
         <tr> 
          <td>场地发布（自然人）</td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
         </tr> 
         <tr> 
          <td>场地评论</td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
          <td></td> 
         </tr> 
        </tbody> 
       </table>
      </div> 
      <div class="chartBox " id="mainLine"></div>
      <hr >
      <div class="toolBox match form-inline">
        <label for=day>请输入时间以统计比赛场次：</label>
        <input type="text" class="input-small height-mini" id="day" placeholder="请输入天数" > 天内各地
            <select class="selectMatchType span1" name="mcId"><option value=0>请选择比赛大类</option></select>
            <select class="selectParticularMatchType span1"><option value=0>请先选择比赛大类</option></select>
            <input class="hide" id="particularMatchType" name="court.matchType">
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"></label>比赛统计。
        <button class="btn " id="tableTigglerMatch">统计</button>
      </div>
      <div class="panel">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
      </div>
      <table class="table table-bordered table-striped table-condensed table-hover matchNumTable"> 
        <thead> 
         <tr class="title">
          <th colspan="0">暂无信息</th>
         </tr> 
         <tr class="province"> 
          <th>暂无信息</th>
         </tr> 
        </thead> 
        <tbody>
         <tr class="num"> 
          <td>暂无信息</td>
         </tr>
        </tbody> 
       </table>
      <p class="matchNumInfo text-center hide">暂无信息</p>
     </div>
     <!-- /span9 --> 
    </div>
    <!-- /span11--> 
   </div>
   <!-- /row--> 
  </div>
  <!-- /container-->
  <hr >
  <!-- HTML5 elements ,IE9模式, for IE6-8 --> 
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/IE9.js"></script>
  <![endif]--> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.validate.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script src="js/esl.js"></script> 
  <script src="js/sousai.bg-eCount-optionLine.js"></script> 
  <script src="js/sousai.bg-eCount.js"></script> 
  <script>
  //定义函数
$(function(){
	  if(isAdmin() == '-1'){
		  return false;
	  }
	setMenu();
	  //初始化所有需要选择年份的select 设置年份到今年
	  var date = new Date();
	  //$("select.year").empty();
	  for(var i=2011;i<=date.getFullYear();i++){
		  $("select.year").append("<option>"+i+"</option>");
	  }
	  //$("select.year").append("<option selected='selected'>"+date.getFullYear()+"</option>");
	  //getChartData($("#year option:selected").text());
	  //初始化比赛类型
	  initMatchType();
	  
	  //选择 搜赛网统计数据 的年份
	  $("#year").change(function(){
		  if($("#year option:selected").text()!="暂无年份"){
			  getChartData($("#year option:selected").text());
		  }
	  });
	  //点击大类比赛类型获得具体比赛类型
	  $(".selectMatchType").change(function() {
		  selectMatchType($(this));
	  });
	  //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
	  $(".selectParticularMatchType").change(function() {
		 selectParticularMatchType($(this));
	  });
	  //点击统计获取 指定天数内制定比赛的各省数量
	  $("#tableTigglerMatch").click(function(){
			/*//验证输入值
			if(!$("#day").val()){
				soudaiRemindDialog("请先输入。");
				return false;
			}else if($(".selectParticularMatchType option:selected").attr("value") == 0){
				soudaiRemindDialog("请先选中比赛类型。");
			} */
			var data = {
	            	dayNum: $("#day").val(),
	            	matchType: $(".selectParticularMatchType option:selected").text()
	            },
	            target = $(".matchNumTable");
			$("#ajaxState .load").show();
			$(".panel").show();
			$("#ajaxState .noresult").hide();            		
    		target.find(".title th").text(data.dayNum+"天内各地"+data.matchType+"比赛数量统计").attr("colspan",0).end().find(".province").empty().end().find(".num").empty();
    		$(".matchNumInfo").text("暂无信息");
			console.log("start");
	        $.ajax({
	            url: "courtStatistics",
	            data: data,
	            success: function(rspdata) {
	            	console.log(rspdata);console.log(rspdata.length);
	    			$("#ajaxState .load").hide();
	            	if(rspdata == "null"){
		    			$("#ajaxState .noresult").show();
		    			target.find(".province").empty().append("<th>暂无信息</th>").end().find(".num").empty().append("<td>暂无信息</td>");
	            	}else{
	            		var str = "";
	            		$.each(rspdata,function(key,value){
	            			str += key+value+"场，";
	            			target.find(".province").append("<th>"+key+"</th>").end().find(".num").append("<td>"+value+"</td>");
	            		});
	            		$(".matchNumInfo").text(str);
	            	}
	            }
	          });
	  });
	  
});
  </script>  
 </body>
</html>