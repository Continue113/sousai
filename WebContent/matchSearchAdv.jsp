<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>比赛搜索 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网比赛搜索页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
  .matchState > .controls > .checkbox{padding-top: 5px;}
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
/** 比赛排序 **/
.panel-top{margin-top: 5px;}
  </style>
 </head> 
 <body class="matchSearch">
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset2"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a> 
    </div> 
    <s:include value="searchbox.jsp" />
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
        <legend>比赛搜索</legend> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="keyValue" placeholder="请输入搜索关键词" /> 
          <a href="courtSearch.jsp" class="btn btn-small pull-right">转换到场地搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
         <div class="controls"> 
            <select class="selectMatchType" name="mcId"><option value=0>请选择比赛类型</option></select>
            <select class="selectParticularMatchType"><option value=0>请先选择比赛大类</option></select>
            <input class="hide" id="particularMatchType" name="court.matchType"/>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"/></label>
           </div> 
        </div> 
        <div class="control-group matchState"> 
         <label class="control-label" for="matchState">比赛状态：</label> 
         <div class="controls form-inline"> 
          <label class="checkbox"><input type="checkbox" name="matchState_applying" checked="checked" />报名中&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchState_playing" checked="checked" />比赛中&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchState_played" checked="checked" />已结束&nbsp;&nbsp;</label> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputMatchTimefrom">比赛时间：</label> 
         <div class="controls form-inline"> 
          <div class="input-append"> 
           <input type="text" class="input-small height-mini" id="inputMatchTimefrom" placeholder="请选择日期" /> 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择日期"><i class="icon-calendar"></i></span> 
          </div> 
          <label for="to">—</label> 
          <div class="input-append"> 
           <input type="text" class="input-small" id="inputMatchTimeto" placeholder="请选择日期" /> 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择日期"><i class="icon-calendar"></i></span> 
          </div> 
          <label class="checkbox"><input type="checkbox" name="matchTime_days" class="matchTime" />工作日&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchTime_saturday" class="matchTime" />星期六&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchTime_sunday" class="matchTime" />星期日&nbsp;&nbsp;</label> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">比赛地点：</label> 
         <div class="controls form-inline"> 
          <!-- 选择省市区三级下拉框 --> 
          <s:include value="selectPCC.jsp" />
          <input type="submit" value="搜&nbsp;&nbsp;索" class="btn btn-success btn-small pull-right" /> 
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
  <s:include value="footer.jsp" />
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/bootstrap-datetimepicker.min.js"></script>
  <script src="js/bootstrap-datetimepicker.zh-CN.js"></script> 
  <script src="js/jquery.wordLimit.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
    {{#each this}}

       <div class="matchBox"  data-info="{{data this}}>
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="matchSearchDetail.jsp?id={{id}}">{{name}}</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">{{publishTime}}</span></span> 
         </div>
         <ul class="breadcrumb">
          <li class="matchBox-time">
           <div class="matchBox-beginTime">{{matchStartTime}}<p>星期五</p></div> 
           <div class="line">&nbsp;-&nbsp;</div> 
           <div class="matchBox-endTime">{{matchDeadline}}<p>星期日</p></div>
		  </li>
          <li class="matchBox-court "><a href="courtSearchDetail.jsp?id={{courtId}}">场地ID：{{courtId}}</a></li> 
          <li class="matchBox-state ">报名中</li> 
          <li class="matchBox-info "><a href="matchSearchDetail.jsp?id={{id}}">{{{matchIntroduction}}}</a></li> 
          <li class="matchBox-btns "><a href="markMatch({id})" class="btn btn-mini">收藏比赛</a><a href="matchSearchDetail.jsp?id={{id}}" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function e(crtPage,rs,orderbycol,isasc,kv){
	  advCourtSearch(crtPage,rs,orderbycol,isasc,kv);
  }

  //高级比赛搜索函数
  function advCourtSearch(crtPage,rs,orderbycol,isasc,kv){

		$("#ajaxState .load").show();
		$(".matchBoxs").show();
		$(".panel-top").show();
		$("#ajaxState .noresult").hide();
		console.log("start");
		
		  //获取地区region和regionId 需先用这个建立此对象 然后才能将数据放入，否则后被覆盖
		  var data = getRegion();
		  data.keyValue = kv||$("#keyValue").val(); //若无kv 则默认为 当前的keyValue的值
		  data.matchType = $("select.selectParticularMatchType option:selected").attr("value") == "0" ? null : $("select.selectParticularMatchType option:selected").text(); //设置若比赛详细类型为初始值则为null
		  data.matchState = null;
		  data.matchTimefrom = $("#inputMatchTimefrom").val()||null;
		  data.matchTimeto = $("#inputMatchTimeto").val()||null;
		  data.matchDate = null;
		  
		  data.currentPage = crtPage||$("ul.pagination li.active a").html()||1;//若无当前页数，则为当前的页数 否则默认为为1
		  data.rows = rs||25;//若无行数，则默认为 25行
		  data.orderByCol = orderbycol||$(".sort .current").attr("data-orderbycol"); //若无排序依据，则默认为当前的排序依据方式
		  data.isAsc = isasc||$(".sort .current").attr("data-isasc"); //若无排序方向，则默认为当前的排序方向
		  console.log(data);
		  
	      /*$.ajax({
	          type: "POST",
	          url: "getMatchByP",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          data: data,
	          dataType: "json",
	          success: function(rspdata) {
	        	  console.log(rspdata.count);
	        	  console.log(rspdata);
		       	  //设置搜索结果数量
		          $(".search-remind span").html(rspdata.count);
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(v){
			    	  //将当前对象转化为字符串，保存在data-info中
			    	  console.log(v);
			    	  var v1 = JSON.stringify(v);
			    	  //console.log("v1:"+v1);
			    	  return v1;
			      });
			      target.empty().show().html(template(rspdata.body));
			      $("#ajaxState .load").hide();
			      console.log("stop");
			      //出错或无结果
			      //target.empty(); //清空tbody
			      if(target.find("div.matchBox").length == 0){
			      $("#ajaxState .noresult").show();
			      console.log("无结果");
			      target.hide();
			      }
		    	    //字数限制，溢出省略
		    	    $(".matchBox-court").wordLimit(20);
		    	    $(".matchBox-info > a").wordLimit(28);
				  pages(rspdata.count,crtPage,rs);
	          },
	          error: function(jqXHR,textStatus,errorThrown){
	        	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	            sousaiRemindDialog("抱歉。ajax错误。");
	          },
	        });*/
	}  
  $(function(){
	 //搜索栏模糊搜索
	 e();
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
    //鼠标hover matchbox
    $(".matchBoxs ").on('mouseenter','div.matchBox',function(){
    	      $('div.matchBox').removeClass("box-active");
    	      $(this).addClass("box-active");
    });
  });
  </script>  
 </body>
</html>