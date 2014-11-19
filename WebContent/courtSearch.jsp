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
      <p><i class="icon-th-list"></i>&nbsp;找到相关场地&nbsp;<span>1230</span>&nbsp;个</p> 
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal" action="" method="post"> 
       <fieldset> 
        <legend>场地搜索</legend> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="searchKey" placeholder="请输入搜索关键词" /> 
          <a href="matchSearch.jsp" class="btn btn-small pull-right">转换到比赛搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
         <div class="controls"> 
          <s:include value="selectMatchType.jsp" />
          <!-- /选择比赛类型 --> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="courtType">场地类型：</label> 
         <div class="controls"> 
          <!-- 选择场地类型 --> 
          <select name="courtType"> <option value="0">请选择场地类型</option> <option value="courtType-inner">室内</option> <option value="courtType-outer">室外</option> <option value="courtType-zq">体育局</option> <option value="courtType-pp">俱乐部</option> <option value="courtType-lq">社区</option> <option value="courtType-zq">单位</option> <option value="courtType-zq">学校</option> <option value="courtType-pp">临时</option> <option value="courtType-lq">公共</option> <option value="courtType-zq">其他</option> </select> 
          <!-- /选择场地类型 --> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">场地地点：</label> 
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
     <div id="myCourt" class="tab-pane "> 
      <!-- courts -->
      <div class="courts" id="courtsList">
       <!-- panel --> 
       <div class="panel-top">
       <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)">用户名<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">注册邮箱<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">注册时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">登录次数<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">比赛发布<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)">场地发布<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div></div>
       <!-- courtBoxs -->
       <div class="courtBoxs"></div>
       <!-- panel --> 
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination">
       <nav>
		<ul class="pagination">
		<li class="disabled"><a href="javascript:void(0)"><span aria-hidden="true">&laquo;</span><span class="sr-only"></span></a></li>
		<li class="active"><a href="javascript:void(0)">1</a></li>
		<li><a href="javascript:void(0)">2</a></li>
		<li><a href="javascript:void(0)"><span aria-hidden="true">&raquo;</span><span class="sr-only"></span></a></li>
		</ul>
	   </nav>
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
           <a href="{{id}}">{{name}}</a> 
           <a href="{{id}}" class="btn btn-mini pull-right">查看详细</a> 
          </div> 
          <ul class="breadcrumb"> 
           <li class="courtBox-address">{{addr}}</li> 
           <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">1</span>个</p> <p>12345678</p> </li> 
           <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">1</span>次</p></li> 
           <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>但行代价昂贵你空间啊好烦你撒谎吃饭了空间啊干那</span></p> <p><span>2013-10-10</span>:<span>撒了你刚才发K 524545呵呵发那个给UI HM</span></p> <p><span>2013-10-10</span>:<span>4256605JKHGCFYUSDA是都还没后 俺哥啊 俺哥爱戴啊</span></p></li> 
          </ul> 
         </div> 
        </div>
                            
    {{/each}}
  </script>
  <script>
  $(function(){
	  //ajax接收所有的场地
	  function e(){
		$.post("getAllCourt", null, function(data) {
	      console.log(data);//alert(data);
        var target = $(".courtBoxs"),template = Handlebars.compile($('#court-template').html());
        Handlebars.registerHelper("data",function(v){
          //将当前对象转化为字符串，保存在data-info中
          console.log(v);
          var v1 = JSON.stringify(v);
          //console.log("v1:"+v1);
          return v1;
        });
        //清空tbody并填入数据
        target.html(template(data));
	    $("#ajaxState .load").hide();console.log("stop");
	    //出错或无结果
	    //target.empty(); //清空tbody
	    if(target.find("div.courtBox").length == 0){
	    $("#ajaxState .noresult").show();console.log("无结果");
	    }
        //字数限制，溢出省略 
        $(".courtBox-address").wordLimit(20);
	    $(".courtBox-evaluation p").wordLimit();
	    });
	}
	function ajaxAllUser(){
		$("#ajaxState .load").show();console.log("start");
		window.setTimeout(e,5000);
	}
	ajaxAllUser();
	  
    //鼠标hover matchbox
    $(".courtBoxs ").on('mouseenter','div.courtBox',function(){
    	      $('div.courtBox').removeClass("box-active");
    	      $(this).addClass("box-active");
    });
  });
  </script>  
 </body>
</html>