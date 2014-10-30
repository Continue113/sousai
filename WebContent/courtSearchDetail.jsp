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
       <!-- 原失败评论列表 -->
        <div class="evaluations"> 

         <div class="media evaluation"> 
          <div class="pull-left author" data-filed='{"userName":"KINGLION","userId":001}'> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName">
             KINGLION 
           </div> 
          </div> 
          <div class="media-body"> 
           <p class="evaluation-authorMain">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39</p> 
           <ul class="evaluation-tool-reply">
           <li class="evaluation-tool"><a class="evaluation-tool-visible" href="javascript:void(0);">隐藏回复</a>&nbsp;&nbsp;<a class="evaluation-tool-a" href="#myModal">我要补充下</a></li>
           <li class="evaluation-reply">
            <div class="media evaluation"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName" >
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p class="evaluation-main">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
           </li>
           <li class="evaluation-reply">
            <div class="media evaluation"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName">
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p class="evaluation-main">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
           </li>
           <li class="evaluation-reply">
            <div class="media evaluation"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName">
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p class="evaluation-main">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
           </li>
           </ul>
          </div> 
         </div> 
         
         <div class="media evaluation"> 
          <div class="pull-left author"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName">
             KINGLION 
           </div> 
          </div> 
          <div class="media-body"> 
           <p class="evaluation-authorMain">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39</p> 
           <ul class="evaluation-tool-reply">
           <li class="evaluation-tool"><a class="evaluation-tool-visible" href="javascript:void(0);">无回复</a>&nbsp;&nbsp;<a class="evaluation-tool-a" href="#myModal">我要补充下</a></li>
           </ul>
          </div> 
         </div>

         <div class="media evaluation"> 
          <div class="pull-left author"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName">
             KINGLION 
           </div> 
          </div> 
          <div class="media-body"> 
           <p class="evaluation-authorMain">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39</p> 
           <ul class="evaluation-tool-reply">
           <li class="evaluation-tool"><a class="evaluation-tool-visible" href="javascript:void(0);">隐藏回复</a>&nbsp;&nbsp;<a class="evaluation-tool-a" href="#myModal">我要补充下</a></li>
           <li class="evaluation-reply">
            <div class="media evaluation"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName" >
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p class="evaluation-main">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
           </li>
           <li class="evaluation-reply">
            <div class="media evaluation"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName">
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p class="evaluation-main">天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
           </li>
           </ul>
          </div> 
         </div> 

        </div> <!-- /evaluations-->
        <div class="media evaluation-response"> 
         <div class="pull-left"> 
           <s:if test="#session.userBean.userName!=null">
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName" id="evaluationName-main" data-userid='<s:property value="#session.userBean.userId"/>' ><s:property value="#session.userBean.userName"/></div>
           </s:if>
           <s:else>
           <img class="media-object" src="img/defaultImg.png" alt="请登录" /> 
           <div class="evaluationName" id="evaluationName-main" data-userid="0" >
           	<a href="login.jsp" >请登录</a>
           </div>
          </s:else>
         </div> 
         <div class="media-body"> 
          <div class="inputRadios pull-right">
           <textarea id="inputResponse-main" <s:if test="#session.userBean.userName!=null"></s:if><s:else>disabled="disabled" readonly="readonly"</s:else> ></textarea> 
           <div class="radios">
            <div class="validateCode-main pull-left">验证码&nbsp;:<input type="text" class="input-small" id="inputValidateCodeMain" name="inputValidateCode" placeholder="验证码" required="required" /><span id="inputValidateImg" class="code" onclick="createCode('inputValidateImg')"></span><span class="code-changeLink" onclick="createCode('inputValidateImg')"> 换一张</span></div> 
            <label for="hideResponse-main" class="radio inline pull-right"><input type="radio" id="hideResponse-main" name="responseState-main" value="1" />匿名</label>
            <label for="publicResponse-main" class="radio inline pull-right"><input type="radio" id="publicResponse-main" name="responseState-main" value="0" checked="checked" />公开</label> 
           </div> 
          </div>
          <input type="submit" class="span2 btn btn-success pull-right hide" value="发表评论" /> 
          <button id="reply-main" class="span2 btn btn-success pull-right<s:if test="#session.userBean.userName!=null"></s:if><s:else> disabled</s:else>">发表评论</button> 
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
	/** 初始化生成验证码 **/
    createCode("inputValidateImg");
    
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
        	console.log(rspdata);
        	var evaluations = $(".evaluations"),userName;
            evaluations.empty();
            for (var i = 0; i < rspdata.length; i++) {

            	if(rspdata[i].userName == null){ 
            		userName = '******'; //匿名的评论
            	}else{
            		userName = rspdata[i].userName;//公开的评论
            	};
			  //区分是评论还是评论的回复
              if(rspdata[i].parentId == null){
            		evaluations.append('<div class="media evaluation" data-id="'+ rspdata[i].id +'"><div class="pull-left author"><img class="media-object" src="img/defaultImg.png"><div class="evaluationName" data-userid="'+rspdata[i].userId+'">'+userName+'</div></div><div class="media-body"><p class="evaluation-authorMain">'+rspdata[i].mesg+'</p><p class="releasetime">'+rspdata[i].time+'</p><ul class="evaluation-tool-reply"><li class="evaluation-tool"><a class="evaluation-tool-a" href="#myModal">我要补充下</a></li></ul></div></div>');
              }else{
            	  console.log("parentId != null");
            	  console.log(rspdata[i].parentId + " /- parentId / mesg:/ " +rspdata[i].mesg);
            	  //采用each迭代每一个拥有data-id的 evaluation
            	  $( ".evaluation" ).each(function (j) {
            		  //alert( $(this).data("id") );
            		  if ( $(this).data("id") == rspdata[i].parentId ) {
            			  console.log("$(this).data(\"id\") : "+$(this).data("id"));
            			  $(this).find(".media-body > .evaluation-tool-reply").append('<li class="evaluation-reply"><div class="media evaluation"><div class="pull-left"><img class="media-object" src="img/defaultImg.png" /><div class="evaluationName">'+rspdata[i].userName+'</div></div><div class="media-body"><p class="evaluation-main">'+rspdata[i].mesg+'</p><p class="releasetime">'+rspdata[i].time+'</p><a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a></div></div></li>').find(".evaluation-tool").prepend('<a class="evaluation-tool-visible" href="javascript:void(0);">隐藏回复</a>&nbsp;&nbsp;');
                      }
            	  });
              };

            }
        },
        error: function() {
        	console.log("抱歉，获取评论出错了。");//alert("抱歉，获取评论出错了。");
        },
        }); //ajax 已得到评论信息
        
     /** 点击隐藏回复 和 显示回复  **/
     $("body").on("click",".evaluation-tool-visible",function(){
    	 console.log($(this).text());
    	 if( $(this).text() == "隐藏回复" ){
    		 $(this).text("显示回复").parent().parent().find(".evaluation-reply").slideUp("slow");
    	 }else if( $(this).text() == "显示回复" ){
    		 $(this).text("隐藏回复").parent().parent().find(".evaluation-reply").slideDown("slow");
    	 }
     });
        
     /** 点击我要补充下，滑出回复框  **/
     function appendTextarea (target,img,name,id,parentName) { //添加“我要补充下”回复框
      var respStr = '<li class="evaluation-response-li hide"><div class="media evaluation-response"><div class="pull-left"><img class="media-object" src="'+img+'" /><div class="evaluationName" id="evaluationName-temp" data-userid="'+id+'">'+name+'</div></div><div class="media-body"><div class="inputRadios pull-right"><textarea id="inputResponse-temp" <s:if test="#session.userBean.userName!=null"></s:if><s:else>disabled="disabled" readonly="readonly"</s:else> > <s:if test="#session.userBean.userName!=null"> 【回复 '+parentName+' 】：</s:if><s:else>请先登录。</s:else> </textarea><div class="radios"><div class="validateCode-main pull-left">验证码&nbsp;:<input type="text" class="input-small" id="inputValidateCodeTemp" name="inputValidateCodeTemp" placeholder="验证码" required="required" /><span id="inputValidateImgTemp" class="code" onclick="createCode(\'inputValidateImgTemp\')"></span><span class="code-changeLink" onclick="createCode(\'inputValidateImgTemp\')"> 换一张</span></div><label for="hideResponse-temp" class="radio inline pull-right"><input type="radio" id="hideResponse-temp" name="responseState-temp" value="1"/>匿名</label><label for="publicResponse-temp" class="radio inline pull-right"><input type="radio" id="publicResponse-temp" name="responseState-temp" value="0" checked="checked"/>公开</label></div></div><button class="btn pull-right" id="cancle-temp">取消</button><button id="reply-temp" class="span2 btn btn-success pull-right<s:if test="#session.userBean.userName!=null"></s:if><s:else> disabled</s:else>">发表评论</button><input type="submit" class="span2 btn btn-success pull-right hide" value="发表评论"/> </div></div></li>';
      target.append(respStr);
      createCode("inputValidateImgTemp");
     }
     function focusLast ( target,head,last ) {//聚焦到输入框的最后。
      //target是当前对象，例如文本域对象
      //head是起始位置，last是终点位置
      var head = parseInt(head, 10), last = parseInt(last, 10);
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
     $("body").on("click",".evaluation-tool > .evaluation-tool-a",function(){ //仅对一层评论的“我要回复下使用”
      var target = $(this).parent().parent(),//目标为evaluation-tool-reply
          parentName = $.trim(target.parent().parent().find(".author > .evaluationName").text()), //trim()去除前后空格 .evalution > .author > .evaluationName
          img = 'img/defaultImg.png',//<s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userIcon"/></s:if><s:else>'img/defaultImg.png'</s:else>,
          id = <s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userId"/></s:if><s:else>0</s:else>,
          name = <s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userName"/></s:if><s:else>'<a href="login.jsp" >请登录</a>'</s:else>;

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
          img = 'img/defaultImg.png',//<s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userIcon"/></s:if><s:else>'img/defaultImg.png'</s:else>,
          id = <s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userId"/></s:if><s:else>0</s:else>,
          name = <s:if test="#session.userBean.userName!=null"><s:property value="#session.userBean.userName"/></s:if><s:else>'<a href="login.jsp" >请登录</a>'</s:else>;

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
    /** 直接发表评论 **/
    $("#reply-main").click(function(){
      $(".evaluations .evaluation-response-li").slideUp("slow",function(){
        $(".evaluations .evaluation-response-li").remove();
      });//把所有的“我要补充下”的回复框移除

      var parentId = null, //直接评论 parentId 和rootId 都为null
      	  rootId = null,
      	  userId = $("#evaluationName-main").data("userid"),
      	  courtId = 1,
      	  mesg = $(this).parents().find("textarea").val(),
          visible = $('input:radio[name="responseState-main"]:checked').val(),
          respName = $.trim($(this).parent().parent().find(".evaluationName").text()),
          respImgSrc = $(this).parent().parent().find("img").attr("src"),
          respDate = new Date(),
          respTime = respDate.toLocaleString(),          
          respCode = '<div class="media evaluation"><div class="pull-left author"><img class="media-object" src="'+respImgSrc+'" /><div class="evaluationName">'+respName+'</div></div><div class="media-body"><p class="evaluation-authorMain">'+mesg+'</p><p class="releasetime">'+respTime+'</p><ul class="evaluation-tool-reply"><li class="evaluation-tool"><a class="evaluation-tool-visible" href="javascript:void(0);">隐藏回复</a>&nbsp;&nbsp;<a class="evaluation-tool-a" href="#myModal">我要补充下</a></li></ul></div></div>',
          target = $(".evaluations"),
          inputValidateImg = $("#inputValidateImg").text().toUpperCase(),
          inputValidateCaodeMain = $("#inputValidateCodeMain").val().toUpperCase();
                    
      if(userId != 0){
          if(inputValidateImg != inputValidateCaodeMain){
            alert("请填写正确的验证码。");console.log("验证码错误");
          }else if( mesg == "" ){
            alert("请填写回复内容。");
          }else{
            sendEvaluation(parentId,rootId,userId,courtId,mesg,visible,respName,target,respCode);
          };
      }else{
    	  $("#SRDcontent").empty().append('<div class="alert alert-block alert-error fade in"><p style="font-size:16px;color:red;">请先<a href="login.jsp">登录</a>再评论。</p></div>');
    	  $('#sousaiRemindDialog > .modal-footer > .btn-success').attr("data-dismiss","modal");
    	  $('#sousaiRemindDialog').modal({backdrop:true,show:true});
      };
    });
    /** 我要补充下 **/
     $("body").on("click","#reply-temp",function(){
      var parentId = $(this).parent().parent().parent().parent().parent().parent().data("id"), //evaluation > data-id
      rootId = parentId,
      userId = $("#evaluationName-temp").data("userid"),
      courtId = 1,
      	  visible = $('input:radio[name="responseState"]:checked').val(),
          respName = $(this).parent().parent().find(".evaluationName").text(),
          respImgSrc = $(this).parent().parent().find("img").attr("src"),
          respDate = new Date(),
          respTime = respDate.toLocaleString(),
          target = $(this).parent().parent().parent().parent(),//.evaluation-tool-reply
      	  respCode = '<li class="evaluation-reply"><div class="media evaluation',
      	  //parentMesg = target.parent().parent().find(".pull-left:first-child > .evaluationName").text() +"<i>" + target.parent().find("p:first-child").text() + "</i>", //父评论
      	  mesg = $(this).parents().find("textarea").val(),
          inputValidateImg = $("#inputValidateImgTemp").text().toUpperCase(),
          inputValidateCaodeMain = $("#inputValidateCodeTemp").val().toUpperCase();

      respCode += '"><div class="pull-left"><img class="media-object" src="'+respImgSrc+'" /><div class="evaluationName">'+respName+'</div></div><div class="media-body"><p class="evaluation-main">'+mesg+'</p><p class="releasetime">'+respTime+'</p><a class="pull-right evaluation-tool-a" href="#myModal">我要补充下</a></div></div></li>';
      if(userId != 0){
      //if(mesg != ""){
    	  if( inputValidateImg != inputValidateCaodeMain ){
        	  alert("请填写正确的验证码。");console.log("验证码错误");
          }else{
        	  $(".evaluation-tool-a").slideDown();
    	      sendEvaluation(parentId,rootId,userId,courtId,mesg,visible,respName,target,respCode);
          };
      //}
      }else{
    	  $("#SRDcontent").empty().append('<div class="alert alert-block alert-error fade in"><p style="font-size:16px;color:red;">请先<a href="login.jsp">登录</a>再评论。</p></div>');
    	  $('#sousaiRemindDialog > .modal-footer > .btn-success').attr("data-dismiss","modal");
    	  $('#sousaiRemindDialog').modal({backdrop:true,show:true,});
      };
    });
    
    //发送评论到服务器的函数
    function sendEvaluation(parentId,rootId,userId,courtId,mesg,visible,userName,target,respCode){
    	var data;
    	if (visible==1) { //匿名则不发送userName
    		//userName = null;
    		data = {
    	        	"message.parentId": parentId,  //若为评论，则为0；若为回复则为所回复评论的id
    	      	    "message.rootId": rootId,  //通parentId
    	      	    "message.userId": userId, //发表评论或回复的用户id
    	      	    "message.courtId": courtId, //评论或回复所在的场地id
    	      	    "message.mesg": mesg, //评论或回复的具体内容
    	      	    //"message.userName": userName, //是否匿名,默认为公开为0有userName，若匿名为1则为******
    	      	    };
    	}else {
    		data = {
            	"message.parentId": parentId,  //若为评论，则为0；若为回复则为所回复评论的id
          	    "message.rootId": rootId,  //通parentId
          	    "message.userId": userId, //发表评论或回复的用户id
          	    "message.courtId": courtId, //评论或回复所在的场地id
          	    "message.mesg": mesg, //评论或回复的具体内容
          	    "message.userName": userName, //是否匿名,默认为公开为0有userName，若匿名为1则为******
          	    };
    	};
    
    	console.log("进入sendEvaluation，visible为"+visible+",userName为"+userName+"开始ajax");
      	$.ajax({
  		type: "POST",
        url: "relMsg",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: data,
        dataType: "json",
        success: function(rspdata) {
        	console.log(rspdata);
        	if(rspdata == 0){
        		alert("发表评论失败！");console.log("发表评论失败！服务器返回错误码为0");
        	}else{
        		alert("发表评论成功！");console.log("发表评论成功！");
        		target.append(respCode); //本地添加
        		$(".evaluations .evaluation-response-li").slideUp("slow",function(){
              	  $(".evaluations .evaluation-response-li").remove();
                });
        		console.log("2s后刷新本页，刷新开始");
        		//5秒后跳转至首页
                window.setTimeout("window.location='courtSearchDetail.jsp'",2000);
        	};
        },
        error: function() {
          alert("抱歉，发布评论出错了。");console.log("抱歉，发布评论失败！未能发送到服务器。");
        }
        }); //ajax 已得到发送评论到服务器
        console.log("ajax结束");
    }
    /** 点击取消 **/
     $("body").on("click","#cancle-temp",function(){
      $(".evaluations .evaluation-response-li").slideUp("slow",function(){
      $(".evaluations .evaluation-response-li").remove();
      });
      $(".evaluation-tool-a").slideDown();
    });

    /** 鼠标hover切换图片 **/
    $(".courtImg-small li").click(function(){
      $(this).parent().find("li").removeClass("active");
      $(this).addClass("active");
      var imgSrc = $(this).find("img").attr("src");
      $(".courtImg-big > img").attr("src",imgSrc);
    });

    /** 列表排序 **/
    $('#courtRecord').jplist({
          itemsBox: '.recordTable',
          itemPath: '.tbl-item',
          panelPath: '.jplist-panel'
        });
  });
  </script>  
 </body>
</html>