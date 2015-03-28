<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>场地高级搜索 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网场地高级搜索页面" >
  <s:include value="seg-meta.jsp"/>
 </head> 
 <body class="courtSearch"> 
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
      <p><i class="icon-th-list"></i>&nbsp;找到相关场地&nbsp;<span>获取数据中...</span>&nbsp;个</p> 
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal" name="advCourtSearch" id="advCourtSearch"> 
       <fieldset>
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="keyValue" name="keyValue" placeholder="请输入搜索关键词" > 
          <a href="matchSearch.jsp" class="btn btn-small pull-right">转换到比赛搜索界面</a> 
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
        <div class="control-group"> 
         <label class="control-label" for="courtType">场地类型：</label> 
         <div class="controls">
            <select class="selectCourtType" name="court.courtTypeId"><option value=0>请先选择比赛类型</option></select>
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">场地地点：</label> 
         <div class="controls form-inline"> 
          <!-- 选择省市区三级下拉框 -->  
          <s:include value="seg-selectPCC.jsp"/>
          <input type="button" value="搜&nbsp;&nbsp;索" class="btn btn-success btn-small pull-right" id="advCourtSearchButton"> 
         </div> 
        </div> 
       </fieldset> 
      </form> 
     </div> 
     <!-- /searchbox-ad -->
     <div id="myCourt" class="tab-pane "> 
      <!-- courts -->
      <div class="courts" id="courtsList">
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
	   </div></div>
       <!-- courtBoxs -->
       <div class="courtBoxs"></div>
       <!-- panel --> 
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
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
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <!-- handlebars template -->
  <script id="court-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <div class="courtBox"  data-info="{{data}}"> 
         <!-- img --> 
         <div class="courtBox-img"> 
          <img src="img/defaultImg.png" alt="" title="" > 
         </div> 
         <!-- data --> 
         <div class="courtBox-block"> 
          <div class="courtBox-title"> 
           <a target="_blank" href="courtSearchDetail.jsp?id={{id}}">{{name}}</a> 
           <a target="_blank" href="courtSearchDetail.jsp?id={{id}}" class="btn btn-mini pull-right">查看详细</a> 
          </div> 
          <ul class="breadcrumb"> 
           <li class="courtBox-address">{{addr}}</li> 
           <li class="courtBox-info"><p>{{courtType}}</p><p>{{#if tableNum}}赛场{{tableNum}}个{{else}}暂无赛场数据{{/if}}</p></li> 
		   <li class="courtBox-tel">电话：<p>{{#if tel}}{{tel}}{{else}}暂无电话信息{{/if}}</p></li>
           <li class="courtBox-record">举办比赛次数<p><span class="courtBox-recordNumb">{{recordNumb}}</span>次</p></li> 
           <li class="courtBox-evaluation">评论次数<p><span class="courtBox-evaluationNumb">{{evaluationNumb}}</spn>次</p></li>
		  </ul> 
         </div> 
        </div>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
//高级场地搜索函数
function e(argso){
	  //设置默认参数
	  var args=argso;
	  args.region = args.region||getRegion().region;
	  args.regionId = args.regionId||getRegion().regionId; //暂时未用到
	  args.keyValue = args.keyValue||$("#keyValue").val()||"";
	  args.matchType = args.matchType||($("select.selectParticularMatchType option:selected").attr("value") == "0" ? null : $("select.selectParticularMatchType option:selected").text());
	  args.courtTypeId = args.courtTypeId||($("select.selectCourtType option:selected").attr("value") == "0" ? null : $("select.selectCourtType option:selected").attr("value"));
	  args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
	  args.rows = args.rows||25;
	  args.orderByCol = args.orderByCol||$(".sort .current").attr("data-orderbycol")||"name";
	  args.isAsc = args.isAsc||$(".sort .current").attr("data-isasc")||true;
		  
	$("#ajaxState .load").show();
	$(".courtBoxs").show();
	$(".panel-top").show();
	$("#ajaxState .noresult").hide();
	console.log(args);
	
	  $.ajax({
	        url: "getCourtByP",
	        data: args,
	        success: function(rspdata) {
	        	console.log(rspdata);
	        	//设置搜索结果数量
	        	$(".search-remind span").html(rspdata.count);
	        	var target = $(".courtBoxs"),template = Handlebars.compile($('#court-template').html());
	        	Handlebars.registerHelper("data",function(){
	                return JSON.stringify(this);
	              });
	        	Handlebars.registerHelper("recordNumb",function(){
	          	  	var recordNumb = $.ajax({
	          	        url: "getMatchByCourtId",
	          	        data: {
	          	          courtId: this.id,
	          	          currentPage: 1,
	          	          rows: 1
	          	        },
	        	        async: false, //设置异步为false,解决ajax异步不能设置全局变量的问题
	          	        });
	          	  	 if(!recordNumb.responseJSON.count){
	          	  		 return 0;
	          	  	 }
		          	 return recordNumb.responseJSON.count;
	              });
	        	Handlebars.registerHelper("evaluationNumb",function(){
	          	  	 var evaluationNumb = $.ajax({
	          	        url: "showMsgs",
	          	        data: {courtId: this.id},
	        	        async: false, //设置异步为false,解决ajax异步不能设置全局变量的问题
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
	              target.hide();
	              }
	              //字数限制，溢出省略 
	              $(".courtBox-address").wordLimit();
	              $(".courtBox-tel p").wordLimit();
	    	      pages(rspdata.count,args.currentPage,args.rows);
	        }
	      });
}

  $(function(){
	  //设置场地模糊搜索为active
	  $("#searchbox-tab").find("li:eq(0)").removeClass("active").end().find("li:eq(1)").addClass("active");
	  $("#searchbox-match").removeClass("active");
	  $("#searchbox-court").addClass("active");
	//ajax接收所有的场地 不需要进入页面自动搜索
	//e({});
	//点击高级场地搜索
	$("#advCourtSearchButton").click(function(){
		e({});
	});
    
    //立即初始化比赛类型
    initMatchType();
    
    //点击大类比赛类型获得具体比赛类型
    $(".selectMatchType").change(function() {
    	selectMatchType($(this));
    });
    
    //点击比赛类型获取相应场地类型 或者 选择其他出现输入框
    $(".selectParticularMatchType").change(function() {
    	selectParticularMatchType($(this));
    });

    
  });
  </script>  
 </body>
</html>