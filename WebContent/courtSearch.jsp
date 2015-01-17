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
/** 场地排序 **/
.panel-top{margin-top: 5px;}
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
      <p><i class="icon-th-list"></i>&nbsp;找到相关场地&nbsp;<span>获取数据中...</span>&nbsp;个</p> 
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal" name="advCourtSearch" id="advCourtSearch"> 
       <fieldset> 
        <legend>场地搜索</legend> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="keyValue" name="keyValue" placeholder="请输入搜索关键词" /> 
          <a href="matchSearch.jsp" class="btn btn-small pull-right">转换到比赛搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
           <div class="controls"> 
            <select class="selectMatchType" name="mcId">
              <option value=0>请选择比赛类型</option>
            </select>
            <select class="selectParticularMatchType hide"></select>
            <input class="hide" id="particularMatchType" name="court.matchType"/>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：</label>
            <input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"/>
           </div>
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="courtType">场地类型：</label> 
         <div class="controls"> 
          <!-- 选择场地类型 --> 
            <select class="selectCourtType" name="court.courtTypeId">
              <option value=0>请先选择比赛类型</option>
            </select>
          <!-- /选择场地类型 --> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">场地地点：</label> 
         <div class="controls form-inline"> 
          <!-- 选择省市区三级下拉框 -->  
          <s:include value="selectPCC.jsp" />
          <input type="button" value="搜&nbsp;&nbsp;索" class="btn btn-success btn-small pull-right" id="advCourtSearchButton"/> 
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
  <s:include value="footer.jsp" />
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <!-- handlebars template -->
  <script id="court-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <div class="courtBox"  data-info="{{data this}}"> 
         <!-- img --> 
         <div class="courtBox-img"> 
          <img src="img/defaultImg.png" alt="" title="" /> 
         </div> 
         <!-- data --> 
         <div class="courtBox-block"> 
          <div class="courtBox-title"> 
           <a href="courtSearchDetail.jsp?id={{id}}">{{name}}</a> 
           <a href="courtSearchDetail.jsp?id={{id}}" class="btn btn-mini pull-right">查看详细</a> 
          </div> 
          <ul class="breadcrumb"> 
           <li class="courtBox-address">{{addr}}</li> 
           <li class="courtBox-info "> <p>{{courtType}}</p> <p>赛场<span class="courtBox-infoNumb">{{tableNum}}</span>个</p> <p>{{tel}}</p> </li> 
           <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">1</span>次</p></li> 
           <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>但行代价昂贵你空间啊好烦你撒谎吃饭了空间啊干那</span></p> <p><span>2013-10-10</span>:<span>撒了你刚才发K 524545呵呵发那个给UI HM</span></p> <p><span>2013-10-10</span>:<span>4256605JKHGCFYUSDA是都还没后 俺哥啊 俺哥爱戴啊</span></p></li> 
          </ul> 
         </div> 
        </div>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function e(crtPage,rs,orderbycol,isasc,sc,kv){
	  //设置场地模糊搜索为active
	  $("#searchbox-tab").find("li:eq(0)").removeClass("active").end().find("li:eq(1)").addClass("active");
	  $("#searchbox-match").removeClass("active");
	  $("#searchbox-court").addClass("active");
      console.log(crtPage,rs,orderbycol,isasc,sc,kv);
		//loc需解码转换为中文
	    var url = window.location.search,
	    urikv = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));
	  	//将urikv填入当前的场地模糊搜索框
	    $("#searchbox-court input[type='text']").val(urikv);
	  	
	    if(urikv){
			//若为空则不访问action，刷新原页面
			alert("输入搜索关键字不为空，调用模糊搜索");
			//window.location.herf = window.location;
			barSearch(urikv);
	    }else{
			alert("输入搜索关键字问空，调用advCourtSearch");
	    	//kv不存在 为undefined 说明是从排序过来的。则直接调用
	    	advCourtSearch(crtPage,rs,orderbycol,isasc,sc,kv);
	    }	  
  }

  //搜索栏模糊搜索
	function barSearch(kv){
	  	$("#ajaxState .load").show();
	  	console.log("start");
	      $.ajax({
	          type: "POST",
	          url: "courtSearch",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          data: {content:kv},
	          dataType: "json",
	          success: function(rspdata) {
	        	  console.log(rspdata.count);
	        	  console.log(rspdata);
		        	//设置搜索结果数量
		        	$(".search-remind span").html(rspdata.count);
		        	var target = $(".courtBoxs"),template = Handlebars.compile($('#court-template').html());
		            Handlebars.registerHelper("data",function(v){
		                //将当前对象转化为字符串，保存在data-info中
		                console.log(v);
		                var v1 = JSON.stringify(v);
		                //console.log("v1:"+v1);
		                return v1;
		              });
		              //清空tbody并填入数据
		              target.html(template(rspdata.body));
		              $("#ajaxState .load").hide();console.log("stop");
		              //出错或无结果
		              //target.empty(); //清空tbody
		              if(target.find("div.courtBox").length == 0){
		              $("#ajaxState .noresult").show();
		              $(".panel-top").hide();
		              target.hide();
		              console.log("无结果");
		              }
		              //字数限制，溢出省略 
		              $(".courtBox-address").wordLimit(20);
		              $(".courtBox-evaluation p").wordLimit();

		    	      pages(rspdata.count,1,25);
	          },
	          error: function(jqXHR,textStatus,errorThrown){
	        	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	            sousaiRemindDialog("抱歉。ajax错误。");
	          },
	        });
	}  
//获得场地的省市区信息  
function getRegion(){
	  //设置region的值，若只有省级 则 如 北京市-  若有市级 则 北京市-北京市- 若有区级则为 北京市-北京市-东城区 否则传""
	    var data={};
	    if( $(".form-inline > .selectCountry option:selected").attr("value") !=0 ){
	    	data.regionId = $(".form-inline > .selectCountry option:selected").attr("data-regionid");
	      	data.region = $(".form-inline > .selectProvince option:selected").text() + "-" + $(".form-inline > .selectCity option:selected").text() + "-" + $(".form-inline > .selectCountry option:selected").text();
	    }else if( $(".form-inline > .selectCity option:selected").attr("value") !=0 ){
	    	data.regionId = $(".form-inline > .selectCity option:selected").attr("data-regionid");
	      	data.region = $(".form-inline > .selectProvince option:selected").text() + "-" + $(".form-inline > .selectCity option:selected").text() + "-";
	    }else if( $(".form-inline > .selectProvince option:selected").attr("value") !=0 ){
	    	data.regionId = $(".form-inline > .selectProvince option:selected").attr("data-regionid");
	      	data.region = $(".form-inline > .selectProvince option:selected").text() + "-";
	    }else{
	    	data.regionId = "未选择省市区";
	  	  	data.region = null;
	    }
	    return data;
}
//高级场地搜索函数
function advCourtSearch(crtPage,rs,orderbycol,isasc,sc,kv){
	$("#ajaxState .load").show();
	$(".courtBoxs").show();
	$(".panel-top").show();
	$("#ajaxState .noresult").hide();
	console.log("start");
	  //获取地区region和regionId 需先用这个建立此对象 然后才能将数据放入，否则后被覆盖
	  var data = getRegion();

	  data.keyValue = kv||$("#keyValue").val(); //若无kv 则默认为 当前的keyValue的值
	  data.matchType = $("select.selectParticularMatchType option:selected").attr("value") == "0" ? null : $("select.selectParticularMatchType option:selected").text(); //设置若比赛详细类型为初始值则为null
	  data.courtTypeId = $("select.selectCourtType option:selected").attr("value") == "0" ? null : $("select.selectCourtType option:selected").attr("value"); //设置若场地类型为初始值则为null
	  data.currentPage = crtPage||$("ul.pagination li.active a").html()||1;//若无当前页数，则为当前的页数 否则默认为为1
	  data.rows = rs||25;//若无行数，则默认为 25行
	  data.orderByCol = orderbycol||$(".sort .current").attr("data-orderbycol"); //若无排序依据，则默认为当前的排序依据方式
	  data.isAsc = isasc||$(".sort .current").attr("data-isasc"); //若无排序方向，则默认为当前的排序方向
	  console.log(data);
	  //发送数据到服务器
	  $.ajax({
	        type: "POST",
	        url: "getCourtByP",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        data: data,
	        dataType: "json",
	        success: function(rspdata) {
	        	console.log(rspdata);
	        	//设置搜索结果数量
	        	$(".search-remind span").html(rspdata.count);
	        	var target = $(".courtBoxs"),template = Handlebars.compile($('#court-template').html());
	            Handlebars.registerHelper("data",function(v){
	                //将当前对象转化为字符串，保存在data-info中
	                console.log(v);
	                var v1 = JSON.stringify(v);
	                //console.log("v1:"+v1);
	                return v1;
	              });
	              //清空tbody并填入数据
	              target.html(template(rspdata.body));
	              $("#ajaxState .load").hide();console.log("stop");
	              //出错或无结果
	              //target.empty(); //清空tbody
	              if(target.find("div.courtBox").length == 0){
	              $("#ajaxState .noresult").show();
	              $(".panel-top").hide();
	              target.hide();
	              console.log("无结果");
	              }
	              //字数限制，溢出省略 
	              $(".courtBox-address").wordLimit(20);
	              $(".courtBox-evaluation p").wordLimit();

	    	      pages(rspdata.count,data.currentPage,data.rows);
	        },
	        error: function(jqXHR,textStatus,errorThrown){
	        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	          	sousaiRemindDialog("抱歉，获取比赛类型出错了。");
	        },
	      });
}

  $(function(){
	//ajax接收所有的场地
	e();
	//点击高级场地搜索
	$("#advCourtSearchButton").click(function(){
		advCourtSearch();
	});
    //鼠标hover matchbox
    $(".courtBoxs ").on('mouseenter','div.courtBox',function(){
    	      $('div.courtBox').removeClass("box-active");
    	      $(this).addClass("box-active");
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