<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*courtSearch.jsp
*describe:courtSearch用于搜赛网高级搜索场地以及显示主页搜索栏搜索场地结果
*author:king
*date:2015-5-6
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>场地搜索 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网场地搜索页面" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.courtSearch.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]--> 
 </head> 
 <body class="courtSearch"> 
  <s:include value="navbar.jsp" /><!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset2"> 
     <img src="img/logo.png" /> 
    </div> 
    <s:include value="searchbox.jsp" /><!-- 搜索框 -->
   </div> 
   <div class="row"> 
    <div class="span8 offset2"> 
     <div class="text-center adFirst">
      这里是ad.no1
     </div> 
     <div class="search-remind">
      <p><i class="icon-th-list"></i>&nbsp;找到相关场地&nbsp;<span>1230</span>&nbsp;场</p>
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal" action="" method=""> 
       <fieldset> 
        <legend>场地搜索</legend> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="searchKey" placeholder="请输入搜索关键词" /> 
          <a href="#" class="btn btn-small pull-right">转换到比赛搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
         <div class="controls">
         <!-- 选择比赛类型 -->
          <select name="matchType" class="selectMatchType">
            <option value="0">请选择比赛类型</option>
            <option value="matchType-xql" data-for="matchType-xql">小球类</option>
            <option value="matchType-dql" data-for="matchType-dql">大球类</option>
            <option value="matchType-qpl" data-for="matchType-qpl">棋牌类</option>
            <option value="matchType-wyl" data-for="matchType-wyl">文艺类</option>
            <option id="matchType-qt">其他</option>
          </select>
          <select name="matchType-xql" class="matchType-xql hide">
            <option value="0">请选择(小球类)</option>
            <option value="matchType_pingPong">乒乓球</option>
            <option value="matchType_pingPong">羽毛球</option>
            <option value="matchType_pingPong">网球</option>
            <option value="matchType_pingPong">台球</option>
          </select>
          <select name="matchType-dql" class="matchType-dql hide">
            <option value="0">请选择(大球类)</option>
            <option value="matchType_pingPong">篮球</option>
            <option value="matchType_pingPong">足球</option>
            <option value="matchType_pingPong">排球</option>
          </select>
          <select name="matchType-qpl" class="matchType-qpl hide">
            <option value="0">请选择(棋牌类)</option>
            <option value="matchType_pingPong">麻将</option>
            <option value="matchType_pingPong">围棋</option>
            <option value="matchType_pingPong">象棋</option>
            <option value="matchType_pingPong">扑克牌</option>
          </select>
          <select name="matchType-wyl" class="matchType-wyl hide">
            <option value="0">请选择(文艺类)</option>
            <option value="matchType_pingPong">街舞</option>
          </select>
          <!-- /选择比赛类型 --> 
         </div>
        </div>
        <div class="control-group"> 
         <label class="control-label" for="courtType">场地类型：</label> 
         <div class="controls">
          <!-- 选择场地类型 --> 
          <select name="courtType"> 
            <option value="0">请选择场地类型</option>
            <option value="courtType-inner">室内</option>
            <option value="courtType-outer">室外</option>
            <option value="courtType-zq">体育局</option>
            <option value="courtType-pp">俱乐部</option>
            <option value="courtType-lq">社区</option> 
            <option value="courtType-zq">单位</option>
            <option value="courtType-zq">学校</option>
            <option value="courtType-pp">临时</option> 
            <option value="courtType-lq">公共</option> 
            <option value="courtType-zq">其他</option>
          </select>
          <!-- /选择场地类型 --> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">场地地点：</label> 
         <div class="controls form-inline">
          <select class="selectProvince span2" name="matchPlace"> <option value="">重庆</option> </select>
          <select class="selectCity span2 hide" name="matchPlace"> <option value="">重庆</option> </select>
          <select class="selectCountry span2 hide" name="matchPlace"> <option value="">沙坪坝区</option> </select> 
          <input type="submit" value="搜&nbsp;&nbsp;索" class="btn span2 btn-success btn-small pull-right" /> 
         </div> 
        </div> 
       </fieldset> 
      </form> 
     </div> 
     <!-- /searchbox-ad --> 
     <div id="myCourt" class="tab-pane "> 
<div class="courts" id="courtsList"> 
         <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
         <div class="jplist-ios-button">
          展开面板
         </div> 
         <!-- panel --> 
         <div class="jplist-panel jplist-panel-top"> 
          <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
           <ul> 
            <li><span data-path=".courtBox-releaseTime" data-order="asc" data-type="datetime" data-default="true">发布时间</span></li> 
            <li><span data-path=".courtBox-recordNumb" data-order="asc" data-type="number">比赛次数</span></li> 
            <li><span data-path=".courtBox-title" data-order="asc" data-type="text">标题</span></li> 
            <li><span data-path=".courtBox-infoNumb" data-order="asc" data-type="number">赛场</span></li> 
           </ul> 
          </div> 
          <!-- jplist分类筛选级联下拉菜单 --> 
          <div class="jplist-drop-down matchType-filter" data-control-type="drop-down" data-control-name="matchType-filter" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">比赛类型</span></li> 
            <li><span data-path=".courtBox-matchType-xql" data-forcn="matchType-filter-xql">小球类</span></li>
            <li><span data-path=".courtBox-matchType-dql" data-forcn="matchType-filter-dql">大球类</span></li>
            <li><span data-path=".courtBox-matchType-qpl" data-forcn="matchType-filter-qpl">棋牌类</span></li>
            <li><span data-path=".courtBox-matchType-wyl" data-forcn="matchType-filter-wyl">文艺类</span></li>
            <li><span data-path=".courtBox-matchType-qt" data-forcn="matchType-filter-qt">其他</span></li>
           </ul>
          </div>

          <div class="jplist-drop-down matchType-filter-xql hide" data-control-type="drop-down" data-control-name="matchType-filter-xql" data-control-action="filter"> 
           <ul>
            <li><span data-path="default">请选择小球类型</span></li>
            <li class="divider"></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">乒乓球</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-pp">羽毛球</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-lq">网球</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">台球</span></li>
           </ul>
          </div>

          <div class="jplist-drop-down matchType-filter-dql hide" data-control-type="drop-down" data-control-name="matchType-filter-dql" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">请选择大球类型</span></li>
            <li class="divider"></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">篮球</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-pp">足球</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-lq">排球</span></li>
           </ul>
          </div>

          <div class="jplist-drop-down matchType-filter-qpl hide" data-control-type="drop-down" data-control-name="matchType-filter-qpl" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">请选择棋牌类型</span></li>
            <li class="divider"></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">麻将</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-pp">围棋</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-lq">象棋</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">扑克牌</span></li>
           </ul>
          </div>

          <div class="jplist-drop-down matchType-filter-wyl hide" data-control-type="drop-down" data-control-name="matchType-filter-wyl" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">请选择文艺类型</span></li>
            <li class="divider"></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">街舞</span></li>
           </ul>
          </div>
          <!-- /jplist分类筛选级联下拉菜单 --> 
          <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="courtType-filter" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">场地类型</span></li> 
            <li><span data-path=".courtBox-courtType-inner">室内</span></li> 
            <li><span data-path=".courtBox-courtType-outer">室外</span></li> 
            <li class="divider"></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">体育局</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-pp">俱乐部</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-lq">社区</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">单位</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">学校</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-pp">临时</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-lq">公共</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">其他</span></li>
           </ul>
          </div>  
          <!-- filter by description --> 
          <div class="text-filter-box input-append"> 
           <input data-path=".courtBox-block" type="text" value="" placeholder="请输入关键字" data-control-type="textbox" data-control-name="desc-filter" data-control-action="filter" /> 
           <span class="add-on"><i class="icon-search"></i></span> 
          </div> 
         </div>
         <!-- /jplist-panel --> 
         <div class="courtBoxs"> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">1成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">1</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">1</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">2成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">2</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">2</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">4成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">10</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">20</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">5成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">10</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">30</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">6成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">20</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">20</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">7成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">10</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">20</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">8成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">40</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">18</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">9成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">11</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">10</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">10成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">15</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">24</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">11成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">10</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">20</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">12成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">16</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">9</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
          <div class="courtBox"> 
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="#">13成都1873乒乓球馆</a>
             <a href="#" class="btn btn-mini pull-right">查看详细</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">10</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">5</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div>
         </div>
         <!-- /courtBoxs --> 
         <div class="jplist-no-results jplist-hidden">
          <p>暂时没有结果哟！</p>
          <div class="jplist-ios-button">
          展开分页
         </div>
         </div> 
         <!-- panel --> 
         <div class="jplist-panel"> 
          <!-- pagination --> 
          <div class="jplist-pagination" data-control-type="pagination" data-control-name="paging" data-control-action="paging" data-items-per-page="5"> 
           <!-- default items per page (if no "items per page" dropdown on the page) --> 
          </div> 
         </div>
         <!-- /jplist-panel --> 
        </div> 
        <!-- /courts -->
     </div>
     <!-- /courts --> 
    </div>
    <!-- /span8 offset2 --> 
    <div class="span1"> 
     <div class="text-center adSecond">
      这里是ad.no2
     </div> 
    </div> 
   </div> 
   <!-- /row --> 
   <div class="ftpush"> 
   </div> 
  </div>
  <!-- /container --> 
  <s:include value="footer.jsp" /><!-- 页尾信息 -->
  <!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/jquery.wordLimit.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script src="js/jplist.min.js"></script> 
  <script>
  $(function(){
    /** 鼠标hover matchbox **/
    $("div.courtBox").hover(function(){
      $(this).addClass("box-active");
    },function(){
      $(this).removeClass("box-active");
    });
    /****/

    /** 字数限制，溢出省略 **/
    $(".courtBox-address").wordLimit(20);
    $(".courtBox-evaluation p").wordLimit();
    /****/

    /** 列表排序 **/
    $('#courtsList').jplist({
          itemsBox: '.courtBoxs',
          itemPath: '.courtBox',
          panelPath: '.jplist-panel'
        });

    /** 重复点击下拉列表改变排序 **/
    var sortflag=1;
    $("div[data-control-action='sort'] li").click(function(){
      if(sortflag==1){
            //执行方法;
            $(this).find("span").attr("data-order","desc");
            sortflag=0;
        }else{
            //执行方法;
            $(this).find("span").attr("data-order","asc");
            sortflag=1;
        }
    });
    /** jplist分类筛选级联下拉菜单 **/
    $(".matchType-filter ul>li").click(function(){
              var datafor = $(this).find("span").data('forcn');
              var targetParent = $(this).parent().parent().parent();
              $(targetParent).find("div.hide").hide();
              $(targetParent).find("."+datafor).show();
            });
  })
  </script>  
 </body>
</html>