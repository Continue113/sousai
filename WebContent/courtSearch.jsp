<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>场地搜索 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网场地搜索页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
.courtSearch .matchSearch-remind {margin-top:5px;}
.courtSearch .matchSearch-remind i{vertical-align: -1px;}
.courtSearch .matchSearch-remind span{color:#62c462;font-weight: bold;}
/** 场地列表 **/
.courtBoxs{border: 1px solid #ccc;margin: 10px 0;float: left;padding-bottom: 20px;}
.courtBox{margin: 10px 0 0 10px;float: left;}
.courtBox .courtBox-img{float:left;border: 1px solid #ccc;}
.courtBox .courtBox-img img{width: 110px;height: 85px;}
.courtBox .courtBox-block{float: right;margin-left: 10px;}
.courtBox .courtBox-block p{margin-bottom: 0;font-size: 12px;}
.courtBox .courtBox-block .courtBox-title{background-color: #f5f5f5;border: 1px solid #ccc;border-bottom: 0;padding:2px 5px;}
.courtBox .courtBox-block .courtBox-title .btn-mini{line-height: 16px;}
.courtBox .courtBox-block ul{clear:both;padding: 0;margin-bottom: 0;background-color: #fff;border: 1px solid #ccc;-webkit-border-radius: 0;-moz-border-radius: 0;border-radius: 0;}
.courtBox .courtBox-block ul > li{padding-left:5px;vertical-align: middle;text-align: center;border-left: 1px solid #ccc;}
.courtBox .courtBox-block .courtBox-address{width:200px;border-left: 0;}
.courtBox .courtBox-block .courtBox-info{width:110px;}
.courtBox .courtBox-block .courtBox-record{width:80px;}
.courtBox .courtBox-block .courtBox-evaluation{width:200px;}
  </style>
 </head> 
 <body class="courtSearch"> 
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
      <p><i class="icon-th-list"></i>&nbsp;找到相关场地&nbsp;<span>获取数据中...</span>&nbsp;个&nbsp;&nbsp;&nbsp;使用&nbsp;<a href="courtSearchAdv.jsp">“高级搜索”</a>&nbsp;搜索场地</p> 
     </div> 
     <!-- /searchbox-ad -->
     <div id="myCourt" class="tab-pane "> 
      <!-- courts -->
      <div class="courts" id="courtsList">
       <!-- panel --> 
       <div class="panel-top"></div>
       <!-- courtBoxs -->
       <div class="courtBoxs"></div>
       <!-- panel --> 
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav>
	   </div>
      </div>
      </div> 
     </div> 
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
  <script id="barcourt-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <div class="courtBox"  data-info="{{data}}"> 
         <!-- img --> 
         <div class="courtBox-img"> 
          <img src="img/defaultImg.png" alt="" title="" /> 
         </div> 
         <!-- data --> 
         <div class="courtBox-block"> 
          <div class="courtBox-title"> 
           <a target="_blank" href="courtSearchDetail.jsp?id={{id}}">{{name}}</a> 
           <a target="_blank" href="courtSearchDetail.jsp?id={{id}}" class="btn btn-mini pull-right">查看详细</a> 
          </div> 
          <ul class="breadcrumb"> 
           <li class="courtBox-address">{{address}}</li> 
           <li class="courtBox-info "><p>{{courtType}}</p><p>{{#if tableNum}}赛场{{tableNum}}个{{else}}暂无赛场数据{{/if}}</p><p>{{#if tel}}电话：{{tel}}{{else}}暂无电话信息{{/if}}</p></li> 
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
	  var args = argso;
	  args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
	  args.rows = args.rows||25;
	  args.content = args.content||"";
	  
			$("#ajaxState .load").show();
			$(".courtBoxs").show();
			$(".panel-top").hide();
			$("#ajaxState .noresult").hide();
						  
		      $.ajax({
		          type: "POST",
		          url: "courtSearch",
		          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		          data: args,
		          dataType: "json",
		          success: function(rspdata) {
			        	//设置搜索结果数量
			        	$(".search-remind span").html(rspdata.count);
			        	var target = $(".courtBoxs"),template = Handlebars.compile($('#barcourt-template').html());
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
			          	        dataType: "json",
			          	        /* success: function(rspdata) {
			          	        	console.log(rspdata);
			          	        },
			          	        error: function(jqXHR,textStatus,errorThrown){
			          	        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
			          	        }, */
			          	        });
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
			          	        dataType: "json",
			          	        /* success: function(rspdata) {
			          	        	console.log(rspdata);
			          	        },
			          	        error: function(jqXHR,textStatus,errorThrown){
			          	        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
			          	        }, */
			          	        });
			          	  	 if(!evaluationNumb.responseJSON.length){
			          	  		 return 0;
			          	  	 }
			          	  	 return evaluationNumb.responseJSON.length;
			              });
			              //清空tbody并填入数据
			              target.empty().html(template(rspdata.body));
			              $("#ajaxState .load").hide();
			              if(target.find("div.courtBox").length == 0){
			              $("#ajaxState .noresult").show();
			              $(".panel-top").hide();
			              target.hide();
			              }
			              //字数限制，溢出省略 
			              $(".courtBox-address").wordLimit(20);
			              $(".courtBox-evaluation p").wordLimit();
			    	      pages(rspdata.count, args.currentPage, args.rows);
		          },
		          error: function(jqXHR,textStatus,errorThrown){
		        	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
		              sousaiRemindDialog("抱歉。ajax错误。");
		          },
		        });
  }

  $(function(){
	  //设置场地模糊搜索为active
	  $("#searchbox-tab").find("li:eq(0)").removeClass("active").end().find("li:eq(1)").addClass("active");
	  $("#searchbox-match").removeClass("active");
	  $("#searchbox-court").addClass("active");
		//loc需解码转换为中文
	    var url = window.location.search,
	    urikv = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));
	  	//将urikv填入当前的场地模糊搜索框
	    $("#searchbox-court input[type='text']").val(urikv);
	  	
	    if(urikv){
			e({content:urikv});
	    }else{
			sousaiRemindDialog("输入搜索关键字问为空，请重新填写。");
			//window.location.herf = window.location;
	    }
    //鼠标hover matchbox
    $(".courtBoxs ").on('mouseenter','div.courtBox',function(){
    	      $('div.courtBox').removeClass("box-active");
    	      $(this).addClass("box-active");
    });
  });
  </script>  
 </body>
</html>