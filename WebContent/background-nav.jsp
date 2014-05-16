<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*background-nav.jsp
*describe:搜赛网管理员 待处理提醒 以及侧边导航
*author:king
*date:2015-5-15
*/%>
<!-- background-remind & backgroundMenu -->
       <ul class="breadcrumb background-remind"> 
        <li>提醒:</li> 
        <li><a href="#">待处理的比赛信息<span>(5)</span></a></li>
       </ul>
     <div class="span2 backgroundMenu "> 
      <ul class="nav nav-stacked nav-side">
       <li><h5><a href="#"><i class="icon-minus"></i>系统发布:</a></h5></li>
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li>
       <li class="active"><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li>
       <li><h5><a href="#"><i class="icon-minus"></i>数据维护:</a></h5></li>
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li>
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li>
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li>
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li>
       <li><h5><a href="#"><i class="icon-minus"></i>网站统计</a></h5></li>
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li>
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li>
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li>
       </ul>
     </div> 
<!-- /background-remind & backgroundMenu -->