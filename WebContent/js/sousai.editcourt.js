//***************************************************************************************
// 编辑场地的js代码，同场地发布页面。 ***************************** BEGIN ***************************
//***************************************************************************************

//设置表单的已有信息
function setCourtInfo(datainfo){
    //解析datainfo中的信息
    var data = eval('(' + datainfo + ')');
    $("#inputCourtName").val(data.name).attr("data-id",data.id).attr("data-userid",data.userId).attr("data-username",data.userName);
    $("#inputCrtCourtType").val(data.courtType).attr("data-oldcourttype",data.courtType).attr("data-courttypeid",data.courtTypeId).attr("data-oldcourttypeid",data.courtTypeId);
    $("#inputMatchType").val(data.matchType).attr("data-oldmatchtype",data.matchType).attr("data-matchtypeid",data.matchType).attr("data-oldmatchtypeid",data.matchType);
    $("#inputCourtRegion").val(data.region).attr("data-oldregion",data.region).attr("data-regionid",data.regionId).attr("data-oldregionid",data.regionId);
    $("#inputCourtAddress").val(data.addr);
    $("#inputCourtTables").val(data.tableNum);
    $("#inputCourtTel").val(data.tel);
    $("#inputCourtPrice").val(data.price);
    $("#inputCourtOpenTime").val(data.workTime);
    //获取已上传的场地图片
    tinymce.activeEditor.setContent(data.intro);
}

//验证表单并且返回所有信息
function getCourtInfo(){
	//获取比赛信息存储到match对象中用于返回比赛信息
	var court={};
	 court.id = parseInt($("#inputCourtName").attr("data-id"));
	 court.userId = parseInt($("#inputCourtName").attr("data-userid"));
	 court.name = $("#inputCourtName").val();
	 court.courtType = $("#inputCrtCourtType").val();
	 court.courtTypeId = parseInt($("#inputCrtCourtType").attr("data-courttypeid"));
	 court.matchType = $("#inputMatchType").val();
	 court.matchTypeId = parseInt($("#inputMatchType").attr("data-matchtypeid"));
	 court.region = $("#inputCourtRegion").val();
	 court.regionId = parseInt($("#inputCourtRegion").attr("data-regionid"));
	 court.addr = $("#inputCourtAddress").val();
	 court.tableNum = parseInt($("#inputCourtTables").val());
	 court.tel = $("#inputCourtTel").val();
	 court.price = $("#inputCourtPrice").val();
	 court.workTime = $("#inputCourtOpenTime").val();
	 court.courtPictures = [];
	 court.intro = tinymce.activeEditor.getContent();
	 	 
	if( $("#editCourtForm").valid() === true ){ //验证所有显式表单
		
			if(court.intro){//验证比赛规程
				
				console.log("验证通过"+court);
				return court;
				
			}else{
				sousaiRemindDialog("场地介绍不能为空，请重新填写。");
				return false;				
			}
	}else{
		sousaiRemindDialog("填写信息不符合验证，请重新填写。");
		return false;
	}
}

//场地预览
//function courtPreview(){
  //定义变量名 场地名称 比赛类型（大类、类型） 场地类型 场地区域（省、市、区） 详细地址 赛场数 联系电话 价格 开放时间 场地图片 
  //var courtName = $("#inputCourtName").val(),
  //    matchTypeGenera = $("selectMatchType option:selected").val(),
  //    matchType,
  //    courtType = $('select[name="courtType"] option:selected').val(),
  //    courtProvince = $(".selectProvince option:selected").val(),
  //    courtCity = $(".selectCity option:selected").val(),
  //    courtCountry = $(".selectCountry option:selected").val(),
  //    courtAddress = $("#inputCourtAddress").val(),
  //    courtTables = $("#inputCourtTables").val(),
  //    courtTel = $("#inputCourtTel").val(),
  //    courtPrice = $("#inputCourtPrice").val(),
  //    courtOpenTime = $("#inputCourtOpenTime").val(),
  //    courtPics = $(".files .preview > img").attr("src");
  //将内容发送到预览页面
  //改变form表单action
  //$("#releaseCourtForm").attr("action","previewCourtSearchDetail.jsp").attr("target","_blank").submit().attr("action","relCourt").removeAttr("target");
  //console.log("提交到另一个页面，并改回原来action。")
//}


//选择图片
function selectPic(id){
$("#fileImage"+id).trigger('click');
}
//取消上传
function deleteTr(id){
$("#tr"+id).fadeOut();
setTimeout(function(){
  $("#tr"+id).remove();
},1000);
trNumb--;
}
//记录表格中的上传图片的数量
var trNumb = 1;
//验证上传图片格式，大小，并在通过后显示图片预览
function imgValid(obj,id) {
var files = obj.files,
      img = new Image(), imgname, imgsize, imgsizeKB, imgtype, 
previewId = "preview" + id,
 fileList = document.getElementById(previewId), //jquery对象转换为DOM对象
 inputNames = $("#tr"+id+' input[type="text"]'),
 fileName = $("#tr"+id+" .name"),
 fileSize = $("#tr"+id+" .size"); 

if(obj.files && obj.files[0]){
  //清除上一次的预览图片
  $(fileList).find("img").remove();
  var reader = new FileReader();
  reader.readAsDataURL(files[0]);
  reader.onload = function(e){
    //sousaiRemindDialog(files[0].name + "," +e.total + " bytes");
    imgname = files[0].name;
    imgtype = files[0].type;
    imgsize = e.total;
    imgsizeKB = (imgsize/1024).toFixed(2);
    if(imgsize >= 200*1024) {
      sousaiRemindDialog("照片大小为 "+imgsizeKB+"KB,照片太大了，请上传小于200KB的照片.");
    }else if(imgtype != "image/png" && imgtype != "image/gif" && imgtype != "image/jpg" && imgtype != "image/jpeg" ){
      sousaiRemindDialog("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
    }else if( trNumb == 2 && imgname == $("#tr1 .name").text() ){ //trNumb为2时，有两个图片栏，检验第一个图片栏与第二个图片栏是否同名
      sousaiRemindDialog("图片 "+ imgname +" 名称重复。");
    }else if( trNumb == 3 && ( imgname == $("#tr1 .name").text() || imgname == $("#tr2 .name").text() ) ){ //trNumb为3时，有三个图片栏，检验第一、第二个图片栏是否与第三个图片栏同名
      sousaiRemindDialog("图片 "+ imgname +" 名称重复。");
    }else{
      img.src = this.result;
      //img.width = 100;
      fileList.appendChild(img);
      fileName.text(imgname);
      fileSize.text(imgsizeKB+"KB");
      inputNames.attr("value",imgname);
    }
  };
}else{
  //ie 只能得到文件名
  var nfile = $("#tr"+id+' input[type="file"]').val();//fake路径
  var fileText =nfile.substring(nfile.lastIndexOf("."),nfile.length);//文件后缀名
  imgname = nfile.substring(nfile.lastIndexOf("\\")+1,nfile.length);//文件名;
  imgtype =fileText.toLowerCase();//转化为统一小写后缀名.jpg等
  if(imgtype != ".png" && imgtype != ".gif" && imgtype != ".jpg" && imgtype != ".jpeg" ){
      sousaiRemindDialog("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
  }
  fileName.text(imgname);
  fileSize.text("");
  inputNames.attr("value",imgname);
}
}
// OLD pic upload js

$(function(){
  //立即初始化比赛类型
  initMatchType();
  //点击返回场地列表
  $(".backList").click(function(){
    $(".courtList").slideDown();
    $(".editCourt").slideUp();
  });

  //点击删除场地 编辑场地界面
  $(".editCourt .deleteCourt").click(function(){
          $.ajax({
            type: "POST",
            url: "deleteCourts",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            data: {
              "courtIds": $("#inputCourtName").attr("data-id"),
            },
            dataType: "json",
            success: function(data) {
          	  if( rspdata == "success" ){
          		  sousaiRemindDialog("删除成功");
          	  }else if( data == "fail" ){
          		  sousaiRemindDialog("删除失败");
          	  }else{
          		  sousaiRemindDialog("删除失败，错误代码未知");
          	  }
            },
            error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
              sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
            },
          });
  });
  //点击保存修改
	$(".editCourt .saveCourt").click(function(){
		var court = getCourtInfo();
		console.log(court);
	  });
  //点击发布场地 编辑场地界面
  $(".editCourt .passCourt").click(function(){
      /*$.ajax({
        type: "POST",
        url: "passCourts",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "courtIds": $("#inputCourtName").attr("data-id"),
        },
        dataType: "json",
        success: function(data) {
      	  if( rspdata == "success" ){
      		  sousaiRemindDialog("删除成功");
      	  }else if( data == "fail" ){
      		  sousaiRemindDialog("删除失败");
      	  }else{
      		  sousaiRemindDialog("删除失败，错误代码未知");
      	  }
        },
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
        },
      });*/
	});

  //点击修改比赛类型
  $("#editMatchType").click(function (){
  	if($(this).text() == "修改"){
  		$(".matchTypeControls").slideDown();
  		$(this).text("取消修改");
  	}else{
  		$(".matchTypeControls").slideUp();
  		//重置选择类型的下拉框，同时将原类型还原
  		$(".selectParticularMatchType").hide().empty().append("<option value=0>请选择比赛类型</option>");
  		$("#inputMatchType").val($("#inputMatchType").attr("data-oldmatchtype")).attr("data-matchtypeid",$("#inputMatchType").attr("data-oldmatchtypeid"));
  		$(this).text("修改");
  	}
  });
  $("#editCourtType").click(function (){
  	if($(this).text() == "修改"){
  		$(".courtTypeControls").slideDown();
  		//ajax 已得到场地类型
  	      $.ajax({
  	        type: "POST",
  	        url: "showCT",
  	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
  	        data: {
  	          "matchId": $("#inputMatchType").attr("data-matchtypeid"),
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
  	      }); 
  	      
  		$(this).text("取消修改");
  	}else{
  		$(".courtTypeControls").slideUp();
  		//重置选择比赛场地，同时还原类型
    		$("#inputCrtCourtType").val($("#inputCourtType").attr("data-oldcourttype")).attr("data-courttypeid",$("#inputCourtType").attr("data-oldcourttypeid"));
  		$(this).text("修改");
  	}
  });
  $("#editCourtRegion").click(function (){
  	if($(this).text() == "修改"){
  		$(".courtRegionControls").slideDown();
  		$(this).text("取消修改");
  	}else{
  		$(".courtRegionControls").slideUp();
  		//重置选择比赛场地，同时还原类型
    		$("#inputCourtRegion").val($("#inputCourtRegion").attr("data-oldregion")).attr("data-regionid",$("#inputCourtRegion").attr("data-oldregionid"));
  		$(this).text("修改");
  	}
  });
  
  //点击大类比赛类型获得具体比赛类型
  $(".selectMatchType").change(function() {
	  selectMatchType($(this));
  });
  
  //点击比赛类型获取相应场地类型 或者 选择其他出现输入框
  $(".selectParticularMatchType").change(function() {
	  selectParticularMatchType($(this));
  });
  
  //点击大类比赛类型获得具体比赛类型
  $(".selectCourtType").change(function() {
	  selectCourtType($(this));
  });
  
  //表单验证
  //为比赛地点中的省市区添加name属性，然后利用validate插件的min=1验证是否选择了省市区
  $(".controls > .selectProvince").attr("name","selectProvince");
  $(".controls > .selectCity").attr("name","selectCity");
  $(".controls > .selectCountry").attr("name","selectCountry");


  //选择区时添加 区域到inputCourtRegion中
  $(".controls > .selectCountry").change(function(){
	  var tgPrt = $(this).parent(),
	  region = $(".selectProvince option:selected").text() +"-"+ $(".selectProvince option:selected").text()+"-"+ tgPrt.find(".selectCountry option:selected").text();
	  $("#inputCourtRegion").val(region).attr("data-regionid",tgPrt.find(".selectCountry option:selected").attr("value"));
  });
  
  var courtValidator = $("#editCourtForm").submit(function() {
    // update underlying textarea before submit validation
    tinyMCE.triggerSave();
  }).validate({
  	submitHandler: function(form){
  		console.log("validate");
  },
  rules: {
	  "court.name": {
      minlength: 6,
      maxlength: 30
    },
    "court.courtTypeId": {
    	min: 1,
    },
    "court.matchType": { 
    	min: 1,
    },
    mcId: {
    	min: 1,
    },
    selectProvince: {
    	min: 1,
    },
    selectCity: {
    	min: 1,
    },
    selectCountry: {
    	min: 1,
    },
    "court.tableNum":{
    	digits: true, 
    	min: 1,
    },
  },
  messages: {
	  "court.name": {//新场地的场地名称
		    	  required: "请输入场地名称",
		    	  minlength: "场地名称至少6个字符",
		    	  maxlength: "场地名称至多30个字符"
				},
    mcId: "",//比赛大类
    "court.matchType": "",//比赛详细类型
    otherMatchType:"请填写比赛类型", //填写其他比赛类型
    selectProvince: "",//省
    selectCity: "",//市
    selectCountry: "",//区
    intro: "请输入场地介绍",
    "court.addr": "请输入场地地址",//场地的场地地址
    "court.tableNum": {
    	digits: "请填写整数，最小为1",
    	min: "请填写整数，最小为1"    	
    }, //赛场数
    "court.courtTypeId": "",//场地的场地类型
  },
  errorPlacement: function(error, element){
	  if (element.is("textarea")) {
        error.insertAfter($("label[for='inputMatchRules']"));
      }
      else error.insertAfter(element);
  }
  });
	
  courtValidator.focusInvalid = function() {
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
    $("#resetCourtForm").click(function(){
      courtValidator.resetForm();
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
    onchange_callback: function(editor) {
      tinyMCE.triggerSave();
      $("#" + editor.id).valid();
    }
  });
  //添加选项
  $(".plus").click(function(){
    if(trNumb == 3){
      sousaiRemindDialog("抱歉，每个场地最多只可以上传3张图片！");
    }else{
      trNumb++;
      $(".files").append('<tr class="hide" id="tr'+trNumb+'"><td><span class="btn fileinput-button"  onclick="selectPic('+trNumb+')"><i class="icon-plus"></i><span>选择图片</span></span><input class="hide fileImage" id="fileImage'+trNumb+'" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,'+trNumb+')"/><input class="hide fileImageNames" type="text" name="imgNames" value=""/></td><td><span class="preview" id="preview'+trNumb+'"></span></td><td><span class="name"></span></td><td><span class="size"></span></td><td><span class="btn cancel" onclick="deleteTr('+trNumb+')"><i class="icon-ban-circle"></i>取消</span></td></tr>');
      $("#tr"+trNumb).fadeIn();
    }
  });
  //全部取消
  $(".allCancel").on('click',function(event){
    //表格行隐藏并清空所有的输入框，文件名称，文件大小
    $(".files > tr").fadeOut();
    setTimeout(function(){
      $(".files > tr").remove();
    },1000);
    trNumb = 0;
  });


  });
  