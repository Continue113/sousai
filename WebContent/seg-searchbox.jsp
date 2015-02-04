<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
    <div class="span7"> 
     <ul class="nav nav-tabs searchboxMenu" id="searchbox-tab"> 
      <li class="active"><a href="#searchbox-match" data-toggle="tab">比赛</a></li> 
      <li><a href="#searchbox-court" data-toggle="tab">场地</a></li> 
     </ul> 
     <div class="tab-content"> 
      <div id="searchbox-match" class="tab-pane active"> 
       <div class="input-prepend input-append span6"> 
        <span class="add-on"><i class="icon-search icon-white"></i></span> 
        <input type="text" class="span5" placeholder="输入您想要的比赛" /> 
        <button class="btn btn-success btn-search" type="button">&nbsp;搜&nbsp;索</button> 
       </div> 
       <div class="span1"> 
        <a href="userCenter-releaseMatch.jsp">发布比赛</a> 
        <p><a href="matchSearchAdv.jsp">高级搜索</a></p> 
       </div> 
      </div> 
      <div id="searchbox-court" class="tab-pane"> 
       <div class="input-prepend input-append span6"> 
        <span class="add-on"><i class="icon-search icon-white"></i></span> 
        <input type="text" class="span5" placeholder="输入您要找的场地" /> 
        <button class="btn btn-success btn-search" type="button">&nbsp;搜&nbsp;索</button> 
       </div> 
       <div class="span1"> 
        <a href="userCenter-releaseCourt.jsp">发布场地</a> 
        <p><a href="courtSearchAdv.jsp">高级搜索</a></p> 
       </div> 
      </div> 
     </div>
     <div class="row"> 
      <div class="span8 breadcrumb-fff"> 
       <ul class="breadcrumb"> 
        <li class="breadcrumb-title">热门搜索:</li> 
        <li><a href="matchSearch.jsp?key=山东杯">山东杯</a></li> 
        <li><a href="matchSearch.jsp?key=山东杯">山东杯</a></li> 
        <li><a href="matchSearch.jsp?key=山东杯">山东杯</a></li> 
        <li><a href="matchSearch.jsp?key=山东杯">山东杯</a></li> 
        <li><a href="matchSearch.jsp?key=山东杯">山东杯</a></li> 
        <li><a href="matchSearchAdv.jsp">更多&gt;&gt;</a></li> 
       </ul> 
       <hr class="span5" /> 
      </div> 
     </div> 
    </div> <!-- /span7 searchbox -->