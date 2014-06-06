<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<% 
String courtName=request.getParameter("court.name");
String matchType=request.getParameter("court.matchType");
String courtType=request.getParameter("courtType");
String courtRegion=request.getParameter("region");
String courtAddr=request.getParameter("court.addr");
String courtTableNum=request.getParameter("court.tableNum");
String courtTel=request.getParameter("court.tel");
String courtPrice=request.getParameter("court.price");
String courtWorkTime=request.getParameter("court.workTime");
String courtIntro=request.getParameter("intro");
%>
<!DOCTYPE html>
<html>
 <head> 
  <title><%=courtName %> &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网<%=courtName %>场地详情页面" /> 
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
       <%=courtName %>
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
         <li class="lastImg"><img src="img/pingpong-grey.png" /></li> 
        </ul> 
       </div> 
      </div> 
      <div class="span5"> 
       <table> 
        <tbody> 
         <tr> 
          <td valign="top">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</td> 
          <td class="td2"><%=courtAddr %></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">场地类型：</td> 
          <td class="td2"><%=courtType%></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">比赛类型：</td> 
          <td class="td2"><%=matchType%></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">球&nbsp;&nbsp;台&nbsp;数：</td> 
          <td class="td2"><%=courtTableNum%></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">联系电话：</td> 
          <td class="td2"><%=courtTel%></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</td> 
          <td class="td2"><%=courtPrice%></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">举办比赛：</td> 
          <td class="td2">暂无</td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
         <tr> 
          <td valign="top">开放时间：</td> 
          <td class="td2"><%=courtWorkTime%></td> 
          <td valign="bottom">（2013-10-18更新）</td> 
         </tr> 
        </tbody> 
       </table> 
      </div> 
     </div> 
     <div class="span8 courtSearchDetail-content"> 
      <ul class="nav nav-tabs courtDetailMenu"> 
       <li class="active" id="courtContentTab"><a>场地介绍</a></li> 
      </ul> 
      <div class="tab-content"> 
       <div id="courtContent" class="tab-pane active"> 
        <div> 
         <p><%=courtIntro%></p> 
        </div> 
       </div> 
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
  <script>
  $(function(){
    // 鼠标hover切换图片
    $(".courtImg-small li").click(function(){
      $(this).parent().find("li").removeClass("active");
      $(this).addClass("active");
      var imgSrc = $(this).find("img").attr("src");
      $(".courtImg-big > img").attr("src",imgSrc);
    });
    var d = new Date(),
    rlsDate = d.toLocaleDateString();
    rlsDate = rlsDate.replace(/年/,"-");
    rlsDate = rlsDate.replace(/月/,"-");
    rlsDate = rlsDate.replace(/日/," ");
    $('td[valign="bottom"]').text("("+rlsDate+"更新)");
  })
  </script>  
 </body>
</html>