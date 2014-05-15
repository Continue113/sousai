<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*searchbox.jsp
*describe:用于每个页面LOGO旁的搜索框
*author:king
*date:2015-5-6
*/%>
    <div class="span7"> 
     <ul class="nav nav-tabs searchboxMenu" id="searchbox-tab"> 
      <li class="active"><a href="#searchbox-match" data-toggle="tab">比赛</a></li> 
      <li><a href="#searchbox-court" data-toggle="tab">场地</a></li> 
     </ul> 
     <div class="tab-content"> 
      <div id="searchbox-match" class="tab-pane active"> 
       <div class="input-prepend input-append"> 
        <span class="add-on"><i class="icon-search icon-white"></i></span> 
        <input type="text" class="span4" placeholder="输入您想要的比赛" /> 
        <span class="add-on add-selectType"><span>所有分类</span><b class="caret"></b></span> 
        <button class="btn btn-success btn-search" type="button">&nbsp;搜&nbsp;索</button> 
       </div> 
       <div class="searchbox-other"> 
        <a href="#">发布比赛</a> 
        <p><a href="#">高级搜索</a></p> 
       </div> 
      </div> 
      <div id="searchbox-court" class="tab-pane"> 
       <div class="input-prepend input-append"> 
        <span class="add-on"><i class="icon-search icon-white"></i></span> 
        <input type="text" class="span4" placeholder="输入您要找的场地" /> 
        <span class="add-on add-selectType">所有分类<b class="caret"></b></span> 
        <button class="btn btn-success btn-search" type="button">&nbsp;搜&nbsp;索</button> 
       </div> 
       <div class="searchbox-other"> 
        <a href="#">发布场地</a> 
        <p><a href="#">高级搜索</a></p> 
       </div> 
      </div> 
     </div>
     <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h5 id="myModalLabel">请选择一个分类</h5><a href="#">所有分类</a>
  </div>
  <div class="modal-body">
    <div class="breadcrumb-fff">
      <span class="breadcrumb-title">热门分类:</span> 
       <ul class="breadcrumb"> 
        <li><a href="#">乒乓球&nbsp;&nbsp;</a></li> 
        <li><a href="#">羽毛球&nbsp;&nbsp;</a></li> 
        <li><a href="#">足球&nbsp;&nbsp;</a></li> 
        <li><a href="#">篮球&nbsp;&nbsp;</a></li> 
        <li><a href="#">网球&nbsp;&nbsp;</a></li> 
        <li><a href="#">排球</a></li> 
       </ul> 
       <hr/>
      <span class="breadcrumb-title">小球类:</span> 
       <ul class="breadcrumb"> 
        <li><a href="#">乒乓球&nbsp;&nbsp;</a></li> 
        <li><a href="#">羽毛球&nbsp;&nbsp;</a></li> 
        <li><a href="#">台球&nbsp;&nbsp;</a></li> 
        <li><a href="#">门球&nbsp;&nbsp;</a></li> 
        <li><a href="#">网球&nbsp;&nbsp;</a></li> 
        <li><a href="#">高尔夫</a></li> 
       </ul>
        <span class="breadcrumb-title">大球类:</span>
       <ul class="breadcrumb"> 
        <li><a href="#">保龄球&nbsp;&nbsp;</a></li> 
        <li><a href="#">足球&nbsp;&nbsp;</a></li> 
        <li><a href="#">篮球&nbsp;&nbsp;</a></li> 
        <li><a href="#">排球</a></li> 
       </ul>
        <span class="breadcrumb-title">娱乐类:</span> 
       <ul class="breadcrumb"> 
        <li><a href="#">钓鱼&nbsp;&nbsp;</a></li> 
        <li><a href="#">登山</a></li> 
       </ul>
        <span class="breadcrumb-title">棋牌类:</span> 
       <ul class="breadcrumb"> 
        <li><a href="#">麻将&nbsp;&nbsp;</a></li> 
        <li><a href="#">围棋&nbsp;&nbsp;</a></li> 
        <li><a href="#">象棋&nbsp;&nbsp;</a></li> 
        <li><a href="#">扑克牌&nbsp;&nbsp;</a></li> 
        <li><a href="#">桥牌</a></li> 
       </ul>
        <span class="breadcrumb-title">文艺类:</span> 
       <ul class="breadcrumb"> 
        <li><a href="#">街舞&nbsp;&nbsp;</a></li> 
        <li><a href="#">唱歌&nbsp;&nbsp;</a></li> 
        <li><a href="#">跳舞&nbsp;&nbsp;</a></li> 
        <li><a href="#">健身操</a></li>
       </ul>
      </div>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    <!--<button class="btn btn-success">确定</button>-->
  </div>
</div> 
     <div class="row"> 
      <div class="span8 breadcrumb-fff"> 
       <ul class="breadcrumb"> 
        <li class="breadcrumb-title">热门搜索:</li> 
        <li><a href="#">山东杯</a></li> 
        <li><a href="#">山东杯</a></li> 
        <li><a href="#">山东杯</a></li> 
        <li><a href="#">山东杯</a></li> 
        <li><a href="#">山东杯</a></li> 
        <li><a href="#">更多&gt;&gt;</a></li> 
       </ul> 
       <hr class="span5" /> 
      </div> 
     </div> 
    </div> <!-- /span7 searchbox -->