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
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style>
  /** 现有场地框 **/
  .existCourtsBox{border: 3px solid #ddd;
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
  .existCourtsBox tr{cursor: pointer;}
  .existCourtsBox tr.active {
    font-weight: bold;
  }
  /** 添加场地按钮 **/
  .existCourtsBox .jplist-panel > .text-center > .btn {margin-top: 10px;float: none;}
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
        <form id="releaseMatchForm" class="form-horizontal" action="relMatch" method="post" enctype="multipart/form-data"> 
         <fieldset> 
          <legend>比赛基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="searchKey">比赛名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputMatchTitle" name="match.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchType">比赛类型：</label> 
           <div class="controls"> 
            <select class="selectMatchType" name="mcId">
              <option value=0>请选择比赛类型</option>
            </select>
            <select class="selectParticularMatchType hide" name="match.type">
              <option value=0>请选择比赛类型</option>
            </select>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：</label>
            <input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchTime">比赛时间：</label> 
           <div class="controls form-inline"> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimefrom" name="match.beginTime" placeholder="请选择开始日期" required="required" /> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择开始日期"><i class="icon-calendar"></i></span> 
            </div> 
            <label for="to">—</label> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimeto" name="match.endTime" placeholder="请选择结束日期" required="required" /> 
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
          <div class="control-group existCourtsBox"> 
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
              <td>TESTING DATA</td> 
              <td>TESTING DATA</td> 
              <td>TESTING DATA</td> 
              <td>TESTING DATA</td> 
              <td>TESTING DATA</td> 
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
             <button class="btn" type="button" id="newCourtBtn">没有我要的场地，我要添加新场地</button> 
            </div> 
           </div> 
           <!-- /jplist-panel --> 
          </div> 
          <div class="control-group"> 
           <div class="releaseCourtBox"> 
            <label class="checkbox"><input type="checkbox" id="newCourtCheckbox" name="matchState_all" />添加新场地&nbsp;&nbsp;(<span id="newCourtRegion"><span class="newCourtProvince">请选择省</span>-<span class="newCourtCity">请选择市</span>-<span class="newCourtCountry">请选择区</span></span>)</label> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchRules">比赛规程：</label> 
          </div> 
          <textarea id="inputMatchRules" name="match.rule" required="required"></textarea> 
          <div class="control-group"> 
           <div class="controls"> 
            <button type="button" class="btn btn-success pull-right" id="rlsMatch">确定发布</button>
            <button type="reset" class="btn pull-right" id="resetMatchForm">重置</button>
            <button type="button" class="btn pull-right" name="preView">预览</button> 
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
  //初始化比赛类型
  function initMatchType(){
    //console.log("调用初始化比赛类型");
    $.post("showMC", null, function(data) {
      //alert("回调内容为:"+data);//id name 
      var type = $(".selectMatchType");
      for (var i = 0; i < data.length; i++) {
        type.append("<option value=\"" + data[i].id + "\">" + data[i].name + "</option>");
      }
    });
  }

  //立即初始化比赛类型
  initMatchType();
  
  //选择比赛地点时，修改下方添加新场地的区域
  $("#releaseMatchForm .controls > .selectProvince").change(function(){
	  var tgPrt = $(this).parent();
	  $("#newCourtRegion > .newCourtProvince").text( tgPrt.find(".selectProvince option:selected").text() );
	  $("#newCourtRegion > .newCourtCity").text( tgPrt.find(".selectCity option:selected").text() );
	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
  });
  $("#releaseMatchForm .controls > .selectCity").change(function(){
	  var tgPrt = $(this).parent();
	  $("#newCourtRegion > .newCourtCity").text( tgPrt.find(".selectCity option:selected").text() );
	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
  });
  $("#releaseMatchForm .controls > .selectCountry").change(function(){
	  var tgPrt = $(this).parent();
	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
  });
		  
		  
  //点击大类比赛类型获得具体比赛类型
  $(".selectMatchType").change(function() {
  //tgPrt: targetparent 目标父元素
  var tgPrt = $(this).parent();
  if (tgPrt.find(".selectMatchType option:selected").attr("value") == 0) {
	  //当点击默认选项时什么都不做
  }else {
    $.ajax({
      type: "POST",
      url: "showMT",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {
        "mcId": tgPrt.find(".selectMatchType option:selected").attr("value"),
      },
      dataType: "json",
      success: function(rspdata) {
        var sctParMatchType = $(".selectParticularMatchType");
        sctParMatchType.empty().append("<option value=0>请选择比赛类型</option>");
        for (var i = 0; i < rspdata.length; i++) {
          sctParMatchType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
        }
        sctParMatchType.append("<option value=-1>其他</option>"); //每一个大类比赛类型的“其他”选项
      },
      error: function() {
        alert("抱歉，获取比赛类型出错了。");
      },
    }); //ajax 已得到具体比赛类型
    //出现具体比赛类型下拉列表并且不再隐藏
    tgPrt.find(".selectParticularMatchType").removeClass("hide");
  }
  });

  //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
  var omtf = 0;//other match type flag ；0表示默认，1表示已经选过“其他”选项
  $(".selectParticularMatchType").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent();
    if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == -1 && omtf == 0){
      //移除name属性，即不会使用select内容提交
      $(this).removeAttr("name");
      //当用户选择其他的时候，弹出隐藏的label和input
      tgPrt.find(".omthide").slideDown();
      //添加输入框的name属性，并改变omtf
      $("#otherMatchType").attr("name","court.matchType");
      omtf = 1;
    }else if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 0) {
      //存在场地类型的下拉列表时 当用户选择具体比赛类型为默认选项时的时候，就将场地类型下拉列表框中原有的“请选择”字样删除。
      if ($(".selectCourtType").length != 0) {
        $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
      };
      //若已选择“其他”则改为默认选项
      if( omtf == 1){
        $(this).attr("name","court.matchType");
        tgPrt.find(".omthide").slideUp();
        $("#otherMatchType").removeAttr("name");
        omtf = 0;
      }
    }else {
      //若已选择“其他”则改为默认选项
      if( omtf == 1){
        $(this).attr("name","court.matchType");
        tgPrt.find(".omthide").slideUp();
        $("#otherMatchType").removeAttr("name");
        omtf = 0;
      }
      //存在场地类型的下拉列表时 当用户选择具体比赛类型时，同时获取相应场地类型
      if ($(".selectCourtType").length != 0) {
        console.log("获得场地类型");
        $.ajax({
          type: "POST",
          url: "showCT",
          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
          data: {
            "matchId": tgPrt.find(".selectParticularMatchType option:selected").attr("value"),
          },
          dataType: "json",
          success: function(rspdata) {
            var sctCourtType = $(".selectCourtType");
            sctCourtType.empty().append("<option value=0>请选择场地类型</option>");
            for (var i = 0; i < rspdata.length; i++) {
              sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
            }
          },
          error: function() {
            alert("抱歉，获取场地类型出错了。");
          },
        }); //ajax 已得到场地类型
      }
    }
  });


  //点击确认发布，获取地区，比赛类型，场地类型
  $("#rlsMatch").click(function(){
    $("#releaseMatchForm").submit();
  });

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

  /** 选中表格某行 **/
  $("tbody>tr").click(function(){
    $("tr").removeClass("active");
    $(this).addClass("active");
  });

  /** 列表排序 **/
  $('.existCourtsBox').jplist({
        itemsBox: '.table',
        itemPath: '.tritem',
        panelPath: '.jplist-panel'
  });

  /** 搜索现有场地 **/
  $("#searchExistedCourt").click(function(){
	  //tgPrt: targetparent 目标父元素 ；regionId 默认为零
	  var tgPrt = $(this).parent(),regionId = 0;
	  //获取省市区信息
	  var provinceId = tgPrt.find(".selectProvince option:selected").attr("value"),
	      cityId = tgPrt.find(".selectCity option:selected").attr("value"), 
	      countryId = tgPrt.find(".selectCountry option:selected").attr("value");
	  if(provinceId == 0){
		  alert("省，市，区请至少选择一个为比赛区域！");		  
	  }else {
		  
		  if(cityId == 0 && countryId == 0){ //若市，区都为零，则说明只有省
			  regionId = provinceId;
		  }else if(cityId != 0 && countryId == 0){ //若省、市不为零，但区为零，则说明最深选中为市
			  regionId = cityId;
		  }else if(cityId != 0 && countryId != 0){ //若省，市，区都不为零，则说明最深选中为区
			  regionId = countryId;
		  }
	  
	  //alert(province + city + country);  //得到省市区信息
	  	
	  /*
	  *测试数据
	  *
	  var rspdatainame = '球场漫长名称萨达都是俺的阿斯顿爱戴阿斯顿爱戴',
	  rspdataiaddress = '详细地址萨达萨达阿锁打打打阿斯顿阿锁打阿飞暗示法阿飞啊方法飞萨芬十分阿飞啊'+province +city +country,
	  rspdataitype = '体育馆',
	  rspdatainumber = '50',
	  rspdataimatchnumber = '20次',
	  rspdataihref = 'http://www.baidu.com' ;
	  $(".existCourtsBox > table > tbody").empty().append(
			'<tr class="tritem"><td>'
			+ rspdatainame + '</td><td>'
	        + rspdataiaddress + '</td><td>'
	        + rspdataitype + '</td><td>'
	        + rspdatainumber + '</td><td>'
	        + rspdataimatchnumber + '</td><td><a target="_blank" href="'
	        + rspdataihref + '">详细</a></td></tr>'
	        );
	  */
	  
	  //ajax 获取已有场地信息列表
	  $.ajax({
	      type: "POST",
	      url: "getCourtM",
	      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	      data: {
	        "regionId": regionId,
	      },
	      dataType: "json",
	      success: function(rspdata) {
	        var existCourtsTbody = $(".existCourtsBox > table > tbody");
	        existCourtsTbody.empty(); //清空已有场地列表
	        alert(rspdata);console.log(rspdata);
	        /**
	        for (var i = 0; i < rspdata.length; i++) {
	        	existCourtsTbody.append(
	        			'<tr class="tritem"><td>'
	    	        	+ rspdata[i].name + '</td><td>'
	    	        	+ rspdata[i].address + '</td><td>'
	    	        	+ rspdata[i].type + '</td><td>'
	    	        	+ rspdata[i].number + '</td><td>'
	    	        	+ rspdata[i].matchnumber + '</td><td><a target="_blank" href="'
	    	        	+ rspdata[i].href + '">详细</a></td></tr>'	        			
	        	);
	        }**/
	      },
	      error: function() {
	        alert("抱歉，获取已有场地信息出错了。");
	      },
	    }); //ajax 已得到相应地点场地列表
	  
    $("div.existCourtsBox").slideDown(); //将已有场地类表滑出
    //若添加新场地列表存在，则隐藏并删除
    if($("#newCourtCheckbox").is(":checked")){
      $("div.inputCourt").slideUp();
      $("div.inputCourt").remove();
      $("#newCourtCheckbox").attr("checked",false);//将添加新场地的复选框设置为非选中状态
    }
    }
  });
  /** 添加新场地 **/
  $("#newCourtBtn").click(function () {
    $("#newCourtCheckbox").click();
  });

  $("#newCourtCheckbox").click(function () {
    if($(this).is(":checked")){ //若添加新场地的复选框 是选中状态时则生成添加新场地的表单
      var inputCourtStr = '<div class="inputCourt hide"><div class="control-group"><label class="control-label" for="courtName">场地名称：</label><div class="controls"><input type="text" id="courtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtAddress">详细地址：</label><div class="controls"><input type="text" id="courtAddress" name="court.addr" placeholder="如：某某桥某某路XXXXXXX杯乒乓球季度赛某楼" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtType">场地类型：</label><div class="controls"><select class="selectCourtType" name="courtTypeId"><option value="0">请先选择比赛类型</option></select></div></div></div>';
    $(inputCourtStr).insertAfter($(this).parent());
    //根据已选的比赛类型获取场地类型
    if($(".selectParticularMatchType option:selected").attr("value") != 0){
    $.ajax({
        type: "POST",
        url: "showCT",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "matchId": $(".selectParticularMatchType option:selected").attr("value"),
        },
        dataType: "json",
        success: function(rspdata) {
          var sctCourtType = $(".selectCourtType");
          sctCourtType.empty().append("<option value=0>请选择场地类型</option>");
          for (var i = 0; i < rspdata.length; i++) {
            sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</  option>");
          }
        },
        error: function() {
          alert("抱歉，获取场地类型出错了。");
        },
      }); //ajax 已得到场地类型
    }

    $("div.inputCourt").slideDown();
    $("div.existCourtsBox").slideUp();
  }else {//若复选框不是选中的，则滑出已有场地列表并删除添加新场地的表单
    $("div.existCourtsBox").slideDown();
    $("div.inputCourt").slideUp();
    $("div.inputCourt").remove();
  }
  });

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
  };

  /** 清空比赛表单 **/
  $("#resetMatchForm").click(function(){
    matchValidator.resetForm();
  });
});
</script> 
 </body>
</html>