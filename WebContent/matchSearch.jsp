<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>比赛搜索 &middot; 搜赛网</title> 
  <meta name="description" content="搜赛网比赛搜索页面" >
  <s:include value="seg-meta.jsp"/>
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
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
    {{#each this}}

       <div class="matchBox"  data-info="{{data}}>
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a target="_blank" href="matchSearchDetail.jsp?id={{id}}">{{name}}</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">{{publishTime}}</span></span> 
         </div>
         <ul class="breadcrumb">
          <li class="matchBox-time">
           <div class="matchBox-beginTime">{{matchStartTime}}<p>{{beginWeek}}</p></div> 
           <div class="line">&nbsp;-&nbsp;</div> 
           <div class="matchBox-endTime">{{matchDeadline}}<p>{{endWeek}}</p></div>
		  </li>
          <li class="matchBox-court "><a target="_blank" href="courtSearchDetail.jsp?id={{courtId}}">{{courtName}}</a></li> 
          <li class="matchBox-state ">{{state}}</li> 
          <li class="matchBox-info "><a target="_blank" href="matchSearchDetail.jsp?id={{id}}">{{{matchIntroduction}}}</a></li> 
          <li class="matchBox-btns "><a href="markMatch({id})" class="btn btn-mini">收藏比赛</a><a target="_blank" href="matchSearchDetail.jsp?id={{id}}" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
                            
    {{/each}}
  </script>
  <script>
  //定义函数
    //定义函数
  function e(argso){
	  var args = argso;
	  args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
	  args.rows = args.rows||25;
	  args.content = args.content||"";
	  
		$("#ajaxState .load").show();
		$(".matchBoxs").show();
		$(".panel-top").hide();
		$("#ajaxState .noresult").hide();
    	
	      $.ajax({
	          url: "mainSearch",
	          data: args,
	          success: function(rspdata) {
	        	  console.log(rspdata.count);console.log(rspdata);
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
		    	  $(".matchBox-court").wordLimit(20);
		    	  $(".matchBox-info > a").wordLimit(28);
				  pages(rspdata.count,args.currentPage,args.rows);
	          }
	        });
	  
  }
  $(function(){
		//loc需解码转换为中文
	    var url = window.location.search,
	    urikv = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));
	  	//将urikv填入当前的场地模糊搜索框
	    $("#searchbox-match input[type='text']").val(urikv);
	  	alert(urikv);
	    if(urikv){
			e({content:urikv});
	    }else{
			sousaiRemindDialog("输入搜索关键字问为空，请重新填写。");
	    }
  });
  </script>  
 </body>
</html>