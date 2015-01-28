// 编辑比赛，同比赛发布页面,我的比赛中的编辑比赛页面   ******************* BEGIN ***************************
//***************************************************************************************

//设置表单的已有信息
function setMatchInfo(datainfo){
    //解析datainfo中的信息
    var data = eval('(' + datainfo + ')');
    $("#inputMatchTitle").val(data.name).attr("data-id",data.id).attr("data-userid",data.userId).attr("data-verify",data.verify);
    $("#inputMatchType").val(data.type).attr("data-oldtype",data.type);
    $("#inputMatchTimefrom").val(data.beginTime);
    $("#inputMatchTimeto").val(data.endTime);
    $("#inputMatchCourt").val(data.courtName).attr("data-oldcourt",data.courtName).attr("data-courtid",data.courtId).attr("data-oldcourtid",data.courtId);
    tinymce.activeEditor.setContent(data.rule?data.rule:""); //若rule为空则设置其为空字符串
}

//验证表单并且返回所有信息
function getMatchInfo(){
	if( $("#editMatchForm").valid() !== true ){ 
		//验证所有显式表单
		sousaiRemindDialog("填写信息不符合验证，请重新填写。");
		return false;
	}
	//获取比赛信息存储到match对象中用于返回比赛信息
	var match={};
	 match.id = $("#inputMatchTitle").attr("data-id");
	 match.userid = $("#inputMatchTitle").attr("data-userid");
	 match.verify = $("#inputMatchTitle").attr("data-verify");
	 match.title = $("#inputMatchTitle").val();
	 match.type = $("#inputMatchType").val();
	 match.typeid = $("#inputMatchType").attr("data-typeid");
	 match.begintime = $("#inputMatchTimefrom").val();
	 match.endtime = $("#inputMatchTimeto").val();
	 match.court = $("#inputMatchCourt").val();
	 match.courtid = $("#inputMatchCourt").attr("data-courtid");
	 match.iscourt = $("#inputMatchCourt").attr("data-iscourt");
	 match.rule = tinymce.activeEditor.getContent();
	 
	if(!match.court){
		//验证比赛地点
		sousaiRemindDialog("比赛地点不能为空，请使用已有场地或添加新场地。");
		return false;
	}			
	if(!match.rule){
		//验证比赛规程
		sousaiRemindDialog("比赛规程不能为空，请重新填写。");
		return false;				
	}
	if(match.iscourt === "true"){//验证是否发布新场地 获取到的data-iscourt的类型为字符串
		match.court = $("#courtName").val();
		match.courtaddr = $("#courtAddress").val();
		match.courttype = $(".selectCourtType option:selected").text();
		match.courttypeid = $(".selectCourtType option:selected").attr("value");
	}
	if(!$("#otherMatchType").is(":hidden")){//验证是否为其他比赛类型
		match.type = $("#otherMatchType").val();
	}
	return match;
}

//根据当前的没页的条数和总的条数计算总页数 //现有场地表格的分页代码
function pagesCourts(count,crtPage,rs){
	  var pages = Math.ceil(count/rs) || 1, target=$(".existCourtsBox .btn-group");
	  target.empty().show();
	  if(pages == 1){
		  target.append('<a class="btn active" href="javascript:void(0);">1</a>').hide();
		  return false;
	  }
	  target.append('<a class="btn prior" href="javascript:void(0);" onclick="priorCourts('+rs+')">«</a><a class="btn active" href="javascript:void(0);">'+crtPage+'</a>');
	  if((pages > 1)&&(crtPage < pages)&&(crtPage+1 != pages)) {
	  	target.append('<a class="btn" href="javascript:void(0);">...</a><a class="btn" href="javascript:void(0);" onclick="searchExistedCourt('+pages+','+rs+')">'+pages+'</a>');
	  }else if(crtPage+1 == pages){
		target.append('<a class="btn" href="javascript:void(0);" onclick="searchExistedCourt('+pages+','+rs+')">'+pages+'</a>');
	  }
	  if(crtPage != pages){
	  target.append('<a class="btn next" href="javascript:void(0);" onclick="nextCourts('+rs+')">»</a>');
	  }
}
	
	function priorCourts(rs){
		var target = $(".existCourtsBox .btn-group"),
		crtPage = parseInt(target.find("a.active").text());
		rs = rs||10;
		if(crtPage==1){
			sousaiRemindDialog('已经到最顶了');
		}else if(crtPage==2){
			searchExistedCourt(crtPage - 1,rs);
			target.find("a.active").text(crtPage - 1).end().find("a.prior").hide();
		}else{
			searchExistedCourt(crtPage - 1,rs);
			target.find("a.active").text(crtPage - 1).end().find("a.prior").show();
		}
	}
	function nextCourts(rs){
		var target = $(".existCourtsBox .btn-group"),
		crtPage = parseInt(target.find("a.active").text());
		rs = rs||10;
		searchExistedCourt(crtPage + 1,rs);
		target.find("a.active").text(crtPage+1).end().find("a.prior").show();
	}
	
function searchExistedCourt(crtPage,rs){
	  var data = getRegion();
	  data.currentPage = crtPage||$("div.existCourtsBox ul.pagination li.active a").html()||1;
	  data.rows = rs||25;
	  if(data.regionId == null){
		  sousaiRemindDialog("省，市，区请至少选择一个为比赛区域！");
		  return false;
	  }
	  //ajax 获取已有场地信息列表
	  $.ajax({
	      type: "POST",
	      url: "getCourtM",
	      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	      data: data,
	      dataType: "json",
	      success: function(rspdata) {
	        var target = $(".existCourtsBox > table > tbody"),template = Handlebars.compile($('#existCourts-template').html());
	        $(".existCourtsBox .noresult").hide(); //隐藏无结果提醒
	        Handlebars.registerHelper("data",function(){
	          return JSON.stringify(this);
	        });
	        target.empty().html(template(rspdata.body));
	        //若没有相应的结果，给出提醒
	        if($(".tritem").length == 0){
	        	//sousaiRemindDialog("在您选择的比赛地点没有搜索到已有场地，请更换比赛地点或在此地点添加新场地。");
	        	$(".existCourtsBox .noresult").show();
	        }
	        pagesCourts(rspdata.count,data.currentPage,data.rows);
	      },
	      error: function(jqXHR,textStatus,errorThrown){
	    	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	    	  sousaiRemindDialog("抱歉，获取已有场地信息出错了。");
	      },
	    });
	  
    $("div.existCourtsBox").slideDown(); //将已有场地类表滑出
    //若添加新场地列表存在，则隐藏并删除
    if($("#newCourtCheckbox").is(":checked")){
      $("div.inputCourt").slideUp();
      $("div.inputCourt").remove();
      $("#newCourtCheckbox").attr("checked",false);//将添加新场地的复选框设置为非选中状态
    }
}

 //编辑比赛界面 删除
 function sureDeleteEdit(){
	 hideSousaiRemindDialog();
	 $.ajax({
         type: "POST",
         url: "deleteMatches",
         contentType: "application/x-www-form-urlencoded; charset=UTF-8",
         data: {
           "matchIds": $("#inputMatchTitle").attr("data-id"),
         },
         dataType: "json",
         success: function(rspdata) {
       	  if( rspdata == "success" ){
       		  sousaiRemindDialog("删除成功");
       		  $("#"+$("#inputMatchTitle").attr("data-id")).parent().parent().parent().remove();
       	  }else{
       		  sousaiRemindDialog("删除失败，错误代码为："+rspdata);
       	  }
         },
         error: function(jqXHR,textStatus,errorThrown){
        	 console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
             sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
         },
       });
 }

$(function(){
	//立即初始化比赛类型
	initMatchType();

    //点击返回比赛列表
    $(".editMatch .backList").click(function(){
    	$(".matchList").slideDown();
    	$(".editMatch").slideUp();
    });

    //删除比赛 编辑界面
    $(".editMatch .deleteMatch").click(function (){
    	$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对收藏此比赛的用户照成影响。");
		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDeleteEdit()");
		sousaiRemindDialog("确定删除？",-1,"show");
    });
    //点击保存修改
    $(".editMatch .saveMatch").click(function (){
    	var match = getMatchInfo(),data;
  		if(match.iscourt == "true"){
  			match.iscourt = true;
      		data = {
      			    "match.id": parseInt(match.id),
      			    "match.name": match.title,
      			    "match.type": match.type,
      			    //"match.typeId": parseInt(match.typeid), //未使用
      			    "match.beginTime": match.begintime,
      			    "match.endTime": match.endtime,
      			    //"match.court": match.court,
      			    "match.courtId": parseInt(match.courtid),
      			    "match.rule": match.rule,
      			    //"match.relTime": match.reltime,
      			    //"match.score": match.name,
      			    "match.userId": parseInt(match.userid),
      			    "match.verify": match.verify,
      			    "isCourt": match.iscourt,
      			    "court.name": match.court,
      			    "court.addr": match.courtaddr,
      			    "court.type": match.courttype,
      			    "court.typeId": parseInt(match.courttypeid),
      			};
  		}else{
  			match.iscourt = false;
      		data = {
      			    "match.id": parseInt(match.id),
      			    "match.name": match.title,
      			    "match.type": match.type,
      			    //"match.typeId": parseInt(match.typeid), //未使用
      			    "match.beginTime": match.begintime,
      			    "match.endTime": match.endtime,
      			    //"match.court": match.court,
      			    "match.courtId": parseInt(match.courtid),
      			    "match.rule": match.rule,
      			    //"match.relTime": match.reltime,
      			    //"match.score": match.name,
      			    "match.userId": parseInt(match.userid),
      			    "match.verify": match.verify,
      			    "isCourt": match.iscourt,
      			};
  		}
                $.ajax({
                  type: "POST",
                  url: "updateMatch",
                  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                  data: data,
                  dataType: "json",
                  success: function(rspdata) {
                	  if( rspdata == "success" ){
                		  window.setTimeout("window.location。href=window.location。href",3000);
                  		  sousaiRemindDialog("保存成功,3秒后将刷新页面。");
                	  }else{
                		  sousaiRemindDialog("保存失败，错误代码为："+rspdata);
                	  }
                  },
                  error: function(jqXHR,textStatus,errorThrown){
                	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                      sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
                  },
                });
    });
    //发布比赛 编辑界面
    $(".editMatch .passMatch").click(function (){
                 $.ajax({
                  type: "POST",
                  url: "relMatchesByAdmin",
                  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                  data: {
                    "ids": $("#inputMatchTitle").attr("data-id"),
                  },
                  dataType: "json",
                  success: function(rspdata) {
                	  if( rspdata == "success" ){
                		  sousaiRemindDialog("发布成功");
                   		  $("#"+$("#inputMatchTitle").attr("data-id")).parent().parent().append('<span class="label label-info">已发布</span>');
                  		  $(".backList").click();
                	  }else{
                		  sousaiRemindDialog("发布失败，错误代码为"+rspdata);
                	  }
                  },
                  error: function(jqXHR,textStatus,errorThrown){
                	  console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
                      sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
                  },
                }); 
    });
    //点击修改比赛类型
    $("#editMatchType").click(function (){
    	if($(this).text() == "修改"){
    		$("#matchTypeControls").slideDown();
    		$(this).text("取消修改");
    	}else{
    		$("#matchTypeControls").slideUp();
    		//重置选择类型的下拉框，同时将原类型还原
    		$(".selectParticularMatchType").hide().empty().append("<option value=0>请选择比赛类型</option>");
    		$("#inputMatchType").val($("#inputMatchType").attr("data-oldtype"));
    		$(this).text("修改");
    	}
    });
    $("#editMatchCourt").click(function (){
    	if($(this).text() == "修改"){
    		$(".matchAdressControls").slideDown();
    		$(this).text("取消修改");
    	}else{
    		$(".matchAdressControls").slideUp();
    		//重置选择比赛场地，同时还原类型
      		$("#inputMatchCourt").val($("#inputMatchCourt").attr("data-oldcourt")).attr("data-courtid",$("#inputMatchCourt").attr("data-oldcourtid"));
    		$(this).text("修改");
    	}
    });
    //选择比赛地点时，修改下方添加新场地的区域
    $("#editMatchForm .controls > .selectProvince").change(function(){
  	  //当未选择省就提交表单时，出现提示，当选择省时隐藏未选择省的错误提示
  	  $(".matchRegion-error").hide();
  	  
  	  var tgPrt = $(this).parent();
  	  $("#newCourtRegion > .newCourtProvince").text( tgPrt.find(".selectProvince option:selected").text() );
  	  $("#newCourtRegion > .newCourtCity").text( tgPrt.find(".selectCity option:selected").text() );
  	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
    });
    $("#editMatchForm .controls > .selectCity").change(function(){
  	  var tgPrt = $(this).parent();
  	  $("#newCourtRegion > .newCourtCity").text( tgPrt.find(".selectCity option:selected").text() );
  	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
    });
    $("#editMatchForm .controls > .selectCountry").change(function(){
  	  var tgPrt = $(this).parent();
  	  $("#newCourtRegion > .newCourtCountry").text( tgPrt.find(".selectCountry option:selected").text() );
    });
    //点击大类比赛类型获得具体比赛类型
    $(".selectMatchType").change(function() {
    	selectMatchType($(this));
    });
    //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
    $(".selectParticularMatchType").change(function() {
    	selectParticularMatchType($(this));
    });
    //日期选择器 bootstrap.datepicker
    $("#inputMatchTimefrom").datetimepicker({
        language: 'zh-CN',
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: true,
        todayBtn: 'linked',
    }).on('changeDate',function(ev){
    	console.log(ev);
		if( ($("#inputMatchTimefrom").val() > $("#inputMatchTimeto").val()) ||( $("#inputMatchTimeto").val() == ""))
		$("#inputMatchTimeto").datetimepicker('setStartDate',$("#inputMatchTimefrom").val()).val($("#inputMatchTimefrom").val());
	});
    $("#inputMatchTimeto").datetimepicker({
        language: 'zh-CN',
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: true,
        todayBtn: 'linked',
    }).on('changeDate',function(ev){
    	console.log(ev);
		if( ($("#inputMatchTimefrom").val() > $("#inputMatchTimeto").val()) ||( $("#inputMatchTimeto").val() == ""))
		$("#inputMatchTimeto").datetimepicker('setStartDate',$("#inputMatchTimefrom").val()).val($("#inputMatchTimefrom").val());
	});
    
    //选中表格某行
    $("tbody").on("click",".tritem",function(event){
      $("tr").removeClass("active");
      $(this).addClass("active");
      //设置比赛场地
      $("#inputMatchCourt").val($(this).find("td:eq(0)").text());
      $("#inputMatchCourt").attr("data-courtid",$(this).attr("data-courtid"));
    });
    //搜索现有场地
    $("#searchExistedCourt").click(function(){
    	searchExistedCourt(1,1);
    });
    //添加新场地
    $("#newCourtBtn").click(function () {
      $("#newCourtCheckbox").click();
    });

    $("#newCourtCheckbox").click(function () {
      if($(this).is(":checked")){
    	  //若添加新场地的复选框 是选中状态时则生成添加新场地的表单
    	  var inputCourtStr = '<div class="inputCourt hide"><div class="control-group"><label class="control-label" for="courtName">场地名称：</label><div class="controls"><input type="text" id="courtName" name="courtName" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtAddress">详细地址：</label><div class="controls"><input type="text" id="courtAddress" name="courtAddr" placeholder="如：某某桥某某路XXXXXXX杯乒乓球季度赛某楼" class="span5 add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required"/></div></div><div class="control-group"><label class="control-label" for="courtType">场地类型：</label><div class="controls"><select class="selectCourtType" name="courtType"><option value="0">请先选择比赛类型</option></select></div></div></div>';
    	  $(inputCourtStr).insertAfter($(this).parent());
    	  //设置data-iscourt属性为true，同时设置比赛地点为 选择新场地
    	  $("#inputMatchCourt").val("选择添加新场地").attr("data-iscourt",true);
    	  //根据已选的比赛类型获取场地类型
    	  var particularMatchTypeId = $(".selectParticularMatchType option:selected").attr("value");
    	  if(particularMatchTypeId != 0){
    		  initCourtType(particularMatchTypeId);
    	  }else{
    		  //若比赛类型存在，说明是在编辑界面，故填写默认的场地类型，即比赛类型为其他的时候
    		  if($("#inputMatchType").val()!=""){
        		  initCourtType(1);
    		  }else{
        		  sousaiRemindDialog("请选择一个比赛类型。");
    		  }
    	  }

    	  $("div.inputCourt").slideDown();
    	  $("div.existCourtsBox").slideUp();
      }else {//若复选框不是选中的，则滑出已有场地列表并删除添加新场地的表单
    	  $("div.existCourtsBox").slideDown();
    	  $("div.inputCourt").slideUp("slow",function(){
    		  $("div.inputCourt").remove();
    	  });
    	  //设置data-iscourt属性为false，同时设置比赛地点为 空
    	  $("#inputMatchCourt").val("").attr("data-iscourt",false);
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
    //为比赛地点中的省市区添加name属性，然后利用validate插件的min=1验证是否选择了省市区
    $(".controls > .selectProvince").attr("name","selectProvince");
    //$(".controls > .selectCity").attr("name","selectCity");
    //$(".controls > .selectCountry").attr("name","selectCountry");

    var matchValidator = $("#editMatchForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
    	submitHandler: function(form){
    		console.log("validate");
    },
    rules: {
      matchName: {
        minlength: 6,
        maxlength: 30
      },
      courtType: {
      	min: 1,
      },
      matchType: { 
      	min: 1,
      },
      mcId: {
      	min: 1,
      },
      selectProvince: {
      	min: 1,
      },
      /*selectCity: {
      	min: 1,
      },
      selectCountry: {
      	min: 1,
      },*/
      courtName: {
          minlength: 6,
          maxlength: 30
      },
    },
    messages: {
      matchName: {//比赛名称
        required: "请输入比赛名称",
        minlength: "比赛名称至少6个字符",
        maxlength: "比赛名称至多30个字符"
      },
      mcId: "",//比赛大类
      matchType: "",//比赛详细类型
      otherMatchType:"请填写比赛类型", //填写其他比赛类型
      matchBeginTime: "请选择开始日期",
      matchEndTime: "请选择结束日期",
      crtCourtName:"请选择已有的场地或添加新的场地",
      selectProvince: "",//省
      //selectCity: "",//市
      //selectCountry: "",//区
      matchRule: "请输入比赛规程",
      courtName: {//新场地的场地名称
    	  required: "请输入场地名称",
    	  minlength: "场地名称至少6个字符",
    	  maxlength: "场地名称至多30个字符"
      },
      courtAddr: "请输入场地地址",//新场地的场地类型
      courtType: "",//新场地的场地类型
    },
    errorPlacement: function(error, element){
      if(element.hasClass("date")){ //比赛时间的错误提示
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