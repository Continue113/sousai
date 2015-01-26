<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 注册用户 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-数据统计-注册用户" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style>
  .table th:first-child {text-align: center;padding-left: 0;}
  .table td:first-child {text-align: right;}
  .toolBox {margin-bottom: 10px;}
  .chartBox {height:500px;border:1px solid #ccc;padding:10px;margin-bottom: 10px;}
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
      <li><a href="javascript:void(0);">待处理的比赛信息<span>(5)</span></a></li> 
     </ul> 
     <div class="span2 backgroundMenu"> 
      <ul class="nav nav-stacked nav-side"> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>系统发布:</a></h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>网站设置</a></li> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="javascript:void(0);"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li class="active"><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>网站统计</a></li>
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <div class="toolBox total form-inline">
        <label for="year">请选择年份：<select class="span1 year" name="year" id="year"><option>暂无年份</option></select></label> 
        <button class="btn pull-right" id="tableTiggler">显示表格</button>
        <button class="btn pull-right" id="chartTiggler">隐藏图表</button>
      </div> 
      <div class="hide" id="mainTable">
      <table class="table table-bordered table-striped table-condensed table-hover statisticsTable"> 
        <thead> 
         <tr>
          <th colspan="14">搜赛网统计数据（2014年）</th>
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
          <td>访问量</td> 
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
      <hr />
      <div class="toolBox region form-inline">
        <label for=regionTimeYear>请选择地域统计时间段：</label> 
        <select class="span1 year" name="timeYear" id="regionTimeYear"><option>暂无年份</option></select>
        <select class="span1" name="timeMonth" id="regionTimeMonth"> <option value="-1">全年</option> <option value="1">1月</option>  <option value="2">2月</option>  <option value="3">3月</option>  <option value="4">4月</option>  <option value="5">5月</option>  <option value="6">6月</option>  <option value="7">7月</option>  <option value="8">8月</option>  <option value="9">9月</option>  <option value="10">10月</option>  <option value="11">11月</option>  <option value="12">12月</option> </select> 
        <button class="btn pull-right" id="regionTiggler">隐藏地图</button>
      </div>
      <div class="chartBox " id="mainMap"></div>
      <hr />
      <div class="toolBox Match form-inline">
        <label for=day>请输入时间以统计比赛场次：</label>
        <input type="text" class="input-small height-mini" id="day" placeholder="请输入天数" /> 天内各地
            <select class="selectMatchType span1" name="mcId"><option value=0>请选择比赛大类</option></select>
            <select class="selectParticularMatchType span1"><option value=0>请先选择比赛大类</option></select>
            <input class="hide" id="particularMatchType" name="court.matchType"/>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"/></label>
            比赛统计。
        <button class="btn " id="tableTigglerMatch">统计</button>
        <button class="btn pull-right" id="matchTiggler">显示表格</button>        
      </div>
      <p>北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、北京32场、成都23场、</p>
      <table class="table table-bordered table-striped table-condensed table-hover matchTable"> 
        <thead> 
         <tr>
          <th colspan="14">30天内各地乒乓球比赛数量统计</th>
         </tr> 
         <tr> 
          <th>北京</th> 
          <th>北京</th> 
          <th>北京</th> 
          <th>北京</th> 
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
          <td>58</td> 
          <td>5</td> 
          <td>455</td> 
          <td>52</td> 
          <td>54</td> 
          <td>515</td> 
          <td>5</td> 
          <td>215</td> 
          <td>54</td> 
          <td>5</td> 
          <td>5454</td> 
          <td>6</td> 
          <td>8</td> 
          <td>65</td> 
         </tr>
        </tbody> 
       </table>
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.validate.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script src="js/esl.js"></script> 
  <script src="js/sousai.bg-eCount-optionLine.js"></script> 
  <script src="js/sousai.bg-eCount-optionMap.js"></script> 
  <script src="js/sousai.bg-eCount.js"></script> 

  <!-- handlebars template -->
  <script id="statistics-template" type="text/x-handlebars-template">
  {{#each this}}
 
  {{/each}}
  </script>
  <script>
  //定义函数
  function getAllMatchType(){
	//获取所有比赛类型
      $.post("showMC", null, function(data) {
          //alert("回调内容为:"+data);//id name 
          var target = $("#allMatchType > .modal-body > .breadcrumb-fff");
          target.empty();
          $.each(data, function(index, item) {
              target.append('<span class="breadcrumb-title">' + item.name + '类:</span><ul class="breadcrumb typeid' + item.name + '"></ul><hr/>');
              $.post("showMT", {"mcId": item.id}, function(rspdata) {
                  $.each(rspdata, function(index1, item1) {
                      target.find(".typeid" + item.name).append('<li><a href="#" data-id="' + item1.id + '">' + item1.name + '</a>&nbsp;&nbsp;</li>');
                  });
              });
          });
      });
  }
$(function(){
	 	
	  //初始化所有需要选择年份的select 设置年份到今年
	  var date = new Date();
	  $("select.year").empty();
	  for(var i=2011;i<date.getFullYear();i++){
		  $("select.year").append("<option>"+i+"</option>");
	  }
	  $("select.year").append("<option selected='selected'>"+date.getFullYear()+"</option>");
	  getChartData($("#year option:selected").text());
	  
	  //选择 搜赛网统计数据 的年份
	  $("#year").change(function(){
		  getChartData($("#year option:selected").text());
	  });
	  //初始化比赛类型
	  initMatchType();
	  //点击大类比赛类型获得具体比赛类型
	  $(".selectMatchType").change(function() {
		  selectMatchType($(this));
	  });
	  //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
	  $(".selectParticularMatchType").change(function() {
		 selectParticularMatchType($(this));
	  });
	  //
	  $("#tableTigglerMatch").click(function(){
			var data = {
	            	dayNum: $("#day").val(),
	            	matchType: $(".selectParticularMatchType option:selected").text()
	            };
			console.log(data);
	        $.ajax({
	            type: "POST",
	            url: "courtStatistics",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	            data: data,
	            dataType: "json",
	            success: function(rspdata) {
	            	console.log(rspdata);
	            },
	            error: function(jqXHR,textStatus,errorThrown){
	            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	              	sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
	            },
	          });
	  });
	  
	  //$("#mainLine").hide();
	  //$("#mainMap").hide();
	  //重复点击显示/隐藏表格
	  $("#tableTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示表格"){
	            $("#mainTable").slideDown();
	            $(this).text("隐藏表格");
	        }else{
	            $("#mainTable").slideUp();
	            $(this).text("显示表格");
	        }
	  });
	  $("#chartTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示图表"){
	            $("#mainLine").show();
	            $(this).text("隐藏图表");
	        }else{
	            $("#mainLine").hide();
	            $(this).text("显示图表");
	        }
	  });
	  $("#regionTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示地图"){
	            $("#mainMap").show();
	            $(this).text("隐藏地图");
	        }else{
	            $("#mainMap").hide();
	            $(this).text("显示地图");
	        }
	  });
	  $("#matchTiggler").click(function(){
		  // 0 为 隐藏， 1为显示
	      if($(this).text()=="显示表格"){
	            $(".matchTable").slideDown();
	            $(this).text("隐藏表格");
	        }else{
	            $(".matchTable").slideUp();
	            $(this).text("显示表格");
	        }
	  });
});
  </script>  
 </body>
</html>