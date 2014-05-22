<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>&lt;s:property value=&quot;&quot;/&gt;天津市第五届百年皖酒“杯 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网比赛搜索页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <!-- styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.matchSearchDetail.css" rel="stylesheet" /> 
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
     <div class="text-center adFirst">
       这里是ad.no1 
     </div> 
     <div class="matchSearch-remind"> 
      <p><i class="icon-th-list"></i>&nbsp;比赛详情&nbsp;</p> 
     </div> 
     <div class="matchShortInfo"> 
      <a href="#" class="btn btn-mini pull-right">收藏比赛</a> 
      <a href="#" class="btn btn-mini pull-right">修改比赛</a> 
      <a href="#" class="btn btn-mini pull-right">录入成绩</a> 
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
       <div class="title">
         比赛成绩 
       </div> 
       <div class="matchScoreContent">
         比赛进程（状态）是报名中，则不显示比赛成绩这栏。XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX这个页面是在新的窗口打开，添加“修改”和“录入成绩”的按钮，可以修改“比赛规程”和“基本比赛信息”，按钮根据比赛状态（进程），改变按钮出现的情况。根据是否是发布者，出现录入成绩和修改比赛按钮 
       </div> 
      </div> 
      <div class="title">
        天津市第五届百年皖酒“杯 
       <span>比赛规程</span> 
      </div> 
      <div class="match"> 
       <p>天津市第五届百年皖酒“杯XXXXXXXXXX</p> 
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
 </body>
</html>