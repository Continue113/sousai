<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

  <!-- 搜赛提示对话框-->
  <div id="sousaiRemindDialog" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="sousaiRemindDialogAll" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h5 id="sousaiRemindDialogAll">搜赛网提醒：</h5>
  </div>
  <div class="modal-body">
  	<div id="SRDcontent"></div>
  	<div id="SRDadd" class="SRDadd">搜赛网小提示，删除之前请先确认该目标无相关联的其他场地、比赛、评论、收藏！</div>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    <button class="btn btn-success hide">确定</button>
  </div>
  </div>
  <!-- background-navbar-head --> 
  <div class="navbar navbar-inverse navbar-fixed-top"> 
   <div class="navbar-inner"> 
    <div class="pull-left"> 
     <ul class="breadcrumb">
      <li>您好，管理员：<span id="userId" data-userid='<s:property value="#session.userBean.userId"/>'><s:property value="#session.userBean.userName"/></span></a>！ <a href="processLogout">退出</a></li>      
     </ul> 
    </div> 
   </div> 
  </div> 
  <!-- /background-navbar-head --> 