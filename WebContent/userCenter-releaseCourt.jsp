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
  .files img {height: 70px;width: auto;}
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
        <form class="form-horizontal" id="releaseCourtForm" action="uploadCourtPic" method="post" enctype="multipart/form-data"> 
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
            <div class="fileupload-buttonbar"> 
             <span class="btn plus"><i class="icon-plus"></i><span>添加图片栏</span></span> 
             <span class="btn allCancel"> <i class="icon-ban-circle"></i> <span>全部取消</span> </span> 
             <table class="table table-striped">
              <tbody class="files">
              <tr id="tr1">
                <td>
                  <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,1)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                  <span id="preview1"></span>
                </td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              <tr class="hide" id="tr2">
                <td>
                  <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,2)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                  <span id="preview2"></span>
                </td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              <tr class="hide" id="tr3">
                <td>
                  <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,3)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                  <span id="preview3"></span>
                </td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              <tr class="hide" id="tr4">
                <td>
                  <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,4)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                  <span id="preview4"></span>
                </td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              <tr class="hide" id="tr5">
                <td>
                  <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,5)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                  <span id="preview5"></span>
                </td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              </tbody>
             </table> 
            </div> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtInfo">场地简介：</label> 
          </div> 
          <textarea id="inputCourtInfo" name="inputCourtInfo" required="required"></textarea> 
          <div class="control-group"> 
           <div class="controls"> 
            <!--<button id="fileSubmit" type="submit" class="btn btn-success pull-right start"> <i class="icon-upload"></i> <span>确定发布</span> </button> -->
            <input type="submit" class="btn btn-success pull-right" name="release" value="确定发布" /> 
            <input type="reset" class="btn pull-right" id="resetCourtForm" value="清空内容" /> 
            <button class="btn pull-right" name="preView">预览</button> 
           </div> 
          </div> 
        </form> 
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
    //onchange_callback: function(editor) {
    //  tinyMCE.triggerSave();
    //  $("#" + editor.id).valid();
    //}
    });
    /** 场地验证 **//*
    var courtValidator = $("#releaseCourtForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
      submitHandler: function(){
        console.log("通过验证，正在发送数据...");
        //$.ajax({
        //  url: "uploadCourtPic?imgNames=fack1&images=1111",
        //  type: "POST",
        //  dataType: 'json',
        //  data: null,
        //  success: function(rspdata) {
        //    alert(rspdata);
        //  },
        //  error: function() {
        //    alert("抱歉，发送数据出错了，请重新输入。");
        //  },
        //  });
      },
      ignore: ".ignore",
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
    //清空场地表单
    $("#resetCourtForm").click(function(){
      courtValidator.resetForm();
    });
    */
    //添加选项
    var trNumb = 1;
    $(".plus").click(function(){
      if(trNumb == 5){
        alert("抱歉，每个场地最多只可以上传5张图片！");
      }else{
        trNumb++;
        $("#tr"+trNumb).fadeIn();
      }
    });
    //全部取消
    $(".allCancel").on('click',function(event){
      //表格行隐藏并清空所有的输入框，文件名称，文件大小
      $(".files > tr").fadeOut().find("input").val("").end().find(".name").text("").end().find("size").text("");
      trNumb = 0;
    });
    $(".fileinput-button").on("click", function(event) {
      //event.preventDefault();
      console.log("选择图片");
      $(this).parent().find('input[type="file"]').trigger('click');
    });
    //取消上传
    $('.cancel').on('click',function(event){
      console.log("取消");
      $(this).parent().parent().fadeOut().find("input").val("").end().find(".name").text("").end().find("size").text("");
      trNumb--;
    });
  })
    //检测是否支持HTML5 File API 
    window.URL = window.URL || window.webkitURL;
    //验证上传图片格式，大小，并在通过后显示图片预览
    function imgValid(obj,id) {
      var files = obj.files,
            img = new Image(), imgname, imgsize, imgsizeMB, imgtype, 
      previewId = "preview" + id,
       fileList = document.getElementById(previewId),
       inputNames = $("#tr"+id+' input[type="text"]'),
       fileName = $("#tr"+id+" .name"),
       fileSize = $("#tr"+id+" .size"); //jquery对象转换为DOM对象

      if(window.URL){
        //File API
        imgname = files[0].name;
        imgtype = files[0].type;
        imgsize = files[0].size;
        imgsizeMB = (imgsize/1024/1024).toFixed(2);
        if(imgsize >= 1*1024*1024) {
          alert("照片大小为 "+imgsizeMB+"MB,照片太大了，请上传小于1MB的照片.");
        }else if(imgtype != "image/png" && imgtype != "image/gif" && imgtype != "image/jpg" && imgtype != "image/jpeg" ){
          alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
        }else{
          //alert(files[0].name + "," + files[0].size + " bytes");
          fileName.text(imgname);
          fileSize.text(imgsizeMB+"MB");
          inputNames.attr("value",imgname);
          //imgHtml += window.URL.createObjectURL(files[0]) +"\" />"
          img.src = window.URL.createObjectURL(files[0]); //创建一个objectURL，并不是你的本地路径
          //img.width = 100;
          img.onload = function(e) {
             window.URL.revokeObjectURL(this.src); //图片加载后，释放objectURL
          }
          //清除上一次的预览图片
          $(fileList).find("img").remove();
          fileList.appendChild(img);
        }
      }else if(window.FileReader){
        //opera不支持createObjectURL/revokeObjectURL方法。我们用FileReader对象来处理
        //清除上一次的预览图片
        $(fileList).find("img").remove();
        var reader = new FileReader();
        reader.readAsDataURL(files[0]);
        reader.onload = function(e){
          //alert(files[0].name + "," +e.total + " bytes");
          imgname = files[0].name;
          imgtype = files[0].type;
          imgsize = e.total;
          imgsizeMB = (imgsize/1024/1024).toFixed(2);
          if(imgsize >= 1*1024*1024) {
            alert("照片大小为 "+imgsizeMB+"MB,照片太大了，请上传小于1MB的照片.");
          }else if(imgtype != "image/png" && imgtype != "image/gif" && imgtype != "image/jpg" && imgtype != "image/jpeg" ){
            alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
          }else{
            img.src = this.result;
            //img.width = 100;
            fileList.appendChild(img);
            fileName.text(imgname);
            fileSize.text(imgsizeMB+"MB");
            inputNames.attr("value",imgname);
          }
        }
      }else{
        //ie
        obj.select();
        obj.blur();
        var nfile = document.selection.createRange().text;//IE下为文件路径
        var fileText =nfile.substring(nfile.lastIndexOf("."),nfile.length);//文件后缀名
        document.selection.empty();
        imgname = nfile;
        imgtype =fileText.toLowerCase();//转化为统一小写后缀名.jpg等
        imgsize = img.fileSize;
        imgsizeMB = (imgsize/1024/1024).toFixed(2);
        img.src = nfile;
        //img.width = 100;
        img.onload=function(){
          //alert(nfile+","+img.fileSize + " bytes");
          if(imgsize >= 1*1024*1024) {
            alert("照片大小为 "+imgsizeMB+"MB,照片太大了，请上传小于1MB的照片.");
          }else if(imgtype != ".png" && imgtype != ".gif" && imgtype != ".jpg" && imgtype != ".jpeg" ){
            alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
          }
        }
        $(fileList).find("img").remove();
        fileList.appendChild(img);
        //fileList.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src='"+nfile+" style=\"width:120px\"')";
        fileName.text(imgname);
        fileSize.text(imgsizeMB+"MB");
        inputNames.attr("value",imgname);
      }
    }
</script>
 </body>
</html>