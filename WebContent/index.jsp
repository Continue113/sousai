<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%/*
*index.jsp
*describe:index是搜赛网首页
*author:king
*date:2015-5-6
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网注册页面" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/bootstrap.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.index.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]--> 
 </head> 
 <body class="index"> 
  <s:include value="navbar.jsp" /><!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset1"> 
     <img src="img/logo.png" /> 
    </div>
    <s:include value="searchbox.jsp" /><!-- 搜索框 --> 
   </div> 
   <div class="row container scmn"> 
    <!--scmn:shortcutmain mchnb:matchnumber dsc:描述--> 
    <div class="span8 offset2 breadcrumb-fff"> 
     <ul class="breadcrumb"> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/pingpong-grey.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">乒乓球</span> 
         <span class="u-dsc">比赛&nbsp;&nbsp;<span class="u-mchnb">32</span>&nbsp;&nbsp;场</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
      <li class="m-sc"> <a class="blk" target="_blank" href="#"> <img alt="乒乓球" src="img/defaultIcon.png" class="u-pic" /> 
        <div class="m-dsc"> 
         <span class="u-tt">开发中</span> 
         <span class="u-dsc">coming soon</span> 
        </div> 
        <div class="u-label">
          进入比赛列表页面 
        </div> </a> </li> 
     </ul> 
    </div> 
   </div> 
   <div class="ftpush"></div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" /><!-- 页尾信息 -->
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script>
  $(function(){
    
    /** 首页快捷图标 **/
    $(".m-sc").hover(function(){
      $(this).find("div[class=u-label]").slideDown();
      var imgurl = $(this).find("img").attr("src");
      if(imgurl !== "img/defaultIcon.png"){
        $(this).find("img").attr("src",imgurl.split("-")[0]+".png");
      };
    },function(){
      $(this).find("div[class=u-label]").slideUp();
      var imgurl = $(this).find("img").attr("src");
      if(imgurl !== "img/defaultIcon.png"){
        $(this).find("img").attr("src",imgurl.split(".")[0]+"-grey.png");
      };
    });

    initPCC();
  })

  </script>  
 </body>
</html>