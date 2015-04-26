//***************************************************************************************
// 编辑场地的js代码，同场地发布页面。 ***************************** BEGIN ***************************
//***************************************************************************************

//设置表单的已有信息
function setCourtInfo(datainfo){
    //解析datainfo中的信息
    var data = eval('(' + datainfo + ')');
    $("#inputCourtName").val(data.name).attr("data-id",data.id).attr("data-userid",data.userId).attr("data-username",data.userName).attr("data-verify",data.verify);
    $("#inputCrtCourtType").val(data.courtType).attr("data-oldcourttype",data.courtType).attr("data-courttypeid",data.courtTypeId).attr("data-oldcourttypeid",data.courtTypeId);
    $("#inputMatchType").val(data.matchType).attr("data-oldmatchtype",data.matchType).attr("data-matchtypeid",data.matchType).attr("data-oldmatchtypeid",data.matchType);
    $("#inputCourtRegion").val(data.region).attr("data-oldregion",data.region).attr("data-regionid",data.regionId).attr("data-oldregionid",data.regionId);
    $("#inputCourtAddress").val(data.addr);
    $("#inputCourtTables").val(data.tableNum);
    $("#inputCourtTel").val(data.tel);
    $("#inputCourtPrice").val(data.price);
    $("#inputCourtOpenTime").val(data.workTime);
    //获取已上传的场地图片
	    //设置上传图片server
	    upLoaderServerCourtId = data.id;
  	    //再次初始化上传图片,
  	    //imageUploader(); 
	    console.log(uploader.option());
	    console.log(uploader.option("server"));
  	    uploader.option("server",location.origin+'/sousai/ueditor/jsp/controller.jsp?action=uploadimage&id=court/'+upLoaderServerCourtId);
  	    console.log(uploader.option("server"));
    //设置上传图片为可见,同时添加删除已有图片功能,
    $('#fileList').empty();
    $.ajax({
        url: location.origin+'/sousai/ueditor/jsp/controller.jsp?action=listimage',
        data: {
        	id:"court/"+data.id
        	},
        async: false,
        success: function(rspdata) {
      	  console.log(rspdata);
      	  if(!rspdata.list){
      		  return false;
      	  }
      	  //设置剩余可上传图片数量
      	  var fileNum = 3-rspdata.total;
      	uploader.option("fileNumLimit",fileNum);
	    console.log(uploader.option());
      	
      	  $.each(rspdata.list,function(index,item){
      		  var imgName = item.url.split("/")[7],
      		  	  $li = $( '<li id="' + imgName + '">' +
      	              '<p class="title">' + imgName + '</p>' +
      	              '<p class="imgWrap"><img src=".'+item.url+'"></p>'+
      	              '</li>').appendTo($('#fileList')),
      	              
      	              $btns = $('<div class="file-panel">' +
      	              		'<span class="delete">删除</span></div>').appendTo( $li );

      	      $li.on( 'mouseenter', function() {
      	          $btns.stop().animate({height: 30});
      	      });

      	      $li.on( 'mouseleave', function() {
      	          $btns.stop().animate({height: 0});
      	      });

      	      $btns.on( 'click', 'span.delete', function() {
      	    	  //上传图片之前需要先检查当前已经存储的图片
          	      $.ajax({
          	        url: location.origin+'/sousai/ueditor/jsp/controller.jsp?action=deleteimage',
          	        data: {
          	        	delImage:item.url
          	        	},
          	        success: function(rspdata) {
          	        	console.log(rspdata);
          	        	if(rspdata.state == "SUCCESS"){
          	              $('#'+imgName).remove();
          	              uploader.option("fileNumLimit",parseInt(uploader.option("fileNumLimit"))+1);
          	        	}else{
          	        		sousaiRemindDialog("删除图片失败,请重试");
          	        	}
          	        	},
          	      	});
      	      });
      	  });
        },
      });
    
    tinymce.activeEditor.setContent(data.intro);
}

//验证表单并且返回所有信息
function getCourtInfo(){
	if( $("#editCourtForm").valid() !== true ){
		//验证所有显式表单else
		sousaiRemindDialog("填写信息不符合验证，请重新填写。");
		return false;
	}
	//获取比赛信息存储到match对象中用于返回比赛信息
	var court={};
	 court.id = parseInt($("#inputCourtName").attr("data-id"));
	 court.verify = parseInt($("#inputCourtName").attr("data-verify"));
	 court.name = $("#inputCourtName").val();
	 //court.courtType = $("#inputCrtCourtType").val();
	 court.courtTypeId = parseInt($("#inputCrtCourtType").attr("data-courttypeid"));
	 court.matchType = $("#inputMatchType").val();
	 //court.matchTypeId = parseInt($("#inputMatchType").attr("data-matchtypeid"));
	 court.region = $("#inputCourtRegion").val();
	 court.regionId = parseInt($("#inputCourtRegion").attr("data-regionid"));
	 court.addr = $("#inputCourtAddress").val();
	 court.tableNum = parseInt($("#inputCourtTables").val())||null;
	 court.tel = $("#inputCourtTel").val();
	 court.price = $("#inputCourtPrice").val();
	 court.workTime = $("#inputCourtOpenTime").val();
	 //court.courtPictures = []; //未使用
	 court.intro = tinymce.activeEditor.getContent();
	 court.userId = parseInt($("#inputCourtName").attr("data-userid")); //若是在发布场地页面 则此属性由发布场地页面的userId覆盖
	 	 
	if(court.intro){
		//验证比赛规程
		return court;
	}else{
		sousaiRemindDialog("场地介绍不能为空，请重新填写。");
		return false;				
	}
}

function sureDeleteEdit(){
	hideSousaiRemindDialog();
	var data = {
        "courtIds": $("#inputCourtName").attr("data-id"),
    };
	function deleteCourts(data){
		hideSousaiRemindDialog();
		  console.log(data);
		$.ajax({
	    url: "deleteCourts",
	    data: data,
	    success: function(rspdata) {
	  	  if( rspdata == "success" ){
	  		  sousaiRemindDialog("删除成功");
      		  $("#"+$("#inputCourtName").attr("data-id")).parent().parent().parent().remove();
	  	  }else{
	  		  sousaiRemindDialog("删除失败，错误代码为："+rspdata);
	  	  }
	    }
	  });
	  }
	  
  $.ajax({
    url: "countMatchByCourtId",
    data: data,
    success: function(rspdata) {
  		  var string = "";
  		  $.each(rspdata,function(index,item){
  			  string += "此场地有"+item+"个相关联的比赛;\n";
  		  });
  	  if(string === ""){
  		  deleteCourts(data);
  	  }else{
  		  var value = confirm(string+"\n是否删除此场地？");
  		  if(value){
  			deleteCourts(data);
  		  }
  	  }
    }
  });
}


//图片上传 用于获取图片所属的场地Id
var upLoaderServerCourtId,
uploader;
function imageUploader(fileNum){
  
  // 优化retina, 在retina下这个值是2
  var $wrap = $('#uploader'),
  $upload = $('#startUpload'),
  // 图片容器
  $queue = $('#fileList'),
      
  ratio = window.devicePixelRatio || 1,

  // 缩略图大小
  thumbnailWidth = 110 * ratio,
  thumbnailHeight = 110 * ratio;
  //若没有指定fileNumLimit则默认设置为3
  fileNum = fileNum||3;
  // 实例化
  uploader = WebUploader.create({
      pick: {
          id: '#filePicker',
      },
      accept: {
          title: 'Images',
          extensions: 'gif,jpg,jpeg,bmp,png',
          mimeTypes: 'image/*'
      },
      // swf文件路径
      swf: 'webuploader/Uploader.swf',
      server: location.origin+'/sousai/ueditor/jsp/controller.jsp?action=uploadimage&id=court/0',
      fileNumLimit: fileNum,
      fileSingleSizeLimit: 200 * 1024,    // 200k
  });
  
// 当有文件添加进来时执行，负责view的创建
  function addFile( file ) {
      var $li = $( '<li id="' + file.id + '">' +
              '<p class="title">' + file.name + '</p>' +
              '<p class="imgWrap"></p>'+
              '</li>' ),

          $btns = $('<div class="file-panel">' +
              '<span class="cancel">删除</span></div>').appendTo( $li ),
          $wrap = $li.find( 'p.imgWrap' ),

          showError = function( code ) {
    	  console.log(code,uploader.option());
          };

      if ( file.getStatus() === 'invalid' ) {
          showError( file.statusText );
      } else {
          // @todo lazyload
          $wrap.text( '预览中' );
          uploader.makeThumb( file, function( error, src ) {
              if ( error ) {
                  $wrap.text( '不能预览' );
                  return;
              }

              var img = $('<img src="'+src+'">');
              $wrap.empty().append( img );
          }, thumbnailWidth, thumbnailHeight );
      }

      file.on('statuschange', function( cur, prev ) {
          if ( prev === 'queued' ) {
              $li.off( 'mouseenter mouseleave' );
              $btns.remove();
          }

          // 成功
          if ( cur === 'error' || cur === 'invalid' ) {
              console.log( file.statusText );
              showError( file.statusText );
          }

          $li.removeClass( 'state-' + prev ).addClass( 'state-' + cur );
      });

      $li.on( 'mouseenter', function() {
          $btns.stop().animate({height: 30});
      });

      $li.on( 'mouseleave', function() {
          $btns.stop().animate({height: 0});
      });

      $btns.on( 'click', 'span.cancel', function() {
    	  //上传图片之前需要先检查当前已经存储的图片
      	uploader.removeFile( file );
      });

      $li.appendTo( $queue );
  }
  // 负责view的销毁
  function removeFile( file ) {
      var $li = $('#'+file.id);
      $li.off().find('.file-panel').off().end().remove();
  }
  
  uploader.onFileQueued = function( file ) {
      addFile( file );
  };

  uploader.onFileDequeued = function( file ) {
      removeFile( file );
  };

  uploader.on( 'all', function( type ) {
      switch( type ) {
          case 'uploadFinished':
              console.log( 'uploadFinished' );
              console.log("uploadFinished 上传图片成功");
              break;

          case 'startUpload':
          	console.log( 'uploading' );
              break;

          case 'stopUpload':
          	console.log( 'stopUpload' );
              break;

      }
  });

  uploader.onError = function( code ) {
	  console.log(code,uploader.option());
		switch(code){	
			case "F_DUPLICATE":
        sousaiRemindDialog("请不要上传重复的图片。");
        break;
			case "F_EXCEED_SIZE":
            sousaiRemindDialog("超出大小限制了，请上传小于 200KB 的 jpg、jpeg、png、gif 格式的图片。");
            break;
			case "Q_TYPE_DENIED":
            sousaiRemindDialog("格式错误，请上传小于 200KB 的 jpg、jpeg、png、gif 格式的图片。");
            break;
			case "Q_EXCEED_NUM_LIMIT":
            sousaiRemindDialog("一个场地最多上传3张图片.");
            break;
				
		}
  };
  //在管理图片时需要使用
  /*$upload.on('click', function() {
      if ( $(this).hasClass( 'disabled' ) ) {
          return false;
      }
      uploader.upload();
  });*/
}


$(function(){
  //立即初始化比赛类型
  initMatchType();
  //初始化图片上传
  imageUploader();
  //点击返回场地列表
  $(".backList").click(function(){
    $(".courtList").slideDown();
    $(".editCourt").slideUp();
  });

  //点击删除场地 编辑场地界面
  $(".editCourt .deleteCourt").click(function(){
	  	$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对使用此场地的比赛和评论照成影响。");
		$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","sureDeleteEdit()");
		sousaiRemindDialog("确定删除？",-1,"show");
  });
  //点击保存修改
	$(".editCourt .saveCourt").click(function(){
			var court = getCourtInfo();
			//若court验证不通过或者有其他情况返回false时.不提交发布,直接返回false
  	  		if(!court){
  	  			return false;
  	  		}
			var data = {
					"court.id": court.id,
					"court.userId": court.userId,
					"court.verify": court.verify,
					"court.addr": court.addr,
					"court.courtTypeId": court.courtTypeId,
					"court.name": court.name,
					"court.matchType":court.matchType,
					"court.regionId": court.regionId,
					"court.region": court.region,
					"court.tableNum": court.tableNum,
					"court.tel": court.tel,
					"court.price": court.price,
					"court.workTime": court.workTime,
					"court.matchCount": court.matchCount,
					"court.intro": court.intro
			};
			
		$.ajax({
            url: "updateCourt",
            data: data,
            success: function(rspdata) {
          	  if( rspdata == "success" ){
          		  uploader.upload();
          		  window.setTimeout("window.location.href=window.location.href",3000);
          		  sousaiRemindDialog("保存成功,3秒后将刷新页面。");
          	  }else{
          		  sousaiRemindDialog("保存失败，错误代码为："+rspdata);
          	  }
            },
          });
	  });
  //点击发布场地 编辑场地界面
  $(".editCourt .passCourt").click(function(){
      $.ajax({
        url: "relCourtsByAdmin",
        data: {
          "ids": $("#inputCourtName").attr("data-id"),
        },
        success: function(rspdata) {
      	  if( rspdata == "success" ){
      		  sousaiRemindDialog("发布成功");
      		  $("#"+$("#inputCourtName").attr("data-id")).parent().parent().prepend('<span class="label label-info">已发布</span>');
      		  $(".backList").click();
      	  }else{
      		  sousaiRemindDialog("发布失败，错误代码为："+rspdata);
      	  }
        },
      });
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
  		initCourtType($("#inputMatchType").attr("data-matchtypeid"));  	      
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
	  region = $(".selectProvince option:selected").text() +"-"+ $(".selectCity option:selected").text()+"-"+ tgPrt.find(".selectCountry option:selected").text();
	  $("#inputCourtRegion").val(region).attr("data-regionid",tgPrt.find(".selectCountry option:selected").attr("data-regionid"));
  });
  
  var courtValidator = $("#editCourtForm").submit(function() {
    // update underlying textarea before submit validation
    tinyMCE.triggerSave();
  }).validate({
  rules: {
	  "court.name": {
      minlength: 6,
      maxlength: 60
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
    "court.price": {
        maxlength: 60
    },
    "court.workTime": {
        maxlength: 60
    },
  },
  messages: {
	  "court.name": {//新场地的场地名称
		    	  required: "请输入场地名称",
		    	  minlength: "场地名称至少6个字符",
		    	  maxlength: "场地名称至多60个字符"
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
    "court.price": {
        maxlength: "价格最多填写60个字符",
    },
    "court.workTime": {
        maxlength: "开发时间最多填写60个字符",
    },
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

  });

