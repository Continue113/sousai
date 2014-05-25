<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>我的搜赛 &middot; 我发布的比赛 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-我发布的比赛" /> 
  <meta name="author" content="KING@CQU" />
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" />
  <link href="css/sousai.userCenter.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
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
       <li class="active"><a href="userCenter-myMatch.jsp"><i class="icon-chevron-right"></i> 我发布的比赛</a></li> 
       <li><a href="userCenter-myCollection.jsp"><i class="icon-chevron-right"></i> 我收藏的比赛</a></li> 
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind">
       <ul class="breadcrumb"> 
        <li>比赛信息:</li> 
        <!-- 迭代所有已发布的比赛的比赛数量 -->
        <s:iterator var="match" value="#response.matchlist" status="statu">
        <s:if test="%{#response.matchlist.length !== 0}">
          <li><a href="#"><s:property value="#match.matchType"/><span>(<s:property value="#match.matchTypeNumber"/>)</span></a></li>
        </s:if>
        <s:else>
          <li>还没有发布比赛</li>
        </s:else>
        </s:iterator>
        <!-- /迭代所有已发布的比赛的比赛数量 -->
       </ul>
      </div> 
      <div class="tab-content">
       <div id="myMatch" class="tab-pane active"> 
        <div class="matchs" id="matchsList"> 
         <!-- ios button: show/hide panel 能在小于一定的宽度的情况下隐藏面板 --> 
         <div class="jplist-ios-button">
          展开面板
         </div> 
         <!-- panel --> 
         <div class="jplist-panel jplist-panel-top"> 
          <div class="jplist-drop-down " data-control-type="drop-down" data-control-name="sort" data-control-action="sort" data-datetime-format="{year}-{month}-{day}"> 
           <ul>
            <li><span data-path="default">排序方式</span></li>
            <li><span data-path=".matchBox-releaseTime" data-order="asc" data-type="datetime" data-default="true">发布时间</span><i class="icon-arrow-up"></i></li> 
            <li><span data-path=".matchBox-matchTime" data-order="asc" data-type="datetime">比赛时间</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".matchBox-title" data-order="asc" data-type="text">比赛名称</span><i class="icon-arrow-up"></i></li>
            <li><span data-path=".matchBox-state" data-order="asc" data-type="text">比赛状态</span><i class="icon-arrow-up"></i></li>
           </ul>
          </div>
          <!-- jplist分类筛选级联下拉菜单 -->
          <s:if test="%{#response.matchlist.length !== 0}">
          <div class="jplist-drop-down matchType-filter" data-control-type="drop-down" data-control-name="matchType-filter" data-control-action="filter"> 
           <ul> 
            <li><span data-path="default">比赛类型</span></li>
            <!-- 迭代所有已收藏的比赛的比赛类型 -->
            <s:iterator var="match" value="#response.matchTypelist" status="statu">
            <li><span data-path=".courtBox-matchType-<s:property value="#match.matchTypeId"/>"><s:property value="#match.matchType"/></span></li>
            </s:iterator>
            <!-- /迭代所有已收藏的比赛的比赛类型-->
           </ul>
          </div>
          </s:if>
          <!-- /jplist分类筛选级联下拉菜单 --> 
          <!-- checkbox text filter -->
          <div class="jplist-group" data-control-type="checkbox-text-filter" data-control-action="filter" data-control-name="matchBox-state" data-path=".matchBox-state" data-logic="or"> 
           <input value="报名中" id="applying" type="checkbox" /> 
           <label for="applying">报名中</label> 
           <input value="比赛中" id="playing" type="checkbox" /> 
           <label for="playing">比赛中</label> 
           <input value="已结束" id="played" type="checkbox" /> 
           <label for="played">已结束</label> 
          </div> 
          <!-- checkbox text filter --> 
          <div class="jplist-group" data-control-type="checkbox-text-filter" data-control-action="filter" data-control-name="matchBox-time" data-path=".matchBox-time" data-logic="or"> 
           <input value="工作日" id="workday" type="checkbox" /> 
           <label for="workday">工作日</label> 
           <input value="星期六" id="saturday" type="checkbox" /> 
           <label for="saturday">星期六</label> 
           <input value="星期日" id="sunday" type="checkbox" /> 
           <label for="sunday">星期日</label> 
          </div> 
          <!-- filter by description --> 
          <div class="text-filter-box input-append"> 
           <input data-path=".matchBox-all" type="text" value="" placeholder="请输入关键字" data-control-type="textbox" data-control-name="desc-filter" data-control-action="filter" /> 
           <span class="add-on"><i class="icon-search"></i></span> 
          </div> 
         </div>
         <!-- /panel --> 
         <div class="matchBoxs"> 

          <!-- 迭代match -->
          <s:iterator var="match" value="#response.matchlist" status="statu">
          <div class="matchBox"><div class="matchBox-all"> 
           <div class="matchBox-title">
            <a href="matchSearchDetail.jsp?match.id=<s:property value="#match.matchId"/>"><s:property value="#match.matchTitle"/></a>
            <span class="pull-right">发布时间：<span class="matchBox-releaseTime"><s:property value="#match.matchReleaseTime"/></span></span>
           </div>
           <div class="hidden">
            <span class="matchBox-type-pp"><s:property value="#match.matchType"/></span>
           </div> 
           <ul class="breadcrumb">
            <li class="matchBox-time">
              <s:if test="%{#statu.matchFirstTime == #statu.matchLastTime}">
              <!-- 若比赛时间为同一天，则只显示一个时间 -->
                <div class="matchBox-matchTime">
                  <s:property value="#match.matchFirstTime"/>
                  <p><s:property value="#match.matchFirstDay"/></p>
                </div>
              </s:if>
              <s:else>
             <div class="matchBox-matchTime">
              <s:property value="#match.matchFirstTime"/>
              <p><s:property value="#match.matchFirstDay"/></p>
             </div>
             <div class="line">
              &nbsp;-&nbsp;
             </div>
             <div>
              <s:property value="#match.matchLastTime"/>
              <p><s:property value="#match.matchLastDay"/></p>
             </div>
              </s:else>
            </li> 
            <li class="matchBox-address "><a href="courtSearchDrtail.jsp?court.id=<s:property value="#match.courtId"/>"><s:property value="#match.matchCourt"/></a></li> 
            <li class="matchBox-state "><s:property value="#match.matchState"/></li> 
            <li class="matchBox-info "><a href="matchSearchDetail.jsp?match.id=<s:property value="#match.matchId"/>"><s:property value="#match.matchInfo"/></a></li> 
            <li class="matchBox-btns "><a href="matchSearchDetail.jsp?match.id=<s:property value="#match.matchId"/>" class="btn btn-mini">查看详细</a></li> 
           </ul> 
          </div></div>
          </s:iterator>
          <!-- /迭代match-->
          
          <div class="matchBox"><div class="matchBox-all"> 
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
            <li class="matchBox-address "><a href="#">一北京东城区北京大学体育乓</a></li> 
            <li class="matchBox-state ">报名中</li> 
            <li class="matchBox-info "><a href="#">北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球比赛北京东城区草根杯乒乓球</a></li> 
            <li class="matchBox-btns "><a href="#" class="btn btn-mini">修改规程</a><a href="#" class="btn btn-mini">查看详细</a></li> 
           </ul> 
          </div></div> 
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
       </div>
       <!-- /myMatch --> 
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

  <div class="modal hide fade" id="modal-loadRecord">
    <div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <h5><span id="matchtitle-ldRcd"></span>&nbsp;&middot;&nbsp;录入成绩</h5>
    </div>
    <div class="modal-body"><textarea></textarea></div>
    <div class="modal-footer">
      <button class="btn btn-remove" data-dismiss="modal">取消</button>
      <a href="#" class="btn btn-success btn-remove" id="ensureload">确定发布</a>
      <a href="#" class="btn" id="btn-preview">预览</a>
    </div>
</div>
  <s:include value="footer.jsp" /><!-- 页首导航条 -->

  <script src="js/jquery.wordLimit.js"></script>
  <script src="js/jplist.min.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script>
  <script>
    $(function () {
      //鼠标滑过场地列表
    $("div.matchBox").hover(function(){
      $(this).addClass("box-active");
    },function(){
      $(this).removeClass("box-active");
    });
      //字数限制，溢出省略
    $(".matchBox-address > a").wordLimit(20);
    $(".matchBox-info > a").wordLimit(28);
    //排序分页
    $('#matchsList').jplist({
          itemsBox: '.matchBoxs',
          itemPath: '.matchBox',
          panelPath: '.jplist-panel'
        });
    //重复点击下拉列表改变排序
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
    
    /** tinymce **/
    tinymce.init({
      mode: 'textareas',
      language :'zh_CN',
      menubar: false,
      toolbar_items_size: 'small',
      plugins: [
                "advlist autolink autosave"
        ],
        height:300,
    toolbar1: "newdocument bold italic underline | fontsizeselect | bullist numlist",
    image_advtab: true,
    // update validation status on change
    onchange_callback: function(editor) {
      tinyMCE.triggerSave();
      $("#" + editor.id).valid();
    }
    });
       //点击录入成绩弹出对话框输入成绩 
    $("a.btn-loadRecord").click(function(){
      var matchtitle = $(this).parent().parent().parent().find(".matchBox-title > a").text();
      $("#matchtitle-ldRcd").text(matchtitle);
      $("#modal-loadRecord").modal({
        backdrop:false,
        keyboard:false
      });
      $(".btn-remove").click(function(){
        $("#modal-loadRecord").modal("hide");
        $("#modal-loadRecord").remove();
      });
    /*$("#ensureload").click(function(){
        $("#modal-loadRecord").modal("hide");
        $("#modal-loadRecord").remove();
      });
    */
    });

    })
</script>
</body></html>