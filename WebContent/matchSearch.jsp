<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>比赛搜索 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网比赛搜索页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.matchSearch.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
 </head> 
 <body class="matchSearch"> 
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset2"> 
     <img src="img/logo.png" /> 
    </div> 
    <s:include value="searchbox.jsp" />
    <!-- 搜索框 --> 
   </div> 
   <div class="row"> 
    <div class="span8 offset2"> 
     <div class="text-center adFirst">
       这里是ad.no1 
     </div> 
     <div class="search-remind"> 
      <p><i class="icon-th-list"></i>&nbsp;找到相关比赛&nbsp;<span>1230</span>&nbsp;场</p> 
     </div> 
     <div class="searchbox-ad"> 
      <form class="form-horizontal" action="" method=""> 
       <fieldset> 
        <legend>比赛搜索</legend> 
        <div class="control-group"> 
         <label class="control-label" for="searchKey">关&nbsp;&nbsp;键&nbsp;&nbsp;词：</label> 
         <div class="controls"> 
          <input type="text" id="searchKey" placeholder="请输入搜索关键词" /> 
          <a href="#" class="btn btn-small pull-right">转换到场地搜索界面</a> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchType">比赛类型：</label> 
         <div class="controls"> 
          <s:include value="selectMatchType.jsp" />
          <!-- /选择比赛类型 --> 
         </div> 
        </div> 
        <div class="control-group matchState"> 
         <label class="control-label" for="matchState">比赛状态：</label> 
         <div class="controls form-inline"> 
          <label class="checkbox"><input type="checkbox" name="matchState_applying" checked="checked" />报名中&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchState_playing" checked="checked" />比赛中&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchState_played" checked="checked" />已结束&nbsp;&nbsp;</label> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchTime">比赛时间：</label> 
         <div class="controls form-inline"> 
          <div class="input-append"> 
           <input type="text" class="input-small height-mini" id="matchTimefrom" name="from" placeholder="请选择开始日期" /> 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择开始日期"><i class="icon-calendar"></i></span> 
          </div> 
          <label for="to">—</label> 
          <div class="input-append"> 
           <input type="text" class="input-small" id="matchTimeto" name="to" placeholder="请选择结束日期" /> 
           <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="一天以内结束的比赛，日期为同一天"><i class="icon-calendar"></i></span> 
          </div> 
          <label class="checkbox"><input type="checkbox" name="matchTime_days" class="matchTime" />工作日&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchTime_saturday" class="matchTime" />星期六&nbsp;&nbsp;</label> 
          <label class="checkbox"><input type="checkbox" name="matchTime_sunday" class="matchTime" />星期日&nbsp;&nbsp;</label> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="matchPlace">比赛地点：</label> 
         <div class="controls form-inline"> 
          <!-- 选择省市区三级下拉框 --> 
          <s:include value="selectPCC.jsp" />
          <input type="submit" value="搜&nbsp;&nbsp;索" class="btn span2 btn-success btn-small pull-right" /> 
         </div> 
        </div> 
       </fieldset> 
      </form> 
     </div> 
     <!-- /searchbox-ad --> 
     <div class="matchs" id="matchsList"> 
      <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
      <div class="jplist-ios-button">
        展开面板 
      </div> 
      <!-- panel --> 
      <div class="jplist-panel jplist-panel-top"> 
       <div class="jplist-drop-down" data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
        <ul> 
         <li><span data-path="default" data-default="true">排序方式</span></li> 
         <li><span data-path=".matchBox-releaseTime" data-order="asc" data-type="datetime">发布时间</span><i class="icon-arrow-up"></i></li> 
         <li><span data-path=".matchBox-matchTime" data-order="asc" data-type="datetime">比赛时间</span><i class="icon-arrow-up"></i></li> 
         <li><span data-path=".matchBox-title" data-order="asc" data-type="text">比赛名称</span><i class="icon-arrow-up"></i></li> 
         <li><span data-path=".matchBox-state" data-order="asc" data-type="text">比赛状态</span><i class="icon-arrow-up"></i></li> 
        </ul> 
       </div> 
       <!-- 选择省市区三级下拉框 -->
       <s:include value="selectPCC.jsp" />
       <!-- js本地关键字查找 --> 
       <div class="text-filter-box input-append"> 
        <input data-path=".matchBox-all" type="text" value="" placeholder="请输入关键字" data-control-type="textbox" data-control-name="desc-filter" data-control-action="filter" /> 
        <span class="add-on"><i class="icon-search"></i></span> 
       </div> 
       <!-- 复选框查找比赛状态 --> 
       <div class="jplist-group" data-control-type="checkbox-text-filter" data-control-action="filter" data-control-name="matchBox-state" data-path=".matchBox-state" data-logic="or"> 
        <input value="报名中" id="applying" type="checkbox" /> 
        <label for="applying">报名中</label> 
        <input value="比赛中" id="playing" type="checkbox" /> 
        <label for="playing">比赛中</label> 
        <input value="已结束" id="played" type="checkbox" /> 
        <label for="played">已结束</label> 
       </div> 
       <!-- 复选框查找比赛星期 --> 
       <div class="jplist-group" data-control-type="checkbox-text-filter" data-control-action="filter" data-control-name="matchBox-time" data-path=".matchBox-time" data-logic="or"> 
        <input value="工作日" id="workday" type="checkbox" /> 
        <label for="workday">工作日</label> 
        <input value="星期六" id="saturday" type="checkbox" /> 
        <label for="saturday">星期六</label> 
        <input value="星期日" id="sunday" type="checkbox" /> 
        <label for="sunday">星期日</label> 
       </div> 
      </div> 
      <!-- /panel --> 
      <div class="matchBoxs"> 
       <div class="matchBox">
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">一北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-10</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-pp">乒乓球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-17 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">一北京东城区北京大学体育乓</a></li> 
          <li class="matchBox-state ">报名中</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
       <div class="matchBox">
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">三北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-17</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-zq">足球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-10 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">二北京东城区北京大学体育馆草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-state ">已结束</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div> 
       </div> 
       <div class="matchBox">
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">二北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-16</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-lq">蓝球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-19 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">二北京东城区北京大学体育馆草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-state ">报名中</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div> 
       </div> 
       <div class="matchBox"> 
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">九北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-17</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-pp">乒乓球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-24 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">二北京东城区北京大学体育馆草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-state ">比赛中</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div> 
       </div> 
       <div class="matchBox"> 
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">二北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-15</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-zq">足球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-18 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">二北京东城区北京大学体育馆草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-state ">比赛中</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div> 
       </div> 
       <div class="matchBox"> 
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">五北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-7</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-lq">蓝球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-18 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">二北京东城区北京大学体育馆草根杯乒乓球比赛北京东城区草根杯乒乓球&gt;</a></li> 
          <li class="matchBox-state ">报名中</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div> 
       </div> 
       <div class="matchBox"> 
        <div class="matchBox-all"> 
         <div class="matchBox-title"> 
          <a href="#">二北京东城区草根杯乒乓球比赛</a> 
          <span class="pull-right">发布时间：<span class="matchBox-releaseTime">2013-10-30</span></span> 
         </div> 
         <div class="hidden"> 
          <span class="matchBox-type-pp">乒乓球</span> 
         </div> 
         <ul class="breadcrumb"> 
          <li class="matchBox-time"> 
           <div class="matchBox-matchTime">
             2013-10-1 
            <p>星期五</p> 
           </div> 
           <div class="line">
             &nbsp;-&nbsp; 
           </div> 
           <div>
             2013-10-20 
            <p>星期日</p> 
           </div></li> 
          <li class="matchBox-court "><a href="#">二北京东城区北京大学体育馆草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-state ">报名中</li> 
          <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
          <li class="matchBox-btns "><a href="#" class="btn btn-mini">收藏比赛</a><a href="#" class="btn btn-mini">查看详细</a></li> 
         </ul> 
        </div>
       </div> 
      </div> 
      <!-- /matchBoxs --> 
      <div class="jplist-no-results jplist-hidden"> 
       <p>暂时没有结果哟！</p> 
      </div> 
      <div class="jplist-ios-button">
        展开分页 
      </div> 
      <!-- panel 用在分页 --> 
      <div class="jplist-panel"> 
       <!-- pagination --> 
       <div class="jplist-pagination" data-control-type="pagination" data-control-name="paging" data-control-action="paging" data-items-per-page="5"> 
        <!-- default items per page (if no "items per page" dropdown on the page) --> 
       </div> 
      </div> 
      <!-- /jplist-panel --> 
     </div> 
     <!-- /matchs --> 
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
  <s:include value="footer.jsp" />
  <!-- 页尾信息 --> 
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script> 
  <script src="js/jquery.ui.datepicker-zh-CN.js"></script> 
  <script src="js/jquery.wordLimit.js"></script> 
  <script src="js/jplist.min.js"></script> 
  <script>
  $(function(){
     /** 日期选择器 **/
     $( "#matchTimefrom" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#matchTimeto" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#matchTimefrom" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
    /** /日期选择器 **/

    /** 鼠标滑过比赛列表 **/
    $("div.matchBox").hover(function(){
      $(this).addClass("box-active");
    },function(){
      $(this).removeClass("box-active");
    });
    /****/

    /** 字数限制，溢出省略 **/
    $(".matchBox-field").wordLimit(20);
    $(".matchBox-info > a").wordLimit(28);
    /****/

    /** 列表排序 **/
    $('#matchsList').jplist({
          itemsBox: '.matchBoxs',
          itemPath: '.matchBox',
          panelPath: '.jplist-panel'
        });
    /** 重复点击下拉列表改变排序 **/
    var sortflag=1;
    $("div[data-control-action='sort'] li").click(function(){
      if(sortflag==1){
            //执行方法;
            $(this).find("span").attr("data-order","desc").end().find("i").removeClass("icon-arrow-up").addClass("icon-arrow-down");
            sortflag=0;
        }else{
            //执行方法;
            $(this).find("span").attr("data-order","asc").end().find("i").removeClass("icon-arrow-down").addClass("icon-arrow-up");
            sortflag=1;
        }
    });
  })
  </script>  
 </body>
</html>