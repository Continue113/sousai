<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*userCenter-myCourt.jsp
*describe:搜赛网用户中心下我发布的场地
*author:king
*date:2015-5-12
*/%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" /> 
  <title>我的搜赛 &middot; 我发布的场地 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-我发布的场地" /> 
  <meta name="author" content="" />

  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" />
  <link href="css/sousai.userCenter.css" rel="stylesheet" />
</head>
<body class="userCenter">
<s:include value="navbar.jsp" /><!-- 页首导航条 -->
<div class="container"> 
 <div class="hdpush"></div> 
 <div class="row"> 
  <div class="span4"> 
   <img src="img/logo.png" />
   <span class="logotext">我的搜赛</span> 
  </div> 
  <s:include value="searchbox.jsp" /><!-- 搜索框 -->
 </div><!-- /row -->

    <div class="row"> 
    <div class="span11"> 
     <div class="navbar">
      <div class="navbar-inner"> 
       <ul class="nav"> 
        <li class="active"><a href="#">我的搜赛网</a></li>
       </ul>
      </div>
     </div> 
     <div class="span2 mySousaiMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><a href="userCenter-myMatch.jsp"><i class="icon-chevron-right"></i> 我发布的比赛</a></li> 
       <li><a href="userCenter-myCollection.jsp"><i class="icon-chevron-right"></i> 我收藏的比赛</a></li> 
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li class="active"><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind">
       <ul class="breadcrumb"> 
        <li>比赛信息:</li> 
        <li><a href="#">乒乓球<span>(5)</span></a></li> 
        <li><a href="#">羽毛球<span>(5)</span></a></li> 
        <li><a href="#">保宁球<span>(5)</span></a></li> 
        <li><a href="#">网球<span>(5)</span></a></li> 
       </ul>
      </div> 
      <div class="tab-content">
       <div id="myCourt" class="tab-pane active">
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
          <!-- jplist比赛类型筛选 只有发布的类型 -->
          <div class="jplist-drop-down matchType-filter" data-control-type="drop-down" data-control-name="matchType-filter" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">比赛类型</span></li> 
            <li><span data-path=".courtBox-matchType-xql" data-forcn="matchType-filter-xql">乒乓球</span></li>
            <li><span data-path=".courtBox-matchType-dql" data-forcn="matchType-filter-dql">足球</span></li>
            <li><span data-path=".courtBox-matchType-qpl" data-forcn="matchType-filter-qpl">篮球</span></li>
           </ul>
          </div>
          <!-- jplist场地类型筛选 只有发布的类型 --> 
          <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="category-filter10" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">场地类型</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-zq">体育局</span></li>
            <li><span class="pull-right" data-path=".courtBox-courtType-pp">俱乐部</span></li> 
            <li><span class="pull-right" data-path=".courtBox-courtType-lq">社区</span></li> 
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
             <a href="#" class="btn btn-mini pull-right">查看详细</a><a href="#" class="btn btn-mini pull-right">编辑场地</a>
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
         </div>
         <div class="jplist-ios-button">
          展开分页
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
       <!-- /myCourt --> 
      </div>
      <!-- /tab-content --> 
     </div>
     <!-- /span8 offset2 --> 
    </div>
    <!-- /span11 主要代码 --> 
   </div>
   <!-- /row --> 
   <div class="ftpush"></div> 
  </div>
  <!-- /container --> 
  <s:include value="footer.jsp" /><!-- 页首导航条 --> 
  <!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery-1.11.0.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/jplist.min.js"></script> 
  <script src="js/sousai.common.js"></script>
  <script>
    $(function () {
      //鼠标滑过场地列表
    $("div.courtBox").hover(function(){
      $(this).addClass("box-active");
    },function(){
      $(this).removeClass("box-active");
    });
      //字数限制
    $(".courtBox-address > a").wordLimit(20);
    $(".courtBox-evaluation p").wordLimit(20);
    //排序分页
    $('#courtsList').jplist({
          itemsBox: '.courtBoxs',
          itemPath: '.courtBox',
          panelPath: '.jplist-panel'
        });
    //重复点击下拉列表改变排序
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
    /****/
    })
</script>
</body></html>