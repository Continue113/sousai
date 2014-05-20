<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*navbar.jsp
*describe:navbar用于搜赛网页首导航条
*author:king
*date:2015-5-20
*/%>
  <div class="navbar navbar-inverse navbar-fixed-top"> 
   <div class="navbar-inner"> 
    <div class="pull-left"> 
     <ul class="breadcrumb"> 
      <li><a href="#" id="collectLink">收藏网站</a> <span class="divider">|</span></li> 
      <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=822547462&site=qq&menu=yes">在线联系</a> <span class="divider">|</span></li>
      <s:if test="#session.userBean.userName!=null">  
      <li>您好，<a tabindex="-1" href="userCenter-editUser.jsp"><span id="userId"><s:property value="#session.userBean.userName"/></span></a>！ <a href="processLogout">退出</a> <span class="divider">|</span></li> 
      <li class="dropdown"> <a class="dropdown-hover" href="#">我的比赛<b class="caret"></b></a> 
       <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu"> 
        <li><a tabindex="-1" href="userCenter-myMatch.jsp">我发布的比赛</a></li> 
        <li><a tabindex="-1" href="userCenter-myCollection.jsp">我收藏的比赛</a></li> 
        <li><a tabindex="-1" href="userCenter-releaseMatch.jsp">发布比赛</a></li> 
        <li><a tabindex="-1" href="userCenter-releaseCourt.jsp">发布场地</a></li>
        <li><a tabindex="-1" href="userCenter-myCourt.jsp">我发布的场地</a></li>
        <li><a tabindex="-1" href="userCenter-editUser.jsp">编辑账户</a></li> 
       </ul>
     </li>
     </s:if>
     <s:else>
     <li><a href="login.jsp" class="unsignin">朋友，请登录</a> <span class="divider">|</span></li> 
     <li><a href="register.jsp">免费注册</a></li>
     </s:else> 
     </ul> 
    </div> 
    <div class="hdcity pull-right"> 
     <p>[<span id="city"></span>]是你所在的城市吗？<a href="#" id="changeCityBtn">切换</a></p> 
     <div class="form-inline hdcity-hide">
      <select class="selectProvince span1"><option value=0>请选择</option><option value=1>北京</option></select>
      <select class="selectCity span1 hide"><option value=0>请选择</option><option value=1>北京</option></select>
      <button class="btn" id="ensureCityBtn" type="button">确定</button> 
     </div> 
    </div> 
   </div> 
  </div> 
  <!-- /navbar -->
