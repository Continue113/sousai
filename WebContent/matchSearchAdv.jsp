<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>比赛高级搜索 &middot; 搜赛网</title> 
  <meta name="description" content="搜赛网比赛搜索页面" >
  <s:include value="seg-meta.jsp"/>
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
 </head> 
 <body class="matchSearch">
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
      <p><i class="icon-th-list"></i>&nbsp;找到相关比赛&nbsp;<span>获取数据中...</span>&nbsp;场</p> 
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal"> 
       <fieldset> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="keyValue" placeholder="请输入搜索关键词" > 
          <a href="courtSearch.jsp" class="btn btn-small pull-right">转换到场地搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
         <div class="controls"> 
            <select class="selectMatchType" name="mcId"><option value=0>请选择比赛大类</option></select>
            <select class="selectParticularMatchType"><option value=0>请先选择比赛大类</option></select>
            <input class="hide" id="particularMatchType" name="court.matchType">
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"></label>
         </div> 
        </div> 
        <div class="control-group matchState"> 
         <label class="control-label" for="matchState">比赛状态：</label> 
         <div class="controls form-inline"> 
          <label class="checkbox"><input type="checkbox" id="matchState_applying" checked="checked" >报名中&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" id="matchState_playing" checked="checked" >比赛中&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" id="matchState_played" checked="checked" >已结束&nbsp;&nbsp;</label> 
         </div>
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputMatchTimefrom">比赛时间：</label> 
         <div class="controls form-inline"> 
          <div class="input-append"> 
           <input type="text" class="input-small height-mini" id="inputMatchTimefrom" placeholder="请选择日期" > 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择日期"><i class="icon-calendar"></i></span> 
          </div> 
          <label for="to">—</label> 
          <div class="input-append"> 
           <input type="text" class="input-small" id="inputMatchTimeto" placeholder="请选择日期" > 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择日期"><i class="icon-calendar"></i></span> 
          </div> 
          <label class="checkbox"><input type="checkbox" id="matchTime_days" class="matchTime" >工作日&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" id="matchTime_saturday" class="matchTime" >星期六&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" id="matchTime_sunday" class="matchTime" >星期日&nbsp;&nbsp;</label> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">比赛地点：</label> 
         <div class="controls form-inline"> 
          <!-- 选择省市区三级下拉框 --> 
          <s:include value="seg-selectPCC.jsp"/>
          <input type="button" value="搜&nbsp;&nbsp;索" class="btn btn-success btn-small pull-right" id="advMatchSearchButton"> 
         </div> 
        </div> 
       </fieldset> 
      </form> 
     </div> 
     <!-- /searchbox-ad --> 
     <div class="matchs" id="matchsList"> 
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
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>
      <!-- /matchBoxs -->
     </div> 
     <!-- /matchs --> 
    </div> 
    <!-- /span8 offset2 --> 
    <div class="span1"> 
     <div class="text-center adSecond">这里是ad.no2</div> 
    </div> 
   </div> 
   <!-- /row --> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/bootstrap-datetimepicker.min.js"></script>
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
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
          <li class="matchBox-court "><a href="courtSearchDetail.jsp?id={{courtId}}">{{courtName}}</a></li> 
          <li class="matchBox-state ">{{state}}</li> 
          <li class="matchBox-info "><a target="_blank" href="matchSearchDetail.jsp?id={{id}}">{{{rule}}}</a></li> 
          <li class="matchBox-btns "><a href="javascript:void(0);" class="btn btn-mini" onclick="markMatch({{id}})">收藏比赛</a><a target="_blank" href="matchSearchDetail.jsp?id={{id}}" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function getMatchState(){
	  var v = 0;
	  if($("#matchState_applying").is(":checked")){
		  v +=1;
	  }
	  if($("#matchState_playing").is(":checked")){
		  v +=2;
	  }
	  if($("#matchState_played").is(":checked")){
		  v +=4;
	  }
	  return v;
  }
  function getDayOfWeek(){
	  var v = 0;
	  if($("#matchTime_days").is(":checked")){
		  v +=1;
	  }
	  if($("#matchTime_saturday").is(":checked")){
		  v +=2;
	  }
	  if($("#matchTime_sunday").is(":checked")){
		  v +=4;
	  }
	  return v;
  }
  //高级比赛搜索函数
  function e(argso){
	  //设置默认参数
	  var args=argso;
	  args.region = args.region||getRegion().region;
	  args.regionId = args.regionId||getRegion().regionId; //暂时未用到
	  args.keyValue = args.keyValue||$("#keyValue").val()||"";
	  args.matchType = args.matchType||($("select.selectParticularMatchType option:selected").attr("value") == "0" ? null : $("select.selectParticularMatchType option:selected").text());
	  args.matchState = args.matchState||getMatchState();
	  args.beginTime = args.beginTime||$("#inputMatchTimefrom").val()||null;
	  args.endTime = args.endTime||$("#inputMatchTimeto").val()||null;
	  args.dayOfweek = args.dayOfweek||getDayOfWeek();
	  args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
	  args.rows = args.rows||25;
	  args.orderByCol = args.orderBycol||$(".sort .current").attr("data-orderbycol")||"name";
	  args.isAsc = args.isAsc||$(".sort .current").attr("data-isasc")||true;
		  
		$("#ajaxState .load").show();
		$(".matchBoxs").show();
		$(".panel-top").show();
		$("#ajaxState .noresult").hide();
    	console.log(args);
		
	      $.ajax({
	          url: "getMatchByP",
	          data: args,
	          success: function(rspdata) {
	        	  console.log(rspdata);
		       	  //设置搜索结果数量
		          $(".search-remind span").html(rspdata.count);
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(){
			    	  return JSON.stringify(this);
			      });
			      target.empty().show().html(template(rspdata.body));
			      $("#ajaxState .load").hide();
			      if(target.find("div.matchBox").length == 0){
			      $("#ajaxState .noresult").show();
			      target.hide();
			      }
		    	  //字数限制，溢出省略
		    	  $(".matchBox-court > a").wordLimit(20);
		    	  $(".matchBox-info > a").wordLimit(28);
				  pages(rspdata.count,args.currentPage,args.rows);
	          }
	        });
	}  
  $(function(){
		//loc需解码转换为中文
	    var url = window.location.search,
	    matchType = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));
	    console.log(url);console.log(matchType);
	 //若matchType为空则不进行搜索
	 if(matchType){
		e({matchType:matchType});		 
	 }
	 //立即初始化比赛类型
	 initMatchType();
	 //点击高级场地搜索
	 $("#advMatchSearchButton").click(function(){
		 e({});
	 });
	 //点击大类比赛类型获得具体比赛类型
	 $(".selectMatchType").change(function() {
	  	selectMatchType($(this));
	 });
	 //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
	 $(".selectParticularMatchType").change(function() {
	    selectParticularMatchType($(this));
	 });
	 //日期选择器 bootstrap.datepicker
	  $("#inputMatchTimefrom").datetimepicker({
	      language: 'zh-CN',
	      format: 'yyyy-mm-dd',
	      minView: 2,
	      autoclose: true,
	      todayBtn: 'linked',
	  }).on('changeDate',function(ev){
		  if( ($("#inputMatchTimefrom").val() > $("#inputMatchTimeto").val()) ||( $("#inputMatchTimeto").val() == ""))
	      $("#inputMatchTimeto").datetimepicker('setStartDate',$("#inputMatchTimefrom").val()).val($("#inputMatchTimefrom").val());
	  });
	  $("#inputMatchTimeto").datetimepicker({
	      language: 'zh-CN',
	      format: 'yyyy-mm-dd',
	      minView: 2,
	      autoclose: true,
	  }).on('changeDate',function(ev){
	      console.log(ev);
		  if( ($("#inputMatchTimefrom").val() > $("#inputMatchTimeto").val()) ||( $("#inputMatchTimeto").val() == ""))
		  $("#inputMatchTimeto").datetimepicker('setStartDate',$("#inputMatchTimefrom").val()).val($("#inputMatchTimefrom").val());
	  });
  });
  </script>  
 </body>
</html>