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
           <p class="releasetime">2013年12月29日 15:39</p> 
           <a class="pull-right" href="#myModal">我要补充下</a> 
          </div> 
         </div> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName" style="width:70px;">
             KINGLIONXXXXXX 
           </div> 
          </div> 
          <div class="media-body"> 
           <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39</p> 
           <a class="pull-right" href="#myModal">我要补充下</a> 
           <div class="media evaluation evaluation-first"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName" style="width:70px;">
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
           <div class="media evaluation"> 
            <div class="pull-left"> 
             <img class="media-object" src="img/defaultImg.png" /> 
             <div class="evaluationName" style="width:70px;">
               KINGLIONXXXXXX 
             </div> 
            </div> 
            <div class="media-body"> 
             <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
             <p class="releasetime">2013年12月29日 15:39</p> 
             <a class="pull-right" href="#myModal">我要补充下</a> 
            </div> 
           </div> 
          </div> 
         </div> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName">
            123456789KING
           </div> 
          </div> 
          <div class="media-body"> 
           <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
           <p class="releasetime">2013年12月29日 15:39</p> 
           <a class="pull-right" href="#myModal">我要补充下</a> 
          </div> 
         </div> 
         <div class="media evaluation"> 
          <div class="pull-left"> 
           <img class="media-object" src="img/defaultImg.png" /> 
           <div class="evaluationName">
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
          <img class="media-object" src="img/defaultImg.png" /> 
          <div class="evaluationName">
           <s:if test="#session.userBean.userName!=null">
           <s:property value="#session.userBean.userId"/>
           </s:if>
           <s:else>SOUSAI.COM</s:else>
          </div> 
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
          <button id="FBPL" class="span2 btn btn-success pull-right">发表评论</button> 
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
  	/** 拉取评论 **/
  	$.ajax({
  		type: "POST",
        url: "showMsgs",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "courtId": 1,
        },
        dataType: "json",
        success: function(rspdata) {
        	alert(rspdata);
        },
        error: function() {
          //alert("抱歉，获取评论出错了。");
        },
        }); //ajax 已得到评论信息

     /** 评论回复 **/
     $("body").on("click",".media-body > a",function(){
      $(".evaluations .evaluation-response").slideUp(
        "slow").remove();
      $(".media-body > a").slideDown();
      $(this).hide();
      var img = 'img/defaultImg.png'
      var name = 'TEST1250'
      var respStr = '<div class="media evaluation-response hide"><div class="pull-left"><img class="media-object" src="'+img+'" /><div class="evaluationName">'+name+'</div></div>';
      respStr +='<div class="media-body"><div class="inputRadios pull-right"><textarea id="inputResponse"></textarea><div class="radios pull-right"><label for="publicResponse1" class="radio inline"><input type="radio" id="publicResponse1" name="responseState" value="publicResponse" checked="checked"/>公开</label><label for="hideResponse1"class="radio inline"><input type="radio" id="hideResponse1" name="responseState" value="hideResponse"/>匿名</label></div></div><button class="btn pull-right" id="cancle">取消</button><button id="fbpl" class="span2 btn btn-success pull-right"">发表评论</button><input type="submit" class="span2 btn btn-success pull-right hide" value="发表评论"/> </div></div>';
      if( $(this).parents(".media-body").length == 2){
        $(this).parent().parent().parent().append(respStr).end().parent().find(".evaluation-response").slideDown();
      }
      else{
      $(this).parent().append(respStr).end().parent().find(".evaluation-response").slideDown();
    }
    return false;
     });
    /** 直接发表评论 **/
    $("#FBPL").click(function(){
      var respVal = $(this).parents().find("textarea").val(),
          respName = $(this).parent().parent().find(".evaluationName").text(),
          respImgSrc = $(this).parent().parent().find("img").attr("src"),
          respDate = new Date(),
          respTime = respDate.toLocaleString(),          
          respCode = '<div class="media evaluation"><div class="pull-left"><img class="media-object" src="'+respImgSrc+'" /><div class="evaluationName">'+respName+'</div></div><div class="media-body"><p>'+respVal+'</p><p class="releasetime">'+respTime+'</p><a class="pull-right" href="#myModal">我要补充下</a></div></div>',
          respState = $('input:radio[name="responseState"]:checked').val(),
          target = $(".evaluations");

      if(respVal!==""){
      	$.ajax({
  		type: "POST",
        url: "relMsg",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "message.parentId": 0,  //若为评论，则为0；若为回复则为所回复评论的id
          "message.userId": <s:property value="#session.userBean.userId"/>, //发表评论或回复的用户id
          "message.courtId": 1, //评论或回复所在的场地id
          "message.mesg": respVal, //评论或回复的具体内容
          "message.visible": respState, //是否匿名,默认为0不匿名，1为匿名
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
        }); //ajax 已得到城市
        target.append(respCode);
      }
    });
    /** 我要补充下 **/
     $("body").on("click","#fbpl",function(){
      var respVal = $(this).parents().find("textarea").val()
      var respName = $(this).parent().parent().find(".evaluationName").text()
      var respImgSrc = $(this).parent().parent().find("img").attr("src")
      var respDate = new Date()
      var respTime = respDate.toLocaleString()
      var target = $(this).parent().parent().parent()
      var respCode = '<div class="media evaluation'
      if(target.find(".evaluation").length == 0){
        respCode += ' evaluation-first'
      }
      respCode += '"><div class="pull-left"><img class="media-object" src="'+respImgSrc+'" /><div class="evaluationName">'+respName+'</div></div><div class="media-body"><p>'+respVal+'</p><p class="releasetime">'+respTime+'</p><a class="pull-right" href="#myModal">我要补充下</a></div></div>'
      if(respVal!==""){
      $(".media-body > a").slideDown();
      target.append(respCode);
      $(".evaluations .evaluation-response").slideUp("slow").remove();
    }
    });
    /** 点击取消 **/
     $("body").on("click","#cancle",function(){
      $(".evaluations .evaluation-response").slideUp("slow").remove();
      $(".media-body > a").slideDown();
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
    $(".evaluationName").wordLimit(9);
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