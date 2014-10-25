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
            <input class="span5" type="text" id="inputCourtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" required="required" /> 
            <label class="hide error">场地名称不能为空！</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectMatchType">比赛类型：</label> 
           <div class="controls"> 
            <select class="selectMatchType" name="mcId">
              <option value=0>请选择比赛类型</option>
            </select>
            <select class="selectParticularMatchType hide" name="court.matchType"></select>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：</label>
            <input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型"/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtType">场地类型：</label> 
           <div class="controls"> 
            <!-- 选择场地类型 --> 
            <select class="selectCourtType" name="court.courtTypeId">
              <option value=0>请先选择比赛类型</option>
            </select> 
            <!-- /选择场地类型 --> 
            <input class="hide" id="inputCourtType" type="text" value=""/>
            <label class="hide error">场地类型不能为空！</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label> 
           <div class="controls form-inline"> 
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
            <input class="hide" id="inputRegion" type="text" name="court.regionId" value=""/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtAddress" name="court.addr" placeholder="如：某地某桥某号某号楼" required="required" />
            <label class="hide error">场地地址不能为空！</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTables" name="court.tableNum" placeholder="如：12 或 1 " /> 
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
           <!-- OLD pic upload -->
           
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
            <button type="reset" class="btn pull-right"><span>重置</span></button> 
            <button type="button" class="btn pull-right" onclick="courtPreview()">预览</button> 
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
          sctParMatchType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</  option>");
        }
        sctParMatchType.append("<option value=1>其他</option>"); //每一个大类比赛类型的“其他”选项
      },
      error: function() {
        alert("抱歉，获取比赛类型出错了。");
      },
    }); //ajax 已得到具体比赛类型
    //出现具体比赛类型下拉列表并且不再隐藏
    tgPrt.find(".selectParticularMatchType").removeClass("hide");
  }
  });
  
  //点击比赛类型获取相应场地类型 或者 选择其他出现输入框
  var omtf = 0;//other match type flag ；0表示默认，1表示已经选过“其他”选项
  $(".selectParticularMatchType").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent();
    if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 1 && omtf == 0){
      //移除name属性，即不会使用select内容提交
      $(this).removeAttr("name");
      //当用户选择其他的时候，弹出隐藏的label和input
      tgPrt.find(".omthide").slideDown();
      //添加输入框的name属性，并改变omtf
      $("#otherMatchType").attr("name","court.matchType");
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
            sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</  option>");
          }
        },
        error: function() {
          alert("抱歉，获取场地类型出错了。");
        },
      }); //ajax 已得到场地类型

    }else if (tgPrt.find(".selectParticularMatchType option:selected").attr("value") == 0) {
      //当用户选择具体比赛类型为默认选项时的时候，就将场地类型下拉列表框中原有的“请选择”字样删除。
      $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
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
            sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</  option>");
          }
        },
        error: function() {
          alert("抱歉，获取场地类型出错了。");
        },
      }); //ajax 已得到场地类型
    }
  });

  //点击确认发布，获取地区，比赛类型，场地类型
  $("#rlsCourt").click(function(){
    //检测场地名称 场地地址 场地类型
    if($("#inputCourtName").val() == ""){
      $("#inputCourtName").focus().parent().find("label").slideDown();
      return false;
    }else if($(".selectCourtType option:selected").attr("value") == 0){
      $(".selectCourtType").focus().parent().find("label").slideDown();
      return false;
    }else if($("#inputCourtAddress").val() == ""){
      $("#inputCourtAddress").focus().parent().find("label").slideDown();
      return false;
    };

    //console.log("填写隐藏地区表单");
    //获取地区Code
    if( $(".form-inline > .selectCountry option:selected").attr("value") !=0 ){
      $("#inputRegion").attr("value",$(".form-inline > .selectCountry option:selected").attr("data-regionid"));//alert($("#inputRegion").attr("value")+$("#inputRegion").attr("name"));
    }else if( $(".form-inline > .selectCity option:selected").attr("value") !=0 ){
      $("#inputRegion").attr("value",$(".form-inline > .selectCity option:selected").attr("data-regionid"));//alert($("#inputRegion").attr("value")+$("#inputRegion").attr("name"));
    }else{
      $("#inputRegion").attr("value",$(".form-inline > .selectProvince option:selected").attr("data-regionid"));//alert($("#inputRegion").attr("value")+$("#inputRegion").attr("name"));
    }
    
    //提交表单
    console.log("完成隐藏地区输入框填写,提交表单");
    $("#releaseCourtForm").submit();
  });
  //若已经将error label显示出来，则在点击 #inputCourtName #inputCourtAddress .selectCourtType 时将error label隐藏
  $("#inputCourtName").click(function(){
    $(this).parent().find("label").slideUp();
  });
  $("#inputCourtAddress").click(function(){
    $(this).parent().find("label").slideUp();
  });
  $(".selectCourtType").change(function(){
    $(".selectCourtType").parent().find("label").slideUp();
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

  });
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
        //alert(files[0].name + "," +e.total + " bytes");
        imgname = files[0].name;
        imgtype = files[0].type;
        imgsize = e.total;
        imgsizeKB = (imgsize/1024).toFixed(2);
        if(imgsize >= 200*1024) {
          alert("照片大小为 "+imgsizeKB+"KB,照片太大了，请上传小于200KB的照片.");
        }else if(imgtype != "image/png" && imgtype != "image/gif" && imgtype != "image/jpg" && imgtype != "image/jpeg" ){
          alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
        }else if( trNumb == 2 && imgname == $("#tr1 .name").text() ){ //trNumb为2时，有两个图片栏，检验第一个图片栏与第二个图片栏是否同名
          alert("图片 "+ imgname +" 名称重复。");
        }else if( trNumb == 3 && ( imgname == $("#tr1 .name").text() || imgname == $("#tr2 .name").text() ) ){ //trNumb为3时，有三个图片栏，检验第一、第二个图片栏是否与第三个图片栏同名
          alert("图片 "+ imgname +" 名称重复。");
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
          alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
      }
      fileName.text(imgname);
      fileSize.text("");
      inputNames.attr("value",imgname);
    }
  }
  // OLD pic upload js
  
  //添加选项
  $(".plus").click(function(){
    if(trNumb == 3){
      alert("抱歉，每个场地最多只可以上传3张图片！");
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
  </script>
 </body>
</html>