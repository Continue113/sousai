<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>场地详情 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网场地详情页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.courtSearchDetail.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
 </head> 
 <body class="courtSearchDetail"> 
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
     <div class="text-center adFirst">
       这里是ad.no1 
     </div> 
     <div class="courtShortInfo"> 
      <div class="title">
        成都11879乒乓球馆 
       <span>特色1</span> 
       <span>特色1</span> 
       <span>特色1</span> 
      </div> 
      <div class="span3 courtImgs" style="margin-left:0;"> 
       <div class="courtImg-big"> 
        <img src="img/defaultImg.png" /> 
       </div> 
       <div class="courtImg-small"> 
        <ul class="breadcrumb"> 
         <li class="firstImg active"><img src="img/defaultImg.png" /></li> 
         <li><img src="img/defaultIcon.png" /></li> 
         <li><img src="img/defaultImg.png" /></li> 
         <li><img src="img/pingpong.png" /></li> 
         <li class="lastImg"><img src="img/pingpong-grey.png" /></li> 
        </ul> 
       </div> 
      </div> 
      <div class="span5"> 
       <table> 
        <tbody> 
         <tr> 
          <td valign="top">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</td> 
          <td class="td2">天津市第五届百年皖酒“杯天津市第五届百年皖酒市第五届百年皖酒“杯天津市第五届百年皖酒“杯</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">场地类型：</td> 
          <td class="td2">室内（俱乐部）</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">比赛类型：</td> 
          <td class="td2">乒乓球</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">球&nbsp;&nbsp;台&nbsp;&nbsp;数：</td> 
          <td class="td2">20张（张）</td> 
          <td>（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">联系电话：</td> 
          <td class="td2">12345678</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</td> 
          <td class="td2">每台12元/小时皖酒“杯天津市第五届百年皖酒“杯皖酒“杯天津市第五届百年皖酒“杯</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">举办比赛：</td> 
          <td class="td2">12次</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">开放时间：</td> 
          <td class="td2">星期一至星期五12:00-22:00皖酒“杯天津市第五届百年皖酒“杯皖酒“杯天津市第五届百年皖酒“杯</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
        </tbody> 
       </table> 
      </div> 
     </div> 
     <div class="span8 courtSearchDetail-content"> 
      <ul class="nav nav-tabs courtDetailMenu"> 
       <li class="active" id="courtContentTab"><a href="#courtContent" data-toggle="tab">场地介绍</a></li> 
       <li id="courtEvaluationTab"><a href="#courtEvaluation" data-toggle="tab">评价详情（<span>3</span>）</a></li> 
       <li id="courtRecordTab"><a href="#courtRecord" data-toggle="tab">比赛记录（<span>1</span>）</a></li> 
      </ul> 
      <div class="tab-content"> 
       <div id="courtContent" class="tab-pane active"> 
        <div> 
         <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
        </div> 
       </div> 
       <div id="courtEvaluation" class="tab-pane "> 
        <div class="evaluations"> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName">
             KINGLION 
           </div> 
          </div> 
          <div class="media-body"> 
           <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39<a class="pull-right" href="#myModal">我要补充下</a></p> 
            
          </div> 
         </div> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName" data-userId="001" >
             KINGLIONXXXXXX 
           </div> 
          </div> 
          <div class="media-body"> 
           <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39<a class="pull-right" href="#myModal">我要补充下</a></p> 
           <div class="media evaluation evaluation-first1"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName" data-userId="011" >
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39<a class="pull-right" href="#myModal">我要补充下</a></p> 
            </div> 
           </div> 
           <div class="media evaluation evaluation-first1"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
            <div class="evaluationName" data-userId="012">
               KINGLIONXXXXXX 
             </div>
            </div> 
            <div class="media-body"> 
             <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39<a class="pull-right" href="#myModal">我要补充下</a></p> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName" data-userId="002">
            123456789KING
           </div> 
          </div> 
          <div class="media-body"> 
           <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39<a class="pull-right" href="#myModal">我要补充下</a></p> 
          </div> 
         </div> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName" data-userId="003">
            123456789KING
           </div> 
          </div> 
          <div class="media-body"> 
           <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39</p> 
           <a class="pull-right" href="#myModal">我要补充下</a> 
          </div> 
         </div> 
        </div> 
        <div class="media evaluation-response"> 
         <div class="pull-left"> 
           <s:if test="#session.userBean.userName!=null">
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName" id="myEvaluationName" data-userId='<s:property value="#session.userBean.userId"/>' >
           <s:property value="#session.userBean.userName"/>
           </div>
           </s:if>
           <s:else>
           <img class="media-object" src="img/defaultImg.png" alt="请登录" /> 
           <div class="evaluationName" id="myEvaluationName" data-userid="0" >
           	<a href="login.jsp" >请登录</a>
           </div>
          </s:else>
         </div> 
         <div class="media-body"> 
          <div class="inputRadios pull-right"> 
           <textarea id="inputResponse"></textarea> 
           <div class="radios pull-right"> 
            <label for="publicResponse" class="radio inline"><input type="radio" id="publicResponse" name="responseState" value="0" checked="checked" />公开</label> 
            <label for="hideResponse" class="radio inline"><input type="radio" id="hideResponse" name="responseState" value="1" />匿名</label> 
           </div> 
          </div> 
          <input type="submit" class="span2 btn btn-success pull-right hide" value="发表评论" /> 
          <button id="reply" class="span2 btn btn-success pull-right<s:if test="#session.userBean.userName!=null"></s:if><s:else> disabled</s:else>">发表评论</button> 
         </div> 
        </div> 
       </div> 
       <div id="courtRecord" class="tab-pane "> 
        <table class="table table-hover recordTable "> 
         <thead> 
          <tr> 
           <th>比赛名称</th> 
           <th>开赛时间</th> 
           <th>比赛状态</th> 
           <th>成绩</th> 
          </tr> 
         </thead> 
         <tbody> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>进行中</td> 
           <td>暂无</td> 
          </tr> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>进行中</td> 
           <td>暂无</td> 
          </tr> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>已结束</td> 
           <td><a href="#">查看</a></td> 
          </tr> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>已结束</td> 
           <td><a href="#">查看</a></td> 
          </tr> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>已结束</td> 
           <td><a href="#">查看</a></td> 
          </tr> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>已结束</td> 
           <td><a href="#">查看</a></td> 
          </tr> 
          <tr class="tbl-item"> 
           <td><a href="#">2014年成都乒乓球大赛</a></td> 
           <td>2014年1月23日</td> 
           <td>已结束</td> 
           <td><a href="#">查看</a></td> 
          </tr> 
         </tbody> 
        </table> 
        <div class="jplist-panel"> 
         <!-- pagination --> 
         <div class="jplist-pagination" data-control-type="pagination" data-control-name="paging" data-control-action="paging" data-items-per-page="5"></div> 
        </div> 
        <!-- /jplist-panel --> 
       </div> 
       <!-- /courtRecord --> 
      </div> 
     </div> 
    </div> 
    <div class="span1"> 
     <div class="text-center adSecond">
       这里是ad.no2 
     </div> 
    </div> 
   </div> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" />
  <!-- 页尾信息 --> 
  <script src="js/jquery.wordLimit.js"></script> 
  <script src="js/jplist.min.js"></script> 
  <script>
  $(function(){
  	/** 拉取评论  **/
  	$.ajax({
  		type: "POST",
        url: "showMsgs",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "courtId": 1,
        },
        dataType: "json",
        success: function(rspdata) {
        	var evaluations = $(".evaluations"),userName;
            evaluations.empty();
            for (var i = 0; i < rspdata.length; i++) {
            	if(rspdata[i].userName == null){ 
            		userName = '******'; //匿名的评论
            	}else{
            		userName = rspdata[i].userName;//公开的评论
            	};
            		evaluations.append('<div class="media evaluation"><div class="pull-left"><img class="media-object" src="img/defaultImg.png"><div class="evaluationName" data-userId="'+rspdata[i].userId+'">'+userName+'</div></div><div class="media-body"><p>'+rspdata[i].mesg+'</p><p class="releasetime">'+rspdata[i].time+'</p><a class="pull-right" href="#myModal">我要补充下</a></div></div>');
            }
        },
        error: function() {
          //alert("抱歉，获取评论出错了。");
        },
        }); //ajax 已得到评论信息
        //**/
     /** 评论回复 **/
     $("body").on("click",".media-body a",function(){
      $(".evaluations .evaluation-response").slideUp("slow").remove();
      $(".media-body > a").slideDown();
      $(this).hide();
      var img = 'img/defaultImg.png',
       	  respName = <s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userName"/></s:if><s:else>"******"</s:else>,
       	  respStr = '<div class="media evaluation-response hide"><div class="pull-left"><img class="media-object" src="'+img+'" /><div class="evaluationName">'+respName+'</div></div>';
      respStr +='<div class="media-body"><div class="inputRadios pull-right"><textarea id="inputResponse"></textarea><div class="radios pull-right"><label for="publicResponse1" class="radio inline"><input type="radio" id="publicResponse1" name="responseState1" value="0" checked="checked"/>公开</label><label for="hideResponse1"class="radio inline"><input type="radio" id="hideResponse1" name="responseState1" value="1"/>匿名</label></div></div><button class="btn pull-right" id="cancle">取消</button><button id="addReply" class="span2 btn btn-success pull-right"">发表评论</button><input type="submit" class="span2 btn btn-success pull-right hide" value="发表评论"/> </div></div>';
      if( $(this).parents(".media-body").length == 2){
        $(this).parent().parent().parent().append(respStr).end().parent().find(".evaluation-response").slideDown();
      }
      else{
      $(this).parent().append(respStr).end().parent().find(".evaluation-response").slideDown();
    }
    return false;
     });
    /** 直接发表评论 **/
    $("#reply").click(function(){
      var parentId = 0,
      userId = $("#myEvaluationName").data("userid"),
      courtId = 1,
      	  mesg = $(this).parents().find("textarea").val(),
          visibale = $('input:radio[name="responseState"]:checked').val(),
          respName = $(this).parent().parent().find(".evaluationName").text(),
          respImgSrc = $(this).parent().parent().find("img").attr("src"),
          respDate = new Date(),
          respTime = respDate.toLocaleString(),          
          respCode = '<div class="media evaluation"><div class="pull-left"><img class="media-object" src="'+respImgSrc+'" /><div class="evaluationName">'+respName+'</div></div><div class="media-body"><p>'+mesg+'</p><p class="releasetime">'+respTime+'</p><a class="pull-right" href="#myModal">我要补充下</a></div></div>',
          target = $(".evaluations");
          if(userId != 0){
      if(mesg != ""){
    	sendEvaluation(parentId,userId,courtId,mesg,visibale,respName);
        target.append(respCode);
      }
      }else{
    	  $("#SRDcontent").empty().append('<p style="font-size:16px;color:red;">请先<a href="login.jsp">登录</a>再评论。</p>');
      	$('#sousaiRemindDialog').modal({backdrop:true,show:true});
      }
    });
    /** 我要补充下 **/
     $("body").on("click","#addReply",function(){
      var parentId = $(this).parents().parents().find(".evaluationName").data("userId"),
      userId = $("#myEvaluationName").data("userId"),
      courtId = 1,
      	  visibale = $('input:radio[name="responseState"]:checked').val(),
          respName = $(this).parent().parent().find(".evaluationName").text(),
          respImgSrc = $(this).parent().parent().find("img").attr("src"),
          respDate = new Date(),
          respTime = respDate.toLocaleString(),
          target = $(this).parent().parent().parent(),
      	  respCode = '<div class="media evaluation',
      	  parentMesg = $(this).parent().parent().find("p:first-child").text(),
      	  mesg = "<p><i>回复："+ parentMesg + "</i></p><p>" + $(this).parents().find("textarea").val() + "</p>";

      if(target.find(".evaluation").length == 0){
        respCode += ' evaluation-first';
      }
      respCode += '"><div class="pull-left"><img class="media-object" src="'+respImgSrc+'" /><div class="evaluationName">'+respName+'</div></div><div class="media-body"><p>'+mesg+'</p><p class="releasetime">'+respTime+'</p><a class="pull-right" href="#myModal">我要补充下</a></div></div>'

      if(mesg != ""){
    	  sendEvaluation(parentId,userId,courtId,mesg,visibale,respName);
      	  $(".media-body > a").slideDown();
          target.append(respCode);
          $(".evaluations .evaluation-response").slideUp("slow").remove();
      }
    });
    function sendEvaluation(parentId,userId,courtId,mesg,visibale,userName){ //发送评论到服务器
    	if (visibale==1) {
    		userName = null;
    	};
      	$.ajax({
  		type: "POST",
        url: "relMsg",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "message.parentId": parentId,  //若为评论，则为0；若为回复则为所回复评论的id
          "message.userId": userId, //发表评论或回复的用户id
          "message.courtId": courtId, //评论或回复所在的场地id
          "message.mesg": mesg, //评论或回复的具体内容
          "message.userName": userName, //是否匿名,默认为公开为0有userName，若匿名为1则为******
        },
        dataType: "json",
        success: function(rspdata) {
        	console.log(rspdata);
        	if(rspdata == 0){
        		alert("发表评论失败！");
        	}
        },
        error: function() {
          //alert("抱歉，获取评论出错了。");
        },
        }); //ajax 已得到发送评论到服务器
    }
    /** 点击取消 **/
     $("body").on("click","#cancle",function(){
      $(".evaluations .evaluation-response").slideUp("slow").remove();
      $(".media-body a").slideDown();
    });

    /** 鼠标hover切换图片 **/
    $(".courtImg-small li").click(function(){
      $(this).parent().find("li").removeClass("active");
      $(this).addClass("active");
      var imgSrc = $(this).find("img").attr("src");
      $(".courtImg-big > img").attr("src",imgSrc);
    });
    /****/

    /** 字数限制，溢出省略 **/
    //$(".evaluationName").wordLimit(9);
    /****/

    /** 列表排序 **/
    $('#courtRecord').jplist({
          itemsBox: '.recordTable',
          itemPath: '.tbl-item',
          panelPath: '.jplist-panel'
        });
    /****/
  })
  </script>  
 </body>
</html>