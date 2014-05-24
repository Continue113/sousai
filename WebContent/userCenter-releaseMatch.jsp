<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布比赛 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布比赛" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.userCenter.css" rel="stylesheet" /> 
  <style>
/** 现有场地框 **/
.oldCourtsBox{border: 3px solid #ddd;
-webkit-border-radius: 0 0 6px 6px;
-moz-border-radius: 0 0 6px 6px;
border-radius: 0 0 6px 6px;}
/** 避免验证后无圆角 **/
.input-append span.add-on{
-webkit-border-radius: 0 4px 4px 0;
-moz-border-radius: 0 4px 4px 0;
border-radius: 0 4px 4px 0;
}
/** 现有场地表格 **/
.oldCourtsBox tr{cursor: pointer;}
.oldCourtsBox tr.active {
  font-weight: bold;
}
/** 添加场地按钮 **/
.oldCourtsBox .jplist-panel > .text-center > .btn {margin-top: 10px;float: none;}
/** 最小宽度情况下 **/
@media (max-width: 480px) {
  /** 搜索现有场地按钮 **/
  #searchExistedCourt{margin-top: 5px;}
}
  </style> 
 </head> 
 <body class="userCenter"> 
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span4"> 
     <img src="img/logo.png" /> 
     <span class="logotext">我的搜赛</span> 
    </div> 
    <s:include value="searchbox.jsp" />
    <!-- 搜索框 --> 
   </div>
   <!-- /row --> 
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
       <li class="active"><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
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
       <div id="releaseMatch" class="tab-pane active"> 
        <div class="page-header"> 
         <h4>比赛基本信息</h4> 
        </div> 
        <form id="releaseMatchForm" class="form-horizontal" action=""> 
         <fieldset> 
          <legend>比赛基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="searchKey">比赛名称：</label> 
           <div class="controls"> 
            <input class="span5 add-on" type="text" id="inputMatchTitle" name="inputMatchTitle" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchType">比赛类型：</label> 
           <div class="controls"> 
            <s:include value="selectMatchType.jsp" />
            <!-- /选择比赛类型 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchTime">比赛时间：</label> 
           <div class="controls form-inline"> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimefrom" name="inputMatchTimefrom" placeholder="请选择开始日期" required="required" /> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择开始日期"><i class="icon-calendar"></i></span> 
            </div> 
            <label for="to">—</label> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimeto" name="inputMatchTimeto" placeholder="请选择结束日期" required="required" /> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="一天以内结束的比赛，日期为同一天"><i class="icon-calendar"></i></span> 
            </div> 
           </div> 
           <div class="controls controls-error"></div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchPlace">比赛地点：</label> 
           <div class="controls form-inline"> 
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
            <a href="#" class="btn btn-success pull-right" id="searchExistedCourt">搜索现有球场</a> 
           </div> 
          </div> 
          <div class="control-group oldCourtsBox"> 
           <table class="table table-striped table-hover"> 
            <thead> 
             <tr> 
              <th>球场名称</th> 
              <th>详细地址</th> 
              <th>类型</th> 
              <th>球台数</th> 
              <th>比赛次数</th> 
              <th>详细</th> 
             </tr> 
            </thead> 
            <tbody> 
             <tr class="tritem"> 
              <td>奥体中心乒乓球俱乐部</td> 
              <td>袁家岗大公馆立交奥体路185号羽毛球馆</td> 
              <td>体育馆</td> 
              <td>15-30</td> 
              <td>19次</td> 
              <td><a href="#">详细</a></td> 
             </tr> 
             <tr class="tritem"> 
              <td>奥体中心乒乓球俱乐部</td> 
              <td>袁家岗大公馆立交奥体路185号羽毛球馆</td> 
              <td>体育馆</td> 
              <td>15-30</td> 
              <td>19次</td> 
              <td><a href="#">详细</a></td> 
             </tr> 
             <tr class="tritem"> 
              <td>奥体中心乒乓球俱乐部</td> 
              <td>袁家岗大公馆立交奥体路185号羽毛球馆</td> 
              <td>体育馆</td> 
              <td>15-30</td> 
              <td>19次</td> 
              <td><a href="#">详细</a></td> 
             </tr> 
            </tbody> 
           </table> 
           <div class="jplist-no-results jplist-hidden"> 
            <p>暂时没有结果哟！</p> 
           </div> 
           <div class="jplist-ios-button">
             展开分页 
           </div> 
           <!-- panel 用在分页 --> 
           <div class="jplist-panel"> 
            <!-- pagination --> 
            <div class="jplist-pagination" data-control-type="pagination" data-control-name="paging" data-control-action="paging" data-items-per-page="10"> 
             <!-- default items per page (if no "items per page" dropdown on the page) --> 
            </div> 
            <div class="text-center"> 
             <button id="newCourtBtn" class="btn">没有我要的场地，我要添加新场地</button> 
            </div> 
           </div> 
           <!-- /jplist-panel --> 
          </div> 
          <div class="control-group"> 
           <div class="releaseCourtBox"> 
            <label class="checkbox"><input type="checkbox" id="newCourtCheckbox" name="matchState_all" />添加新场地&nbsp;&nbsp;(重庆-沙坪坝区)</label> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchRules">比赛规程：</label> 
          </div> 
          <textarea id="inputMatchRules" name="inputMatchRules" required="required"></textarea> 
          <div class="control-group"> 
           <div class="controls"> 
            <input type="submit" class="btn btn-success " name="release" value="确定发布" /> 
            <input type="reset" class="btn" id="resetMatchForm" value="清空内容" /> 
            <button class="btn" name="preView">预览</button> 
           </div> 
          </div> 
         </fieldset> 
        </form> 
       </div> 
       <!-- /releaseMatch --> 
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
  <s:include value="footer.jsp" />
  <!-- 页首导航条 --> 
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script> 
  <script src="js/jquery.ui.datepicker-zh-CN.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.validate.min.js"></script> 
  <script src="js/jplist.min.js"></script> 
  <script>
    $(function () {
     /** 日期选择器 **/
     $( "#inputMatchTimefrom" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#inputMatchTimeto" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      onClose: function( selectedDate ) {
        $( "#matchTimefrom" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
    /** /日期选择器 **/

    /** 选中表格某行 **/
    $("tbody>tr").click(function(){
      $("tr").removeClass("active");
      $(this).addClass("active");
    });
    /****/

    /** 列表排序 **/
    $('.oldCourtsBox').jplist({
          itemsBox: '.table',
          itemPath: '.tritem',
          panelPath: '.jplist-panel'
        });

    /** 搜索现有场地 **/
    $("#searchExistedCourt").click(function(){
      $("div.oldCourtsBox").slideDown();
      if($("#newCourtCheckbox").is(":checked")){
        $("div.inputCourt").slideUp();
        $("div.inputCourt").remove();
        $("#newCourtCheckbox").attr("checked",false);
      }
    });
    /** 添加新场地 **/
    $("#newCourtBtn").click(function () {
      $("#newCourtCheckbox").click();
    });

    $("#newCourtCheckbox").click(function () {
      if($(this).is(":checked")){
        var inputCourtStr = '<div class="inputCourt hide"><div class="control-group"><label class="control-label" for="courtName">场地名称：</label><div class="controls"><input type="text" id="courtName" name="inputCourtName" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtAddress">详细地址：</label><div class="controls"><input type="text" id="courtAddress" name="inputCourtAddress" placeholder="如：某某桥某某路XXXXXXX杯乒乓球季度赛某楼" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtType">场地类型：</label><div class="controls"><select name="selectCourtType"><option value="0">请选择场地类型</option><option value="courtType-inner">室内</option><option value="courtType-outer">室外</option><option value="courtType-zq">体育局</option><option value="courtType-pp">俱乐部</option><option value="courtType-lq">社区</option><option value="courtType-zq">单位</option><option value="courtType-zq">学校</option><option value="courtType-pp">临时</option><option value="courtType-lq">公共</option><option value="courtType-zq">其他</option></select></div></div></div>'
      $(inputCourtStr).insertAfter($(this).parent());
      $("div.inputCourt").slideDown();
      $("div.oldCourtsBox").slideUp();
    }
    else {
      $("div.oldCourtsBox").slideDown();
      $("div.inputCourt").slideUp();
      $("div.inputCourt").remove();
    }
    });
    /****/    
    /** tinymce **/
    tinymce.init({
      mode: 'textareas',
      language :'zh_CN',
      menubar: false,
      toolbar_items_size: 'small',
      plugins: [
                "advlist autolink autosave link image preview ",
                "searchreplace fullscreen ",
                "table"
        ],
        height:300,
    toolbar1: "newdocument bold italic underline | fontsizeselect | bullist numlist | alignleft aligncenter alignright alignjustify | link unlink image searchreplace table | undo redo preview fullscreen",
    image_advtab: true,
    // update validation status on change
    onchange_callback: function(editor) {
      tinyMCE.triggerSave();
      $("#" + editor.id).valid();
    }
    });
    /** 表单验证 **/
    var matchValidator = $("#releaseMatchForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
      submitHandler: function(){alert("发布比赛成功");},
      ignore: "",
    rules: {
      inputMatchTitle: {
        minlength: 6,
        maxlength: 30
      }
    },
    messages: {
      inputMatchTitle: {
        required: "请输入比赛名称",
        minlength: "比赛名称至少6个字符",
        maxlength: "比赛名称至多30个字符"
      },
      inputMatchRules: "请输入比赛规程",
      inputCourtName: "请输入场地名称",
      inputCourtAddress: "请输入场地地址",
      selectMatchType: "请选择一种比赛类型",
      selectCourtType: "请选择一种场地类型",
      inputMatchTimefrom: "请选择开始日期",
      inputMatchTimeto: "请选择结束日期",
      inputMatchRules: "请填写比赛规程"
    },
    errorPlacement: function(error, element){
      if(element.parent().hasClass("input-append")){
        error.appendTo($(".controls-error"));
      }
      else if (element.is("textarea")) {
          error.insertAfter($("label[for='inputMatchRules']"));
        }
        else error.insertAfter(element);
    }
  });

    matchValidator.focusInvalid = function() {
      // put focus on tinymce on submit validation
      if( this.settings.focusInvalid ) {
        try {
          var toFocus = $(this.findLastActive() || this.errorList.length && this.errorList[0].element || []);
          if (toFocus.is("textarea")) {
            tinyMCE.get(toFocus.attr("id")).focus();
          } else {
            toFocus.filter(":visible").focus();
          }
        } catch(e) {
          // ignore IE throwing errors when focusing hidden elements
        }
      }
    }

    /** 清空比赛表单 **/
    $("#resetMatchForm").click(function(){
      matchValidator.resetForm();
    });
    })
</script> 
 </body>
</html>