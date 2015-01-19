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
      <p><i class="icon-th-list"></i>&nbsp;找到相关比赛&nbsp;<span>获取数据中...</span>&nbsp;场&nbsp;&nbsp;&nbsp;使用&nbsp;<a href="courtSearchAdv.jsp">“高级搜索”</a>&nbsp;搜索比赛</p> 
     </div>
     <div class="matchs" id="matchsList"> 
      <!-- panel --> 
      <div class="panel-top"></div>
      <div class="matchBoxs"></div>
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
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
    //定义函数
  function e(crtPage,rs){
		//loc需解码转换为中文
	    var url = window.location.search,
	    urikv = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));
	  	//将urikv填入当前的场地模糊搜索框
	    $("#searchbox-match input[type='text']").val(urikv);
	  	alert(urikv);
	    if(urikv){
			barSearch(crtPage,rs,urikv);
	    }else{
			sousaiRemindDialog("输入搜索关键字问为空，请重新填写。");
			//window.location.herf = window.location;
	    }
  }

  //搜索栏模糊搜索
	function barSearch(crtPage,rs,kv){
		$("#ajaxState .load").show();
		$(".matchBoxs").show();
		$(".panel-top").hide();
		$("#ajaxState .noresult").hide();
		
		crtPage = crtPage||$("ul.pagination li.active a").html()||1;//若无当前页数，则为当前的页数 否则默认为为1
		rows = rs||25;//若无行数，则默认为 25行

    	
	      $.ajax({
	          type: "POST",
	          url: "mainSearch",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          data: {currentPage:crtPage,rows:rs,content:kv},
	          dataType: "json",
	          success: function(rspdata) {
	        	  console.log(rspdata.count);
	        	  console.log(rspdata);
		       	  //设置搜索结果数量
		          $(".search-remind span").html(rspdata.count);
			      var target = $(".matchBoxs"),template = Handlebars.compile($('#match-template').html());
			      Handlebars.registerHelper("data",function(v){
			    	  //将当前对象转化为字符串，保存在data-info中
			    	  //console.log(v);
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
	        });
	}
  $(function(){
	//搜索栏模糊搜索
	e();
    //鼠标hover matchbox
    $(".matchBoxs ").on('mouseenter','div.matchBox',function(){
    	      $('div.matchBox').removeClass("box-active");
    	      $(this).addClass("box-active");
    });
  });
  </script>  
 </body>
</html>