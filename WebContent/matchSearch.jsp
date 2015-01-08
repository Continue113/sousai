<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>比赛搜索 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网比赛搜索页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
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
      <p><i class="icon-th-list"></i>&nbsp;找到相关比赛&nbsp;<span>1230</span>&nbsp;场</p> 
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal"> 
       <fieldset> 
        <legend>比赛搜索</legend> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="searchKey" placeholder="请输入搜索关键词" /> 
          <a href="courtSearch.jsp" class="btn btn-small pull-right">转换到场地搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
         <div class="controls"> 
          <s:include value="selectMatchType.jsp" />
          <!-- /选择比赛类型 --> 
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
         <label class="control-label" for="matchTime">比赛时间：</label> 
         <div class="controls form-inline"> 
          <div class="input-append"> 
           <input type="text" class="input-small height-mini" id="matchTimefrom" name="from" placeholder="请选择开始日期" /> 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择开始日期"><i class="icon-calendar"></i></span> 
          </div> 
          <label for="to">—</label> 
          <div class="input-append"> 
           <input type="text" class="input-small" id="matchTimeto" name="to" placeholder="请选择结束日期" /> 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="一天以内结束的比赛，日期为同一天"><i class="icon-calendar"></i></span> 
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
          <input type="submit" value="搜&nbsp;&nbsp;索" class="btn span2 btn-success btn-small pull-right" /> 
         </div> 
        </div> 
       </fieldset> 
      </form> 
     </div> 
     <!-- /searchbox-ad --> 
     <div class="matchs" id="matchsList"> 
      <!-- panel --> 
      <div class="panel-top"></div>
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
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script> 
  <script src="js/jquery.ui.datepicker-zh-CN.js"></script> 
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
          <li class="matchBox-btns "><a href="javascript:void(0)" class="btn btn-mini">收藏比赛</a><a href="javascript:void(0)" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  //搜索栏模糊搜索
	function search(){
	  	$("#ajaxState .load").show();console.log("start");
	    var url = window.location.search,
	    loc = url.substring(url.lastIndexOf('=')+1, url.length),
		crtPage = 1,rs = 25,kv = loc;
	    if(kv==""){
			//若为空则不访问action，刷新原页面
			alert("输入搜索关键字问空，"+window.location);
			window.location.herf = window.location;
	    	
	    }else{
	    	
	      $.ajax({
	          type: "POST",
	          url: "mainSearch",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          data: {content:kv},
	          dataType: "json",
	          success: function(rspdata) {
	        	  sousaiRemindDialog(rspdata);console.log(rspdata.count);console.log(rspdata);
	        	  
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(v){
			    	  //将当前对象转化为字符串，保存在data-info中
			    	  console.log(v);
			    	  var v1 = JSON.stringify(v);
			    	  //console.log("v1:"+v1);
			    	  return v1;
			      });
			      target.empty().show(); //清空tbody
		    	  target.html(template(rspdata));
			      $("#ajaxState .load").hide();console.log("stop");
			      //出错或无结果
			      //target.empty(); //清空tbody
			      if(target.find("div.matchBox").length == 0){
			      $("#ajaxState .noresult").show();console.log("无结果");
			      target.hide();
			      }
		    	    //字数限制，溢出省略
		    	    $(".matchBox-court").wordLimit(20);
		    	    $(".matchBox-info > a").wordLimit(28);
				  //pages(rspdata.count,crtPage,rs);
	          },
	          error: function() {
	            sousaiRemindDialog("抱歉。ajax错误。");
	          },
	        });
	    }
	}  
  $(function(){
	//搜索栏模糊搜索
	search();
     //日期选择器
     $( "#matchTimefrom" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#matchTimeto" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#matchTimefrom" ).datepicker( "option", "maxDate", selectedDate );
      }
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