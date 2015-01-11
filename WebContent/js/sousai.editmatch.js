    
    //***************************************************************************************
    // 编辑比赛，同比赛发布页面,我的比赛中的编辑比赛页面 ***************************** BEGIN ***************************
    //***************************************************************************************
$(function(){

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
        //当用户选择其他的时候，弹出隐藏的label和input
        tgPrt.find(".omthide").slideDown();
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
        //修改的新类型
        $("#inputMatchType").val(tgPrt.find(".selectParticularMatchType option:selected").text()).attr("data-typeid",tgPrt.find(".selectParticularMatchType option:selected").attr("value"));
        sousaiRemindDialog("设置inputMatchType 的val typeid");
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
      //设置比赛场地
      $("#inputMatchCourt").val($(this).find("td:eq(0)").text());
      $("#inputMatchCourt").attr("data-courtid",$(this).attr("data-courtid"));
      sousaiRemindDialog("设置inputMatchCourt比赛场地  courtid val");
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
  	        $(".jplist-no-results").hide(); //隐藏无结果提醒
  	        existCourtsTbody.empty(); //清空已有场地列表
  	        console.log(rspdata);//sousaiRemindDialog(rspdata);
  	        /** 循环遍历获得的场地信息并加入已有场地列表中 **/
  	        for (var i = 0; i < rspdata.length; i++) {
  	        	existCourtsTbody.append(
  	        			'<tr class="tritem" data-courtid="'
                    + rspdata[i].id+'"><td>'
  	    	        	+ rspdata[i].name + '</td><td>'
  	    	        	+ rspdata[i].addr + '</td><td>'
  	    	        	+ rspdata[i].courtTypeId + '</td><td>'
  	    	        	+ rspdata[i].tableNum + '</td><td>'
  	    	        	+ rspdata[i].matchCount + '</td><td><a target="_blank" href="courtLink;courtId=?'
  	    	        	+ rspdata[i].id + '">详细</a></td></tr>'	        			
  	        	);
  	        }
  	        //若没有相应的结果，给出提醒
  	        if($(".tritem").length == 0){
  	        	console.log("在您选择的比赛地点没有搜索到已有场地，请更换比赛地点或在此地点添加新场地。");
  	        	$(".jplist-no-results").show();
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

    }else {//若复选框不是选中的，则滑出已有场地列表并删除添加新场地的表单
      $("div.existCourtsBox").slideDown();
      $("div.inputCourt").slideUp();
      $("div.inputCourt").remove();

      //恢复已有$("#hideCourtId")中的name属性，将value设置为空 .attr("value","")
      $("#hideCourtId").attr("name","match.courtId");
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

    $("#editMatchForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
    rules: {
      "match.name": {
        minlength: 6,
        maxlength: 30
      },
      "court.courtTypeId": {
      	min: 1,
      },
      matchTypeId: { //比赛详细类型
      	min: 1,
      },
      mcId: {//比赛大类
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
	
});