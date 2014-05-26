<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布场地 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布场地" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.userCenter.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
  .preview > img {height:70px;}
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
    <!--   <div class="span7"> 
     <ul class="nav nav-tabs searchboxMenu"> 
      <li class="active"><a href="#searchbox-match" data-toggle="tab">比赛</a></li> 
      <li><a href="#searchbox-field" data-toggle="tab">场地</a></li> 
     </ul> 
     <div class="tab-content"> 
      <div id="searchbox-match" class="tab-pane active"> 
       <div class="input-append"> 
        <input type="text" class="span5" placeholder="输入您想要的比赛" /> 
        <button class="btn btn-success btn-matchsearch-append" type="button"><i class="icon-search icon-white"></i>&nbsp;搜&nbsp;索</button> 
       </div> 
      </div> 
      <div id="searchbox-field" class="tab-pane"> 
       <div class="input-append"> 
        <input type="text" class="span5" placeholder="输入您要找的场地" /> 
        <button class="btn btn-success btn-matchsearch-append" type="button"><i class="icon-search icon-white"></i>&nbsp;搜&nbsp;索</button> 
       </div> 
      </div> 
     </div> 
    </div> --> 
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
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li class="active"><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
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
       <div id="releaseCourt" class="tab-pane active"> 
        <div class="page-header"> 
         <h4>场地基本信息</h4> 
        </div> 
        <div class="form-horizontal" id="releaseCourtForm" > 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">场地名称：</label> 
           <div class="controls"> 
            <input class="span5 add-on" type="text" id="inputCourtName" name="inputCourtName" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectMatchType">比赛类型：</label> 
           <div class="controls"> 
            <s:include value="selectMatchType.jsp" /> 
            <!-- /选择比赛类型 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtType">场地类型：</label> 
           <div class="controls"> 
            <!-- 选择场地类型 --> 
            <select name="courtType"> <option value="0">请选择场地类型</option> <option value="courtType-inner">室内</option> <option value="courtType-outer">室外</option> <option value="courtType-zq">体育局</option> <option value="courtType-pp">俱乐部</option> <option value="courtType-lq">社区</option> <option value="courtType-zq">单位</option> <option value="courtType-zq">学校</option> <option value="courtType-pp">临时</option> <option value="courtType-lq">公共</option> <option value="courtType-zq">其他</option> </select> 
            <!-- /选择场地类型 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label> 
           <div class="controls form-inline"> 
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5 add-on" type="text" id="inputCourtAddress" name="inputCourtAddress" placeholder="如：某地某桥某号某号楼" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTables" placeholder="如：乒乓球台12张 或 足球场1个" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTel">联系电话：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTel" placeholder="固定电话或移动电话 或 无" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtPrice">价格：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtPrice" placeholder="如：50元/小时/场 或 免费" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtOpenTime">开放时间：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtOpenTime" placeholder="如：每天9:00-18:00" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="uploadCourtImgs">场地图片：</label> 
           <div class="controls"> 
            <form id="uploadForm" action="uploadPic" method="post" enctype="multipart/form-data">
            <div class="fileupload-buttonbar"> 
             <span class="btn fileinput-button"> <i class="icon-plus"></i> <span>选择图片</span> 
             </span> 
             <input class="hide" id="fileImage" type="file" name="files[]" multiple="" accept="image/png, image/gif, image/jpg, image/jpeg" />
             <button id="fileSubmit" type="submit" class="btn start"> <i class="icon-upload"></i> <span>上传</span> </button> 
             <button type="reset" class="btn cancel"> <i class="icon-ban-circle"></i> <span>取消</span> </button> 
             <table class="table table-striped">
              <tbody class="files"></tbody>
             </table> 
            </div> 
            </form>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtInfo">场地简介：</label> 
          </div> 
          <textarea id="inputCourtInfo" name="inputCourtInfo" required="required"></textarea> 
          <div class="control-group"> 
           <div class="controls"> 
            <input type="submit" class="btn btn-success pull-right" name="release" value="确定发布" /> 
            <input type="reset" class="btn pull-right" id="resetCourtForm" value="清空内容" /> 
            <button class="btn pull-right" name="preView">预览</button> 
           </div> 
          </div> 
        </div> 
       </div> 
       <!-- /releaseCourt --> 
      </div> 
      <!-- /tab-content --> 
     </div> 
     <!-- /span8 offset2 --> 
    </div> 
    <!-- /span11 主要代码 --> 
   </div> 
   <!-- /row --> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" />
  <!-- 页首导航条 --> 
  <script src="js/jquery.validate.min.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/zxxFile.js"></script>
  <script>
  $(function(){
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
    /** 场地验证 **/
    var courtValidator = $("#releaseCourtForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
      submitHandler: function(){alert("发布场地成功");},
      ignore: "",
      rules:{
        inputCourtName:{
          minlength: 6,
          maxlength: 30
        },
        inputCourtAddress:{
          minlength: 6,
          maxlength: 30
        }
      },
      messages: {
      inputCourtName: {
        required: "请输入场地名称",
        minlength: "场地名称至少6个字符",
        maxlength: "场地名称至多30个字符"
      },
      inputCourtAddress: {
        required: "请输入场地地址",
        minlength: "场地地址至少6个字符",
        maxlength: "场地地址至多30个字符"
      },      
      selectMatchType: "请选择一种比赛类型",
      selectCourtType: "请选择一种场地类型",
      inputCourtInfo: "请输入场地简介"
    },
    errorPlacement: function(error, element){
        if (element.is("textarea")) {
          error.insertAfter($("label[for='inputCourtInfo']"));
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
    }
    /** 清空场地表单 **/
    $("#resetCourtForm").click(function(){
      courtValidator.resetForm();
    });
    /** 上传图片 **/
    $(".fileinput-button").click(function(){
      $("#fileImage").trigger('click');
    });
    $('button[type="reset"]').on('click',function(){
      $(".upload-append-list").fadeOut();
      //转换为DOM元素，并调用DOM的form reset方法
      $("#uploadForm").get[0].reset();
    });

    var params = {
      fileInput: $("#fileImage").get(0),
      upButton: $("#fileSubmit").get(0),
      url: "uploadPic",
      filter: function(files) {
        var arrFiles = [];
        for (var i = 0, file; file = files[i]; i++) {
          if (file.type.indexOf("image") == 0) {
            if (file.size >= 1*1024*1024) {
              alert('" '+file.name +' "照片太大了，请上传小于1MB的照片');  
            } else {
              arrFiles.push(file);
            }     
          } else {
            alert('文件" ' + file.name + ' "不是图片。');  
          }
        }
        return arrFiles;
      },
      onSelect: function(files) {
        var html = '', i = 0;
        $(".files").html('<tr class="upload_loading"></tr>');
        var funAppendImage = function() {
          file = files[i];
          if (file) {
            var reader = new FileReader()
            reader.onload = function(e) {
              /*html = html + '<div id="uploadList_'+ i +'" class="upload_append_list"><p><strong>' + file.name + '</strong>    '+ 
                '<a href="javascript:" class="upload_delete" title="删除" data-index="'+ i +'">删除</a><br />' +
                '<img id="uploadImage_' + i + '" src="' + e.target.result + '" class="upload_image" /></p>'+ 
                '<span id="uploadProgress_' + i + '" class="upload_progress"></span>' +
              '</div>';*/
              html = html + 
              '<tr class="upload-append-list" id="uploadList-'+ i +'">'+
              '<td><span class="preview"><img id="uploadImage-' + i + '" src="' + e.target.result + '"/></p></span></td>'+
              '<td><span class="name">' + file.name + '</span></td>'+
              '<td><span class="size">' + (file.size/1024/1024).toFixed(2) + 'MB</span></td>'+
              '<td><span id="uploadProgress-' + i + '" class="upload_progress"></span></td>' +
              '<td><button type="reset" class="btn cancel" data-index="'+ i +'"><i class="icon-ban-circle"></i><span>取消</span></button></td></tr>';
              i++;
              funAppendImage();
            }
            reader.readAsDataURL(file);
          } else {
            $(".files").html(html);
            if (html) {
              //删除方法
              $(".cancel").click(function() {
                ZXXFILE.funDeleteFile(files[parseInt($(this).attr("data-index"))]);
                return false; 
              });
              //提交按钮显示
              $("#fileSubmit").show();  
            } else {
              //提交按钮隐藏
              $("#fileSubmit").hide();  
            }
          }
        };
        funAppendImage();   
      },
      onDelete: function(file) {
        $("#uploadList-" + file.index).fadeOut();
      },
      onProgress: function(file, loaded, total) {
        var eleProgress = $("#uploadProgress-" + file.index), percent = (loaded / total * 100).toFixed(2) + '%';
        eleProgress.show().html(percent);
      },
      onSuccess: function(file, response) {
        //$("#uploadInf").append("<p>上传成功，图片地址是：" + response + "</p>");
        console.log(response);
        alert( file.name + "上传成功！");
      },
      onFailure: function(file) {
        //$("#uploadInf").append("<p>图片" + file.name + "上传失败！</p>");  
        alert(file.name + "上传失败！");
        $("#uploadImage-" + file.index).css("opacity", 0.2);
      },
      onComplete: function() {
        //提交按钮隐藏
        $("#fileSubmit").hide();
        //file控件value置空
        $("#fileImage").val("");
        //$("#uploadInf").append("<p>当前图片全部上传完毕，可继续添加上传。</p>");
        alert("上传图片完成！");
      }
    };
    ZXXFILE = $.extend(ZXXFILE, params);
    ZXXFILE.init();
  })
</script>
 </body>
</html>