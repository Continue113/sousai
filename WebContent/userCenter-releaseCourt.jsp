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
        <form class="form-horizontal" id="releaseCourtForm" action="relCourt" method="post" enctype="multipart/form-data"> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">场地名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛"/> 
            <label class="hide error">场地名称不能为空！</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectMatchType">比赛类型：</label> 
           <div class="controls"> 
            <select class="selectMatchType" name="court.matchType"></select>
            <label class="hide" class="control-label" for="otherMatchType">请输入类型：</label>
            <input class="hide" id="otherMatchType" type="text" value="" holderplace="请填写比赛类型"/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtType">场地类型：</label> 
           <div class="controls"> 
            <!-- 选择场地类型 --> 
            <select class="selectCourtType" name="courtType"> 
              <option value="0">请选择场地类型</option> 
              <option value="courtType-inner">室内</option> 
              <option value="courtType-outer">室外</option> 
              <option value="courtType-zq">体育局</option> 
              <option value="courtType-pp">俱乐部</option> 
              <option value="courtType-lq">社区</option> 
              <option value="courtType-zq">单位</option> 
              <option value="courtType-zq">学校</option> 
              <option value="courtType-pp">临时</option> 
              <option value="courtType-lq">公共</option> 
              <option value="courtType-zq">其他</option> 
            </select> 
            <!-- /选择场地类型 --> 
            <input class="hide" id="inputCourtType" type="text" value=""/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label> 
           <div class="controls form-inline"> 
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
            <input class="hide" id="inputRegion" type="text" name="region" value=""/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtAddress" name="court.addr" placeholder="如：某地某桥某号某号楼"/>
            <label class="hide error">场地地址不能为空！</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTables" name="court.tableNum" placeholder="如：乒乓球台12张 或 足球场1个" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTel">联系电话：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTel" name="court.tel" placeholder="固定电话或移动电话 或 无" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtPrice">价格：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtPrice" name="court.price" placeholder="如：50元/小时/场 或 免费" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtOpenTime">开放时间：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtOpenTime" name="court.workTime" placeholder="如：每天9:00-18:00" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="uploadCourtImgs">场地图片：</label> 
           <div class="controls"> 
            <div class="fileupload-buttonbar"> 
             <span class="btn plus"><i class="icon-plus"></i><span>添加图片栏</span></span> 
             <span class="btn allCancel"> <i class="icon-ban-circle"></i> <span>全部取消</span> </span> 
             <span class="error">请上传小于 200KB 的 jpg、jpeg、png、gif 格式的图片。</span>
             <table class="table table-striped">
              <tbody class="files">
              <tr id="tr1">
                <td>
                  <span class="btn fileinput-button" onclick="selectPic(1)"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" id="fileImage1" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,1)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                </td>
                <td><span class="preview" id="preview1"></span></td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel" onclick="deleteTr(1)"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              </tbody>
             </table> 
            </div> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtInfo">场地简介：</label> 
          </div> 
          <textarea id="inputCourtInfo" name="intro"></textarea>
          <div class="control-group"> 
           <div class="controls"> 
            <button type="button" class="btn btn-success pull-right" id="rlsCourt"><span>确定发布</span></button> 
            <button type="reset" class="btn pull-right"><span>情况内容</span></button> 
            <button type="button" class="btn pull-right">预览</button> 
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
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script>
  $(function(){
    //点击确认发布，获取地区，比赛类型，场地类型
    $("#rlsCourt").click(function(){
      //检测场地名称 场地地址
      if($("#inputCourtName").val() == ""){
        $("#inputCourtName").focus().parent().find("label").slideDown();
        return false;
      }else if($("#inputCourtAddress").val() == ""){
        $("#inputCourtAddress").focus().parent().find("label").slideDown();
        return false;
      }
      //console.log("填写隐藏地区表单");
      //获取地区Code
      if( $(".form-inline > .selectCountry option:selected").attr("value") !=0 ){
        $("#inputRegion").attr("value",$(".form-inline > .selectCountry option:selected").attr("value"));
      }else if( $(".form-inline > .selectCity option:selected").attr("value") !=0 ){
        $("#inputRegion").attr("value",$(".form-inline > .selectCity option:selected").attr("value"));
      }else{
        $("#inputRegion").attr("value",$(".form-inline > .selectProvince option:selected").attr("value"));
      }
      //提交表单
      alert("完成隐藏地区输入框填写,提交表单");
      $("#releaseCourtForm").submit();
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
        alert("抱歉，每个场地最多只可以上传5张图片！");
      }else{
        trNumb++;
        $(".files").append('<tr class="hide" id="tr'+trNumb+'"><td><span class="btn fileinput-button"  onclick="selectPic('+trNumb+')"><i class="icon-plus"></i><span>选择图片</span></span><input class="hide fileImage" id="fileImage'+trNumb+'" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,'+trNumb+')"/><input class="hide fileImageNames" type="text" name="imgNames" value=""/></td><td><span class="preview" id="preview'+trNumb+'"></span></td><td><span class="name"></span></td><td><span class="size"></span></td><td><span class="btn cancel" onclick="deleteTr('+trNumb+')"><i class="icon-ban-circle"></i>取消</span></td></tr>')
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
  })
  //记录表格中的上传图片的数量
  var trNumb = 1;
  //验证上传图片格式，大小，并在通过后显示图片预览
  function imgValid(obj,id) {
    var files = obj.files,
          img = new Image(), imgname, imgsize, imgsizeMB, imgtype, 
    previewId = "preview" + id,
     fileList = document.getElementById(previewId),
     inputNames = $("#tr"+id+' input[type="text"]'),
     fileName = $("#tr"+id+" .name"),
     fileSize = $("#tr"+id+" .size"); //jquery对象转换为DOM对象

    if(obj.files && obj.files[0]){
      //清除上一次的预览图片
      $(fileList).find("img").remove();
      var reader = new FileReader();
      reader.readAsDataURL(files[0]);
      reader.onload = function(e){
        //alert(files[0].name + "," +e.total + " bytes");
        imgname = files[0].name;
        imgtype = files[0].type;
        imgsize = e.total;
        imgsizeKB = (imgsize/1024).toFixed(2);
        if(imgsize >= 200*1024) {
          alert("照片大小为 "+imgsizeKB+"KB,照片太大了，请上传小于200KB的照片.");
        }else if(imgtype != "image/png" && imgtype != "image/gif" && imgtype != "image/jpg" && imgtype != "image/jpeg" ){
          alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
        }else{
          img.src = this.result;
          //img.width = 100;
          fileList.appendChild(img);
          fileName.text(imgname);
          fileSize.text(imgsizeKB+"KB");
          inputNames.attr("value",imgname);
        }
      }
    }else{
      //ie 只能得到文件名
      var nfile = $("#tr"+id+' input[type="file"]').val();//fake路径
      var fileText =nfile.substring(nfile.lastIndexOf("."),nfile.length);//文件后缀名
      imgname = nfile.substring(nfile.lastIndexOf("\\")+1,nfile.length);//文件名;
      imgtype =fileText.toLowerCase();//转化为统一小写后缀名.jpg等
      if(imgtype != ".png" && imgtype != ".gif" && imgtype != ".jpg" && imgtype != ".jpeg" ){
          alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
      }
      fileName.text(imgname);
      fileSize.text("");
      inputNames.attr("value",imgname);
    }
  }
  //场地预览
  function courtPreview(){
    //定义变量名 场地名称 比赛类型（大类、类型） 场地类型 场地区域（省、市、区） 详细地址 赛场数 联系电话 价格 开放时间 场地图片 
    var courtName = $("#inputCourtName").val(),
        matchTypeGenera = $("selectMatchType option:selected").val(),
        matchType,
        courtType = $('select[name="courtType"] option:selected').val(),
        courtProvince = $(".selectProvince option:selected").val(),
        courtCity = $(".selectCity option:selected").val(),
        courtCountry = $(".selectCountry option:selected").val(),
        courtAddress = $("#inputCourtAddress").val(),
        courtTables = $("#inputCourtTables").val(),
        courtTel = $("#inputCourtTel").val(),
        courtPrice = $("#inputCourtPrice").val(),
        courtOpenTime = $("#inputCourtOpenTime").val(),
        courtPics = $(".files .preview > img").attr("src");
    //将内容发送到预览页面
  }
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
  </script>
 </body>
</html>