<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>场地详情 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网场地详情页面" >
  <s:include value="seg-meta.jsp"/>
  <style type="text/css">
  .courtSearchDetail .courtShortInfo .title{font-weight: bold;font-size: 14px;color: #000;margin: 10px 0;}
.courtSearchDetail .courtShortInfo .title span{margin-left: 10px;}
.courtSearchDetail .courtShortInfo .courtImgs{margin-left: 0;}
.courtSearchDetail .courtShortInfo .courtImg-big{width:270px;height: 200px;border:1px solid #ccc;}
.courtSearchDetail .courtShortInfo .courtImg-big img{width:270px;height: 200px;}

.courtSearchDetail .courtShortInfo .courtImg-small > .breadcrumb{background-color: #fff;padding: 8px 0px;}
.courtSearchDetail .courtShortInfo .courtImg-small > .breadcrumb > li{margin: 0 4px 0 0;border: 1px solid #fff;}
.courtSearchDetail .courtShortInfo .courtImg-small > .breadcrumb > li.firstImg{margin-left: 2px;}
.courtSearchDetail .courtShortInfo .courtImg-small > .breadcrumb > li.lastImg{margin-right: 0;}
.courtSearchDetail .courtShortInfo .courtImg-small > .breadcrumb > li.active {border: 1px solid #51a351;}
.courtSearchDetail .courtShortInfo .courtImg-small img{width: 45px;height: 45px;}
.courtSearchDetail .courtShortInfo  table{font-size: 12px;}
.courtSearchDetail .courtShortInfo  table td:first-child {text-align: right;}
/*.courtSearchDetail .courtShortInfo  table .td2{width: 280px;}*/

/** nav-tabs **/
.courtSearchDetail .courtSearchDetail-content{margin-left: 0;}
.courtSearchDetail .courtDetailMenu{border-bottom: 1px solid #ccc;}

.courtSearchDetail .courtDetailMenu > .active > a {
    border-top: 2px solid #62c462;
    border-left: 0;
    border-right: 0;
    font-weight: normal;
    color: #000;
    background-color: #f5f5f5;
    border-bottom-color: transparent;
}

.courtSearchDetail .courtDetailMenu > li > a:hover,
.courtSearchDetail .courtDetailMenu > li > a:focus,
.courtSearchDetail .courtDetailMenu > .active > a:hover,
.courtSearchDetail .courtDetailMenu > .active > a:focus {
  font-weight: normal;
  color: #000;
  background-color: #f5f5f5;
}

/** 场地评价列表 **/
.evaluation{border-bottom: 2px solid #ccc;}
.evaluation .evaluationName{width: 70px;}
.evaluation .pull-left{margin-left:20px;padding: 0 5px;text-align: center;width: 70px;}
.evaluation img{width: 50px;height: 50px;margin-left:auto;margin-right:auto;}
.evaluation .media-body .releasetime{font-size: 12px;color: #ccc;}
/** 发表评价 **/
.evaluation-response img{width: 100px;height: 100px;margin-left:auto;margin-right:auto;}
.evaluation-response .evaluationName{text-align: center;}
.evaluation-response .inputRadios{border: 1px solid #ccc;background-color: #ddd;}
.evaluation-response textarea{height: 100px;min-height: 100px;width: 644px;min-width: 644px;max-width: 644px;margin-bottom: 0;}
.evaluation-response .radios{margin:5px;}
.evaluation-response input[type="submit"],.evaluation-response button{margin: 10px 0 10px 10px;}
/** 我要补充下 **/
.evaluation .evaluation{border-bottom: 0;border-top: 1px solid #ccc;padding-top: 10px;}
.evaluation .evaluation-response img{width: 50px;height: 50px;margin-left:auto;margin-right:auto;}
.evaluation .evaluation-response textarea{height: 60px;min-height: 60px;width: 546px;min-width: 546px;max-width: 546px;margin-bottom: 0;padding: 0;}

/** 比赛记录table **/
.recordTable{width: 100%;text-align: center;}
.recordTable th, .recordTable td{text-align: center;}
.recordTable tr{border-bottom: 1px solid #ccc;}
.recordTable th:first-child, .recordTable tr>td:first-child{padding-left:10px;text-align: left;}

.evaluation-tool-reply .evaluation-tool{text-align: right;}
.evaluation-tool-reply{margin: 0 0 10px 0;}

.validateCode-main input[type="text"]{margin-bottom: 0;}
.validateCode-main span{margin: 0 10px;}
.validateCode-main .code {background: url(img/code-bg.png);font-family: Arial;font-style: italic;color: blue;font-size: 20px;border: 0;padding: 2px 3px;letter-spacing: 3px;font-weight: bolder;float: left;cursor: pointer;width: 70px;height: 30px;line-height: 30px;text-align: center;vertical-align: middle;}
.validateCode-main .code-changeLink:hover,.validateCode-main .code-changeLink:focus {color: #797979;text-decoration: underline;cursor: pointer;}

.radios .radio {float: right;}
.radios .pull-left{margin-left: 0;padding: 0;text-align: left;width: auto;}
  </style>
 </head> 
 <body class="courtSearchDetail"> 
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
     <div class="courtShortInfo"> 
      <div class="title">暂无信息<span>暂无信息</span><span>暂无信息</span><span>暂无信息</span></div> 
      <div class="span3 courtImgs" style="margin-left:0;"> 
       <div class="courtImg-big"> 
        <img src="img/defaultImg.png" > 
       </div> 
       <div class="courtImg-small"> 
        <ul class="breadcrumb"> 
         <li class="firstImg active"><img src="img/defaultImg.png" ></li> 
         <li><img src="img/defaultIcon.png" ></li> 
         <li><img src="img/defaultImg.png" ></li> 
         <li><img src="img/pingpong.png" ></li> 
         <li class="lastImg"><img src="img/pingpong-grey.png" ></li> 
        </ul> 
       </div> 
      </div> 
      <div class="span5"> 
       <table> 
        <tbody class="courtTboby"> 
         <tr> 
          <td valign="top">地址：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">场地类型：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">比赛类型：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">球台数：</td> 
          <td class="td2">暂无信息</td> 
          <td>（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">联系电话：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">价格：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">举办比赛：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
         <tr> 
          <td valign="top">开放时间：</td> 
          <td class="td2">暂无信息</td> 
          <td valign="bottom">（暂无信息）</td> 
         </tr> 
        </tbody> 
       </table> 
      </div> 
     </div> 
     <div class="span8 courtSearchDetail-content"> 
      <ul class="nav nav-tabs courtDetailMenu"> 
       <li class="active" id="courtContentTab"><a href="#courtContent" data-toggle="tab">场地介绍</a></li> 
       <li id="courtEvaluationTab"><a href="#courtEvaluation" data-toggle="tab">评价详情（<span>0</span>）</a></li> 
       <li id="courtRecordTab"><a href="#courtRecord" data-toggle="tab">比赛记录（<span>0</span>）</a></li> 
      </ul> 
      <div class="tab-content">
      <div id="courtContent" class="tab-pane active"><div><p>暂无场地介绍</p></div></div> 
       <div id="courtEvaluation" class="tab-pane ">
        <div class="evaluations"></div>
        <div class="media evaluation-response"> 
         <div class="pull-left"> 
           <s:if test="#session.userBean.userName!=null">
           <img class="media-object" src="img/defaultImg.png" > 
           <div class="evaluationName" id="evaluationName-main" data-userid='<s:property value="#session.userBean.userId"/>' ><s:property value="#session.userBean.userName"/></div>
           </s:if>
           <s:else>
           <img class="media-object" src="img/defaultImg.png" alt="请登录" > 
           <div class="evaluationName" id="evaluationName-main" data-userid="0" >
           	<a href="login.jsp" >请登录</a>
           </div>
          </s:else>
         </div> 
         <div class="media-body"> 
          <div class="inputRadios pull-right">
           <textarea id="inputResponse-main" <s:if test="#session.userBean.userName!=null"></s:if><s:else>disabled="disabled" readonly="readonly"</s:else> ></textarea> 
           <div class="radios">
            <div class="validateCode-main pull-left">验证码&nbsp;:<input type="text" class="input-small" id="inputValidateCodeMain" name="inputValidateCode" placeholder="验证码" required="required" ><span id="inputValidateImg" class="code" onclick="createCode('inputValidateImg')"></span><span class="code-changeLink" onclick="createCode('inputValidateImg')"> 换一张</span></div> 
            <label for="hideResponse-main" class="radio inline pull-right"><input type="radio" id="hideResponse-main" name="responseState-main" value="1" >匿名</label>
            <label for="publicResponse-main" class="radio inline pull-right"><input type="radio" id="publicResponse-main" name="responseState-main" value="0" checked="checked" >公开</label> 
           </div> 
          </div>
          <button id="reply-main" class="span2 btn btn-success pull-right<s:if test="#session.userBean.userName!=null"></s:if><s:else> disabled</s:else>">发表评论</button> 
         </div> 
        </div> 
       </div> 
       <div id="courtRecord" class="tab-pane "> 
        <table class="table table-hover recordTable"> 
         <thead> 
          <tr> 
           <th>比赛名称</th> 
           <th>比赛时间</th> 
           <th>比赛状态</th> 
           <th>成绩</th> 
          </tr> 
         </thead> 
         <tbody></tbody> 
        </table>
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div>
      </div>
       </div> 
       <!-- /courtRecord --> 
      </div> 
     </div> 
    </div> 
    <div class="span1"><div class="text-center adSecond">这里是ad.no2</div></div> 
   </div> 
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
        
         <tr data-info="{{data}}"> 
          <td valign="top">地址：</td> 
          <td class="td2">{{addr}}</td> 
         </tr> 
         <tr> 
          <td valign="top">场地类型：</td> 
          <td class="td2">{{courtType}}</td> 
         </tr> 
         <tr> 
          <td valign="top">比赛类型：</td> 
          <td class="td2">{{matchType}}</td> 
         </tr> 
         <tr> 
          <td valign="top">球台数：</td> 
          <td class="td2">{{tableNum}}</td> 
         </tr> 
         <tr> 
          <td valign="top">联系电话：</td> 
          <td class="td2">{{tel}}</td> 
         </tr> 
         <tr> 
          <td valign="top">价格：</td> 
          <td class="td2">{{price}}</td> 
         </tr> 
         <tr> 
          <td valign="top">举办比赛：</td> 
          <td class="td2">12次</td> 
         </tr> 
         <tr> 
          <td valign="top">开放时间：</td> 
          <td class="td2">{{workTime}}</td> 
         </tr>
         <tr> 
          <td valign="top">更新时间：</td> 
          <td class="td2"><strong>{{relDate}}</strong> 更新</td> 
         </tr>

    {{/each}}
  </script>
  <script id="record-template" type="text/x-handlebars-template">
    {{#each this}}

  <tr class="tbl-item" data-info="{{data}}"> 
   <td><a target="_blank" href="matchSearchDetail.jsp?id={{id}}">{{name}}</a></td> 
   <td>{{beginTime}} - {{endTime}}</td> 
   <td>{{state}}</td> 
   <td>{{#if score}}{{score}}{{else}}暂无信息{{/if}}</td> 
  </tr> 

  {{/each}}  
  </script>
  
  <script>
  //定义函数
  
    //拉取评论
  	function ajaxAllEvaluation(id){
	  id = id||$(".title").attr("data-id")||null;
	  if(!id){
		  return false;
	  }
  	  	$.ajax({
  	        url: "showMsgs",
  	        data: {
  	          "courtId": id,
  	        },
  	        success: function(rspdata) {
  	        	console.log(rspdata);
  	        	var evaluations = $(".evaluations"),userName,mesg;
  	            evaluations.empty();
  	            $("#courtEvaluationTab span").text(rspdata.length);
  	            for (var i = 0; i < rspdata.length; i++) {

  	            	if(!rspdata[i].userName){ 
  	            		userName = '匿名的用户'; //匿名的评论
  	            	}else{
  	            		userName = rspdata[i].userName;//公开的评论
  	            	};
  	            	//判断是否为已经被管理员删除
  	            	if(rspdata[i].state == 0){
  	            		mesg = '<span class="label label-info">该评论已被管理员删除</span>';
  	            	}else{
  	            		mesg = rspdata[i].mesg;
  	            	}
  				  //区分是评论还是评论的回复
  	              if(rspdata[i].parentId == null){
  	            		evaluations.append('<div class="media evaluation" data-id="'+ rspdata[i].id +'"><div class="pull-left author"><img class="media-object" src="img/defaultImg.png"><div class="evaluationName" data-userid="'+rspdata[i].userId+'">'+userName+'</div></div><div class="media-body"><p class="evaluation-authorMain">'+mesg+'</p><p class="releasetime">'+rspdata[i].time+'</p><ul class="evaluation-tool-reply"><li class="evaluation-tool"><a class="evaluation-tool-visible" href="javascript:void(0);"></a>&nbsp;&nbsp;<a class="evaluation-tool-a" href="#myModal">我要补充下</a></li></ul></div></div>');
  	              }else{
  	            	  //采用each迭代每一个拥有data-id的 evaluation
  	            	  $( ".evaluation" ).each(function (j) {
  	            		  //sousaiRemindDialog( $(this).data("id") );
  	            		  if ( $(this).data("id") == rspdata[i].parentId ) {
  	            			  //console.log("$(this).data(\"id\") : "+$(this).data("id"));
  	            			  $(this).find(".media-body > .evaluation-tool-reply").append('<li class="evaluation-reply"><div class="media evaluation"><div class="pull-left"><img class="media-object" src="img/defaultImg.png" ><div class="evaluationName">'+userName+'</div></div><div class="media-body"><p class="evaluation-main">'+mesg+'</p><p class="releasetime">'+rspdata[i].time+'</p><a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a></div></div></li>').find(".evaluation-tool > .evaluation-tool-visible").text('隐藏回复');
  	                      }
  	            	  });
  	              };

  	            }
  	        }
  	        });
  	  	}
  //点击我要补充下，滑出回复框
    function appendTextarea (target,img,name,id,parentName) { //添加“我要补充下”回复框
     var respStr = '<li class="evaluation-response-li hide"><div class="media evaluation-response"><div class="pull-left"><img class="media-object" src="'+img+'" ><div class="evaluationName" id="evaluationName-temp" data-userid="'+id+'">'+name+'</div></div><div class="media-body"><div class="inputRadios pull-right"><textarea id="inputResponse-temp" <s:if test="#session.userBean.userName!=null"></s:if><s:else>disabled="disabled" readonly="readonly"</s:else> > <s:if test="#session.userBean.userName!=null"> 【回复 '+parentName+' 】：</s:if><s:else>请先登录。</s:else> </textarea><div class="radios"><div class="validateCode-main pull-left">验证码&nbsp;:<input type="text" class="input-small" id="inputValidateCodeTemp" name="inputValidateCodeTemp" placeholder="验证码" required="required" ><span id="inputValidateImgTemp" class="code" onclick="createCode(\'inputValidateImgTemp\')"></span><span class="code-changeLink" onclick="createCode(\'inputValidateImgTemp\')"> 换一张</span></div><label for="hideResponse-temp" class="radio inline pull-right"><input type="radio" id="hideResponse-temp" name="responseState-temp" value="1">匿名</label><label for="publicResponse-temp" class="radio inline pull-right"><input type="radio" id="publicResponse-temp" name="responseState-temp" value="0" checked="checked">公开</label></div></div><button class="btn pull-right" id="cancle-temp">取消</button><button id="reply-temp" class="span2 btn btn-success pull-right<s:if test="#session.userBean.userName!=null"></s:if><s:else> disabled</s:else>">发表评论</button><input type="submit" class="span2 btn btn-success pull-right hide" value="发表评论"> </div></div></li>';
     target.append(respStr);
     createCode("inputValidateImgTemp");
    }
    function focusLast ( target,oldhead,oldlast ) {//聚焦到输入框的最后。
     //target是当前对象，例如文本域对象
     //head是起始位置，last是终点位置
     var head = parseInt(oldhead, 10), last = parseInt(oldlast, 10);
     var l = target.value.length;
     if(l){
       //如果非数值，则表示从起始位置选择到结束位置
       if(!head){
         head = 0; 
       }
       if(!last){
         last = l; 
       }
       //如果值超过长度，则就是当前对象值的长度
       if(head > l){
         head = l; 
       }
       if(last > l){
         last = l; 
       }
       //如果为负值，则与长度值相加
       if(head < 0){
         head = l + head;
       }
       if(last < 0){
         last = l + last;  
       }
       if(target.createTextRange){//IE浏览器
         var range = target.createTextRange();         
         range.moveStart("character",-l);              
         range.moveEnd("character",-l);
         range.moveStart("character", head);
         range.moveEnd("character",last);
         range.select();
       }else{
         target.setSelectionRange(head, last);
         target.focus();
       }
     }
    }
  //发送评论到服务器的函数
  function sendEvaluation(argso){
	  //parentId,rootId,userId,courtId,mesg,visible,userName,target,respCode
	  var args = argso;
	  args["message.parentId"] = args.parentId||null; //若为直接评论，则为0；若为回复则为所回复评论的id ,直接评论 parentId 和rootId 都为null
	  args["message.rootId"] = args.rootId||null; //同parentId
	  args["message.userId"] = args.userId||$("#userId").attr("data-userid")||null; //发表评论或回复的用户id
	  args["message.userName"] = args.userName||null; //发表评论或回复的用户userName
	  args["message.courtId"] = args.courtId||$(".title").attr("data-id")||null; //评论或回复所在的场地id
	  args["message.mesg"] = args.mesg||null; //评论或回复的具体内容
	  args["message.state"] = 1; //评论或回复的状态设置为1 即正常评论
	  //是否匿名,默认为公开为0，若匿名为1	  
      if(!args["message.userId"]){
    	  return false;
      }
      	$.ajax({
        url: "relMsg",
        data: args,
        success: function(rspdata) {
        	console.log(rspdata);
        	if(rspdata == "0"){
        		sousaiRemindDialog("发表评论失败！");
        		//重置主发布框的内容。
        		$("#inputResponse-main").val("");
        		$("#inputValidateCodeMain").val("");
        		$("#publicResponse-main").click();
        		createCode("inputValidateImg");
        	}else{
        		sousaiRemindDialog("发表评论成功！");
        		//重置主发布框的内容。
        		$("#inputResponse-main").val("");
        		$("#inputValidateCodeMain").val("");
        		$("#publicResponse-main").click();
        		createCode("inputValidateImg");
        		ajaxAllEvaluation(args.courtId);
        	};
        }
        });
    }
  //根据id获取场地信息
  function getCourtById(id){

		var url = window.location.search;
	    id = id||decodeURI(url.substring(url.lastIndexOf('=')+1, url.length))||null;
		if(!id){
			return false;
		}
	    $.ajax({
	      url: "getCourtById",
	      data: {id:id},
	      success: function(rspdata) {
		      console.log(rspdata);//sousaiRemindDialog(rspdata);
	      var target = $(".courtTboby"),template = Handlebars.compile($('#court-template').html()),temp={};
	      temp.data = rspdata;
	      Handlebars.registerHelper("data",function(){
	        return JSON.stringify(this);
	      });
	      target.empty().html(template(temp));
	      $("title").html(rspdata.name+" &middot; 搜赛网");
	      $(".title").html(rspdata.name).attr("data-id",rspdata.id);
	      $("#courtContent").html(rspdata.intro);
	      ajaxAllEvaluation(id);
		  e({currentPage:1,rows:10,id:id});
		  }
	    });
  }
  //根据id获取该场地的比赛信息
  function e(argso){
	  var args = argso,
	  url = window.location.search,
	  id = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));

	  args.courtId = args.courtId||id||null;
	  args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
	  args.rows = args.rows||25;
  	  if(!args.courtId){
  		  return false;
  	  }
  
	    $.ajax({
	      url: "getMatchByCourtId",
	      data: args,
	      success: function(rspdata) {
		      console.log(rspdata);
	      var target = $(".recordTable > tbody"),template = Handlebars.compile($('#record-template').html());
	      Handlebars.registerHelper("data",function(){
	        return JSON.stringify(this);
	      });
	      target.empty().html(template(rspdata.body));
	      $("#courtRecordTab span").text(rspdata.count);
	      pages(rspdata.count,args.currentPage,args.rows);
		  }
	    });
  }
  
  $(function(){
	  var url = window.location.search,
	  id = decodeURI(url.substring(url.lastIndexOf('=')+1, url.length));
	  //根据id获取场地信息
	  getCourtById(id);
	  //初始化生成验证码
      createCode("inputValidateImg");
     //点击隐藏回复 和 显示回复
     $("body").on("click",".evaluation-tool-visible",function(){
    	 var textState = $(this);
    	 if( textState.text() == "隐藏回复" ){
    		 textState.text("显示回复").parent().parent().find(".evaluation-reply").slideUp("slow");
    	 }else{
    		 textState.text("隐藏回复").parent().parent().find(".evaluation-reply").slideDown("slow");
    	 }
     });
        
     
     $("body").on("click",".evaluation-tool > .evaluation-tool-a",function(){ //仅对一层评论的“我要回复下使用”
      var target = $(this).parent().parent(),//目标为evaluation-tool-reply
          parentName = $.trim(target.parent().parent().find(".author > .evaluationName").text()), //trim()去除前后空格 .evalution > .author > .evaluationName
          img = 'img/defaultImg.png',
          id = $("#userId").attr("data-userid")||0,
          name = $("#userId").text()||'<a href="login.jsp" >请登录</a>';

      if( $(".evaluations .evaluation-response-li").length==0){ //判断是否存在.evaluation-response
            appendTextarea (target,img,name,id,parentName);
            $(".evaluations .evaluation-response-li").slideDown();
            focusLast(document.getElementById("inputResponse-temp"),30,30);
          }else if(target.find(".evaluation-response-li").length==1){
            $("#inputResponse-temp").text("【回复 "+parentName+" 】：");
            focusLast(document.getElementById("inputResponse-temp"),30,30);
          }else{
            $(".evaluations .evaluation-response-li").slideUp("slow",function(){
              $(".evaluations .evaluation-response-li").remove();
              appendTextarea (target,img,name,id,parentName);
              $(".evaluations .evaluation-response-li").slideDown();
              focusLast(document.getElementById("inputResponse-temp"),30,30);
            });
          }
    return false;
     });

     $("body").on("click",".media-body > .evaluation-tool-a",function(){ //仅对二层评论的“我要回复下使用”
      var target = $(this).parent().parent(),//目标为evaluation
          parentName = $.trim(target.find(".evaluationName").text()), //trim()去除前后空格 .evalution .evaluationName
          img = 'img/defaultImg.png',
          id = $("#userId").attr("data-userid")||0,
          name = $("#userId").text()||'<a href="login.jsp" >请登录</a>';
          
          if( $(".evaluations .evaluation-response-li").length==0){ //判断是否存在.evaluation-response
            appendTextarea (target.parent().parent(),img,name,id,parentName);
            $(".evaluations .evaluation-response-li").slideDown();
            focusLast(document.getElementById("inputResponse-temp"),30,30);
          }else if(target.parent().parent().find(".evaluation-response-li").length==1){
            $("#inputResponse-temp").text("【回复 "+parentName+" 】：");
            focusLast(document.getElementById("inputResponse-temp"),30,30);
          }else{
            $(".evaluations .evaluation-response-li").slideUp("slow",function(){
              $(".evaluations .evaluation-response-li").remove();
              appendTextarea (target,img,name,id,parentName);
              $(".evaluations .evaluation-response-li").slideDown();
              focusLast(document.getElementById("inputResponse-temp"),30,30);
            });
          }
      return false;
     });
    //直接发表评论
    $("#reply-main").click(function(){
      $(".evaluations .evaluation-response-li").slideUp("slow",function(){
        $(".evaluations .evaluation-response-li").remove();
      });//把所有的“我要补充下”的回复框移除

      var mesg = $(this).parents().find("textarea").val(),
          visible = $('input:radio[name="responseState-main"]:checked').val(), 
          inputValidateImg = $("#inputValidateImg").text().toUpperCase(),
          inputValidateCaodeMain = $("#inputValidateCodeMain").val().toUpperCase(),
          userid =isLogined();
	    //检测用户是否为登录状态
	  	if(userid.responseJSON=="error"){
	  		// -1 为未登录状态，其他则为用户ID
	  		newformloginBox();
	  	}else {
	        if(inputValidateImg != inputValidateCaodeMain){
	          sousaiRemindDialog("请填写正确的验证码。");
	          return false;
	        }
	        if( mesg == "" ){
	          sousaiRemindDialog("请填写回复内容。");
	          return false;
	        }
	        if(visible == 1){
	        	sendEvaluation({parentId:null,rootId:null,mesg:mesg,});
	        }else{
	        	sendEvaluation({parentId:null,rootId:null,mesg:mesg,userName:userid.responseJSON.userName});
	        }
	        
	  	}
    });
    //我要补充下 
     $("body").on("click","#reply-temp",function(){
      var rootId = parentId = $(this).parent().parent().parent().parent().parent().parent().data("id"), //evaluation > data-id
          visible = $('input:radio[name="responseState-temp"]:checked').val(), 
          mesg = $(this).parents().find("textarea").val(),
          inputValidateImg = $("#inputValidateImgTemp").text().toUpperCase(),
          inputValidateCaodeMain = $("#inputValidateCodeTemp").val().toUpperCase(),
          userid =isLogined();
	    //检测用户是否为登录状态
	  	if(userid.responseJSON=="error"){
	  		// -1 为未登录状态，其他则为用户ID
	  		newformloginBox();
	  	}else {
	        if(inputValidateImg != inputValidateCaodeMain){
	          sousaiRemindDialog("请填写正确的验证码。");
	          return false;
	        }
	        if( mesg == "" ){
	          sousaiRemindDialog("请填写回复内容。");
	          return false;
	        }
	        if(visible == 1){
	        	sendEvaluation({parentId:parentId,rootId:rootId,mesg:mesg,});
	        }else{
	        	sendEvaluation({parentId:parentId,rootId:rootId,mesg:mesg,userName:userid.responseJSON.userName});
	        }
	        
	  	}
    });
    
    //点击取消
     $("body").on("click","#cancle-temp",function(){
      $(".evaluations .evaluation-response-li").slideUp("slow",function(){
      $(".evaluations .evaluation-response-li").remove();
      });
      $(".evaluation-tool-a").slideDown();
    });

    //鼠标hover切换图片
    $(".courtImg-small li").click(function(){
      $(this).parent().find("li").removeClass("active");
      $(this).addClass("active");
      var imgSrc = $(this).find("img").attr("src");
      $(".courtImg-big > img").attr("src",imgSrc);
    });
  });
  </script>  
 </body>
</html>