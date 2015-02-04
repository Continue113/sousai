<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
  <div class="navbar navbar-inverse navbar-fixed-top"> 
   <div class="navbar-inner"> 
    <div class="pull-left"> 
     <ul class="breadcrumb"> 
      <li><a href="#" id="collectLink">收藏网站</a> <span class="divider">|</span></li> 
      <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=822547462&site=qq&menu=yes">在线联系</a> <span class="divider">|</span></li>
      <s:if test="#session.userBean.userName!=null">
      <li>您好，<a tabindex="-1" href="userCenter-editUser.jsp"><span id="userId" data-userid='<s:property value="#session.userBean.userId"/>' data-useremail='<s:property value="#session.userBean.userEmail"/>'><s:property value="#session.userBean.userName"/></span></a>！ <a href="processLogout">退出</a> <span class="divider">|</span></li> 
      <li class="dropdown"> <a class="dropdown-hover" href="javascript:void(0);">我的比赛<b class="caret"></b></a> 
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
     <s:if test="#session.regionBean.cName!=null">
     <p>[<span id="city" class="sessionCity" data-sessionregion="{'pName':'<s:property value="#session.regionBean.pName"/>','pId':'<s:property value="#session.regionBean.pId"/>','cName':'<s:property value="#session.regionBean.cName"/>','cId':'<s:property value="#session.regionBean.cId"/>','code':'<s:property value="#session.regionBean.code"/>',}" ><s:property value="#session.regionBean.cName"/></span>]<a href="#" id="changeCityBtn">切换</a></p>
     </s:if>
     <s:else>
     <p>[<span id="city" data-sessionregion="{'pName':'北京市','pId':'2','cName':'北京市','cId':'33','code':'110100'}">北京市</span>]是你所在的城市吗？<a href="javascript:void(0);" id="changeCityBtn">切换</a></p>
     </s:else> 
     <div class="form-inline hdcity-hide">
      <select class="selectSessionProvince span2">
      <option value="0" data-regionid="0">请选择省</option><option value="110000" data-order="0" data-regionid="2">北京市</option><option value="120000" data-order="0" data-regionid="3">天津市</option><option value="130000" data-order="0" data-regionid="4">河北省</option><option value="140000" data-order="0" data-regionid="5">山西省</option><option value="150000" data-order="0" data-regionid="6">内蒙古自治区</option><option value="210000" data-order="0" data-regionid="7">辽宁省</option><option value="220000" data-order="0" data-regionid="8">吉林省</option><option value="230000" data-order="0" data-regionid="9">黑龙江省</option><option value="310000" data-order="0" data-regionid="10">上海市</option><option value="320000" data-order="0" data-regionid="11">江苏省</option><option value="330000" data-order="0" data-regionid="12">浙江省</option><option value="340000" data-order="0" data-regionid="13">安徽省</option><option value="350000" data-order="0" data-regionid="14">福建省</option><option value="360000" data-order="0" data-regionid="15">江西省</option><option value="370000" data-order="0" data-regionid="16">山东省</option><option value="410000" data-order="0" data-regionid="17">河南省</option><option value="420000" data-order="0" data-regionid="18">湖北省</option><option value="430000" data-order="0" data-regionid="19">湖南省</option><option value="440000" data-order="0" data-regionid="20">广东省</option><option value="450000" data-order="0" data-regionid="21">广西壮族自治区</option><option value="460000" data-order="0" data-regionid="22">海南省</option><option value="500000" data-order="0" data-regionid="23">重庆市</option><option value="510000" data-order="0" data-regionid="24">四川省</option><option value="520000" data-order="0" data-regionid="25">贵州省</option><option value="530000" data-order="0" data-regionid="26">云南省</option><option value="540000" data-order="0" data-regionid="27">西藏自治区</option><option value="610000" data-order="0" data-regionid="28">陕西省</option><option value="620000" data-order="0" data-regionid="29">甘肃省</option><option value="630000" data-order="0" data-regionid="30">青海省</option><option value="640000" data-order="0" data-regionid="31">宁夏回族自治区</option><option value="650000" data-order="0" data-regionid="32">新疆维吾尔自治区</option><option value="710000" data-order="0" data-regionid="6000">台湾省</option><option value="810000" data-order="0" data-regionid="7000">香港特别行政区</option><option value="820000" data-order="0" data-regionid="8000">澳门特别行政区</option>
      </select>
      <select class="selectSessionCity span2 "><option value="0" data-regionid="0">请先选择省</option></select>
      <button class="btn" id="ensureCityBtn" type="button">确定</button> 
     </div> 
    </div> 
   </div> 
  </div> 
  <!-- /navbar -->
