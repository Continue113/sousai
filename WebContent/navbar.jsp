<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
      <select class="selectProvince span2"><option value="0">请选择省</option><option value="110000" data-order="0">北京市</option><option value="120000" data-order="0">天津市</option><option value="130000" data-order="0">河北省</option><option value="140000" data-order="0">山西省</option><option value="150000" data-order="0">内蒙古自治区</option><option value="210000" data-order="0">辽宁省</option><option value="220000" data-order="0">吉林省</option><option value="230000" data-order="0">黑龙江省</option><option value="310000" data-order="0">上海市</option><option value="320000" data-order="0">江苏省</option><option value="330000" data-order="0">浙江省</option><option value="340000" data-order="0">安徽省</option><option value="350000" data-order="0">福建省</option><option value="360000" data-order="0">江西省</option><option value="370000" data-order="0">山东省</option><option value="410000" data-order="0">河南省</option><option value="420000" data-order="0">湖北省</option><option value="430000" data-order="0">湖南省</option><option value="440000" data-order="0">广东省</option><option value="450000" data-order="0">广西壮族自治区</option><option value="460000" data-order="0">海南省</option><option value="500000" data-order="0">重庆市</option><option value="510000" data-order="0">四川省</option><option value="520000" data-order="0">贵州省</option><option value="530000" data-order="0">云南省</option><option value="540000" data-order="0">西藏自治区</option><option value="610000" data-order="0">陕西省</option><option value="620000" data-order="0">甘肃省</option><option value="630000" data-order="0">青海省</option><option value="640000" data-order="0">宁夏回族自治区</option><option value="650000" data-order="0">新疆维吾尔自治区</option><option value="710000" data-order="0">台湾省</option><option value="810000" data-order="0">香港特别行政区</option><option value="820000" data-order="0">澳门特别行政区</option></select>
      <select class="selectCity span2 hide"></select>
      <button class="btn" id="ensureCityBtn" type="button">确定</button> 
     </div> 
    </div> 
   </div> 
  </div> 
  <!-- /navbar -->
