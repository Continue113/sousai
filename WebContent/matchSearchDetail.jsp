﻿<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title><s:property value=""/>天津市第五届百年皖酒“杯 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网比赛搜索页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.matchSearchDetail.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
  .matchSearchDetail .matchSearch-remind {margin-top:5px;}
.matchSearchDetail .matchSearch-remind i{vertical-align: -1px;}
.matchSearchDetail .matchSearch-remind span{color:#62c462;font-weight: bold;}

.matchSearchDetail .matchShortInfo{font-size: 14px;padding: 5px;border: 1px solid #ccc;border-top: 3px solid #abcf20;background-color: #f5f5f5;}
.matchSearchDetail .matchShortInfo th{text-align: left;}

.matchSearchDetail .matchContent{border: 1px solid #cccccc;margin-top: 10px;}
.matchSearchDetail .matchContent > .matchScore{border-bottom: 1px solid #cccccc;
  *border: 0;padding: 5px 15px;}
.matchSearchDetail .matchContent > .matchScore > .title{text-align: center;font-weight: bold;}
.matchSearchDetail .matchContent > .title{
/** 鎸夐挳鏍峰紡**/
  background-color: #f5f5f5;
  background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
  background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
  background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe6e6e6', GradientType=0);
  border-color: #e6e6e6 #e6e6e6 #bfbfbf;
  border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
  *background-color: #e6e6e6;
  /* Darken IE7 buttons by default so they stand out more given they won't have borders */
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  border: 1px solid #cccccc;
  *border: 0;
  border-bottom-color: #b3b3b3;
  text-align: center;
  padding: 5px 0;
  font-weight: bold;
  margin-top:5px;
}
.matchSearchDetail .matchContent > .match{padding: 5px 15px;}
  </style>
 </head> 
 <body class="matchSearchDetail"> 
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset2"> 
     <img src="img/logo.png" /> 
    </div> 
    <s:include value="searchbox.jsp" />
    <!-- 搜索框 --> 
   </div> 
   <div class="row"> 
    <div class="span8 offset2"> 
     <div class="text-center adFirst">这里是ad.no1</div> 
     <div class="matchSearch-remind"> 
      <p><i class="icon-th-list"></i>&nbsp;比赛详情&nbsp;</p> 
     </div>
     <div id="match">
     <div class="matchShortInfo"> 
      <a href="javascript:void(0)" class="btn btn-mini pull-right">收藏比赛</a> 
      <a href="javascript:void(0)" class="btn btn-mini pull-right">修改比赛</a> 
      <a href="javascript:void(0)" class="btn btn-mini pull-right">录入成绩</a> 
      <table> 
       <thead> 
        <tr> 
         <th>比赛名称:</th> 
         <th>天津市第五届百年皖酒“杯</th> 
        </tr> 
       </thead> 
       <tbody> 
        <tr> 
         <td>比赛时间:</td> 
         <td>2013年10月18日-2013年10月20日 星期五-星期日</td> 
        </tr> 
        <tr> 
         <td>比赛地点:</td> 
         <td>中国 北京市 东城区 体育中心2号乒乓球桌</td> 
        </tr> 
        <tr> 
         <td>发&nbsp;&nbsp;布&nbsp;&nbsp;者:</td> 
         <td>搜赛网</td> 
        </tr> 
        <tr> 
         <td>发布时间:</td> 
         <td>2013-5-2</td> 
        </tr> 
       </tbody> 
      </table> 
     </div> 
     <div class="matchContent"> 
      <div class="matchScore"> 
       <div class="title">比赛成绩 </div> 
       <div class="matchScoreContent"> 比赛进程（状态）是报名中，则不显示比赛成绩这栏。XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX这个页面是在新的窗口打开，添加“修改”和“录入成绩”的按钮，可以修改“比赛规程”和“基本比赛信息”，按钮根据比赛状态（进程），改变按钮出现的情况。根据是否是发布者，出现录入成绩和修改比赛按钮 </div> 
      </div> 
      <div class="title">天津市第五届百年皖酒“杯 <span>比赛规程</span></div> 
      <div class="match"><p>天津市第五届百年皖酒“杯XXXXXXXXXX</p></div> 
     </div> 
    </div>
    </div>
    <div class="span1"> 
     <div class="text-center adSecond">这里是ad.no2</div> 
    </div> 
   </div> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" />
  <!-- 页尾信息 -->
  <script src="js/handlebars-v2.0.0.js"></script>
  <!-- handlebars template -->
  <script id="match-template" type="text/x-handlebars-template">
 {{#each this}}
<div class="matchShortInfo"> 
      <a href="javascript:void(0)" class="btn btn-mini pull-right">收藏比赛</a>
		{{#user userName <s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userName"/></s:if><s:else>0</s:else> }}
      <a href="javascript:void(0)" class="btn btn-mini pull-right">修改比赛</a> 
      <a href="javascript:void(0)" class="btn btn-mini pull-right">录入成绩</a>
		{{else}}
		{{/user}}
      <table> 
       <thead> 
        <tr> 
         <th>比赛名称:</th> 
         <th>{{name}}</th> 
        </tr> 
       </thead> 
       <tbody> 
        <tr> 
         <td>比赛时间:</td> 
         <td>{{beginTime}}-{{endTime}} 星期五-星期日</td> 
        </tr> 
        <tr> 
         <td>比赛地点:</td> 
         <td>{{courtName}}</td> 
        </tr> 
        <tr> 
         <td>发&nbsp;&nbsp;布&nbsp;&nbsp;者:</td> 
         <td>{{userName}}</td> 
        </tr> 
        <tr> 
         <td>发布时间:</td> 
         <td>{{relTime}}</td> 
        </tr> 
       </tbody> 
      </table>
</div>
<div class="matchContent"> 
      <div class="matchScore"> 
       <div class="title">比赛成绩 </div> 
       <div class="matchScoreContent"> 比赛进程（状态）是报名中，则不显示比赛成绩这栏。XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX这个页面是在新的窗口打开，添加“修改”和“录入成绩”的按钮，可以修改“比赛规程”和“基本比赛信息”，按钮根据比赛状态（进程），改变按钮出现的情况。根据是否是发布者，出现录入成绩和修改比赛按钮 </div> 
      </div> 
      <div class="title">{{name}} <span>比赛规程</span></div> 
      <div class="match">{{{rule}}}</div>
</div>
 {{/each}}
  </script>
  <script>
  //定义函数
  //搜索栏模糊搜索
function e(crtPage,rs,obc,ia,sc,kv){
	      $.ajax({
	          type: "POST",
	          url: "getAllMatch",
	          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	          data: {currentPage:crtPage,rows:rs,orderByCol:obc,isAsc:ia,strColumns:sc,keyValue:kv},
	          dataType: "json",
	          success: function(rspdata) {
	        	  console.log(rspdata);console.log(rspdata.body[0].name);
				  //修改title
				  $("title").html(rspdata.body[0].name+" &middot; 搜赛网");
			      var target = $("#match"),template = Handlebars.compile($('#match-template').html());
			    //注册一个比较用户名的Helper,有options参数，块级Helper
			               Handlebars.registerHelper("user",function(v1,v2,options){
			                 //判断v1是否比v2大
			                 if(v1 == v2){
			                   //继续执行
			                   return options.fn(this);
			                 }else{
			                   //执行else部分
			                   return options.inverse(this);
			                 }
			               });
			    
			      target.empty(); //清空tbody
		    	  target.html(template(rspdata.body));
	          },
	          error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	            alert("抱歉。ajax错误。");
	          },
	        });
	}  
  $(function(){
	//搜索栏模糊搜索
	  e(1,1,"name",true,"name","");
  });
  </script>  
 </body>
</html>