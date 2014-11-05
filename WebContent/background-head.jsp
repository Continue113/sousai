<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
  <!-- background-navbar-head --> 
  <div class="navbar navbar-inverse navbar-fixed-top"> 
   <div class="navbar-inner"> 
    <div class="pull-left"> 
     <ul class="breadcrumb">
      <li>您好，<span id="userId"><s:property value="#session.userBean.userName"/></span></a>！ <a href="processLogout">退出</a></li>      
     </ul> 
    </div> 
   </div> 
  </div> 
  <!-- /background-navbar-head --> 