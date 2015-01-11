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
        <li class="active"><a href="javascript:void(0)">我的搜赛网</a></li> 
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
       <ul class="breadcrumb"><li>比赛信息:</li></ul> 
      </div> 
      <div class="tab-content"> 
       <div id="releaseMatch" class="tab-pane active">
      <!--编辑比赛 开始-->
        <s:include value="editMatch.jsp" />
      <!-- /编辑比赛信息 -->
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/jquery.validate.min.js"></script>
  <!-- handlebars template -->
  <script id="existCourts-template" type="text/x-handlebars-template">
    {{#each this}}

		    <tr class="tritem"  data-info="{{data this}}" data-courtid="{{id}}">
				<td>{{name}}</td>
				<td>{{addr}}</td>
				<td>{{courtTypeId}}</td>
				<td>{{tableNum}}</td>
				<td>{{matchCount}}</td>
				<td><a target="_blank" href="courtLink;courtId=?{{id}}">详细</a></td>
			</tr>

    {{/each}}
  </script>
  <script>
  $(function () {
	  //将editMatch修改为适合发布场地页面
	  $(".editMatch").show().find(".btnbar").remove().end().find("div.control-group.hide").show().find();
  //立即初始化比赛类型
  initMatchType();
  //获得已有比赛信息
  userCenterRemind();
  
  //选择比赛地点时，修改下方添加新场地的区域
  $("#releaseMatchForm .controls > .selectProvince").change(function(){
	  //当未选择省就提交表单时，出现提示，当选择省时隐藏未选择省的错误提示
	  $(".matchRegion-error").hide();
	  
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
	  //当点击默认选项时将具体比赛类型隐藏并设为默认状态
	  tgPrt.find(".selectParticularMatchType").hide().empty().append("<option value=0>请选择比赛类型</option>");
	  //若存在场地类型 则将场地类型设置为默认状态 
	  if ($(".selectCourtType").length != 0) {
	  $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
	  }
	  //若已选择“其他”则改为默认选项
      if( omtf == 1){
    	//tgPrt.find(".selectParticularMatchType").attr("name","match.type");
        tgPrt.find(".omthide").slideUp();
        //$("#otherMatchType").removeAttr("name");
        omtf = 0;
      }
      //将otherMatchType中填入已选的具体类型设置为空 val为空，同时value为空
      $("#otherMatchType").val("");
  }else {
      //将otherMatchType中填入已选的具体类型设置为空 val为空，同时value为空
      $("#otherMatchType").val("");
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
        sctParMatchType.append("<option value=1>其他</option>"); //每一个大类比赛类型的“其他”选项
      },
      error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
        sousaiRemindDialog("抱歉，获取比赛类型出错了。");
      },
    }); //ajax 已得到具体比赛类型
    //出现具体比赛类型下拉列表并且不再隐藏
    tgPrt.find(".selectParticularMatchType").show();
  }
  });

  //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
  var omtf = 0;//other match type flag ；0表示默认，1表示已经选过“其他”选项
  $(".selectParticularMatchType").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent();
    if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 1 && omtf == 0){
        //将otherMatchType中填入已选的具体类型设置为空
        $("#otherMatchType").val("");
      //移除name属性，即不会使用select内容提交
      //$(this).removeAttr("name");
      //当用户选择其他的时候，弹出隐藏的label和input
      tgPrt.find(".omthide").slideDown();
      //添加输入框的name属性，并改变omtf
      //$("#otherMatchType").attr("name","match.type");
      omtf = 1;

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
          error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
            sousaiRemindDialog("抱歉，获取场地类型出错了。");
          },
        }); //ajax 已得到场地类型

    }else if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 0) {
      //存在场地类型的下拉列表时 当用户选择具体比赛类型为默认选项时的时候，就将场地类型下拉列表框中原有的“请选择”字样删除。
      if ($(".selectCourtType").length != 0) {
        $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
      };
      //若已选择“其他”则改为默认选项
      if( omtf == 1){
        //$(this).attr("name","match.type");
        tgPrt.find(".omthide").slideUp();
        //$("#otherMatchType").removeAttr("name");
        omtf = 0;
      }
      //将otherMatchType中填入已选的具体类型设置为空
      $("#otherMatchType").val("");
    }else {
      //若已选择“其他”则改为默认选项
      if( omtf == 1){
        //$(this).attr("name","match.type");
        tgPrt.find(".omthide").slideUp();
        //$("#otherMatchType").removeAttr("name");
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
          error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
            sousaiRemindDialog("抱歉，获取场地类型出错了。");
          },
        }); //ajax 已得到场地类型
      }
      //将otherMatchType中填入已选的具体类型
      $("#otherMatchType").val( tgPrt.find(".selectParticularMatchType option:selected").text() );
    }
  });

  //日期选择器
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

  //选中表格某行
  $("tbody").on("click",".tritem",function(event){
    $("tr").removeClass("active");
    $(this).addClass("active");
    var matchCourtId = $(this).attr("data-courtid");
    sousaiRemindDialog(matchCourtId);
    $("#hideCourtId").attr("value",matchCourtId);
    $("#hideIsCourt").attr("value","false");
  });

  //搜索现有场地
  $("#searchExistedCourt").click(function(){
	  //tgPrt: targetparent 目标父元素 ；regionId 默认为零
	  var tgPrt = $(this).parent(),regionId = 0;
	  //获取省市区信息
	  var provinceId = tgPrt.find(".selectProvince option:selected").attr("data-regionid"),
	      cityId = tgPrt.find(".selectCity option:selected").attr("data-regionid"), 
	      countryId = tgPrt.find(".selectCountry option:selected").attr("data-regionid");
	  if(provinceId == 0){
		  sousaiRemindDialog("省，市，区请至少选择一个为比赛区域！");		  
	  }else {
		  
		  if(cityId == 0 && countryId == 0){ //若市，区都为零，则说明只有省
			  regionId = provinceId;
		  }else if(cityId != 0 && countryId == 0){ //若省、市不为零，但区为零，则说明最深选中为市
			  regionId = cityId;
		  }else if(cityId != 0 && countryId != 0){ //若省，市，区都不为零，则说明最深选中为区
			  regionId = countryId;
		  }
	  
	  //sousaiRemindDialog(province + city + country);  //得到省市区信息
	  //设置newCourtRegionId
      $("#hideNewCourtRegionId").attr("value",regionId);
	  
	  //ajax 获取已有场地信息列表
	  $.ajax({
	      type: "POST",
	      url: "getCourtM",
	      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	      data: {
	        "regionId": regionId,
	      },
	      dataType: "json",
	      success: function(data) {
	        var target = $(".existCourtsBox > table > tbody"),template = Handlebars.compile($('#existCourts-template').html());
	        $(".no-results").hide(); //隐藏无结果提醒
		    console.log(data);//sousaiRemindDialog(data);
	        Handlebars.registerHelper("data",function(v){
	          //将当前对象转化为字符串，保存在data-info中
	          console.log(v);
	          var v1 = JSON.stringify(v);
	          //console.log("v1:"+v1);
	          return v1;
	        });
	        target.empty(); //清空tbody
	        target.html(template(data));
	        //若没有相应的结果，给出提醒
	        if($(".tritem").length == 0){
	        	console.log("在您选择的比赛地点没有搜索到已有场地，请更换比赛地点或在此地点添加新场地。");
	        	$(".no-results").show();
	        }
	      },
	      error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	        sousaiRemindDialog("抱歉，获取已有场地信息出错了。");
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
  //添加新场地
  $("#newCourtBtn").click(function () {
    $("#newCourtCheckbox").click();
  });

  $("#newCourtCheckbox").click(function () {
    if($(this).is(":checked")){ //若添加新场地的复选框 是选中状态时则生成添加新场地的表单
      var inputCourtStr = '<div class="inputCourt hide"><div class="control-group"><label class="control-label" for="courtName">场地名称：</label><div class="controls"><input type="text" id="courtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtAddress">详细地址：</label><div class="controls"><input type="text" id="courtAddress" name="court.addr" placeholder="如：某某桥某某路XXXXXXX杯乒乓球季度赛某楼" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtType">场地类型：</label><div class="controls"><select class="selectCourtType" name="court.courtTypeId"><option value="0">请先选择比赛类型</option></select></div></div></div>';
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
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          sousaiRemindDialog("抱歉，获取场地类型出错了。");
        },
      }); //ajax 已得到场地类型
    }

    $("div.inputCourt").slideDown();
    $("div.existCourtsBox").slideUp();

    //删除已有$("#hideCourtId")中的name属性，将value设置为空 .attr("value","")
    $("#hideCourtId").removeAttr("name");
    $("#hideIsCourt").attr("value","ture");
  }else {//若复选框不是选中的，则滑出已有场地列表并删除添加新场地的表单
    $("div.existCourtsBox").slideDown();
    $("div.inputCourt").slideUp();
    $("div.inputCourt").remove();

    //恢复已有$("#hideCourtId")中的name属性，将value设置为空 .attr("value","")
    $("#hideCourtId").attr("name","match.courtId");
    $("#hideIsCourt").attr("value","false");
  }
  });

  //tinymce
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
  
  //表单验证 
  //为比赛地点中的省添加name属性，然后利用validate插件的min=1验证是否选择了省
  $(".controls > .selectProvince").attr("name","selectProvince");
  
  var matchValidator = $("#releaseMatchForm").submit(function() {
    // update underlying textarea before submit validation
    tinyMCE.triggerSave();
  }).validate({
    submitHandler: function(form){
      console.log("发布比赛成功");
      console.log("发布比赛已完成");
      //检查newCourtRegionId
     if( $("#hideNewCourtRegionId").attr("value") == 0){
    	 sousaiRemindDialog("请先找一找某个比赛地点是否已有您要的场地。");
    	 return false;
     }else{
    	 form.submit(); //没有这一句表单不会提交
     }
    },
  rules: {
    "match.name": {
      minlength: 6,
      maxlength: 30
    },
    "court.courtTypeId": {
    	min: 1,
    },
    matchTypeId: {
    	min: 1,
    },
    mcId: {
    	min: 1,
    },
    selectProvince: {//为比赛地点中的省添加的name属性
    	min: 1,
    },
  },
  messages: {
	"match.name": {
      required: "请输入比赛名称",
      minlength: "比赛名称至少6个字符",
      maxlength: "比赛名称至多30个字符"
    },
    "match.rule": "请输入比赛规程",
    "court.name": "请输入场地名称",
    "court.addr": "请输入场地地址",
    "match.beginTime": "请选择开始日期",
    "match.endTime": "请选择结束日期",
    "court.courtTypeId": "",
    matchTypeId: "",
    mcId: "",
    selectProvince: "",
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

  //清空比赛表单
  $("#resetMatchForm").click(function(){
    matchValidator.resetForm();
  });
});
</script> 
 </body>
</html>