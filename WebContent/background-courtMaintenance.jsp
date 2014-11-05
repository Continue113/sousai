<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 场地维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-场地维护" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <!-- <link href="css/jplist.min.css" rel="stylesheet" /> -->
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style type="text/css">
  .files img {height: 70px;width: auto;}
  /** 编辑场地 按钮bar  **/
  .editCourt > .btnbar {margin-left: 0;}
  /** 编辑场地按钮bar 中的按钮  **/
  .editCourt > .btnbar > .btn {float: right;margin-left: 10px;}  
  </style>
 </head> 
 <body class="background"> 
  <s:include value="background-head.jsp" /> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a>
     <span class="logotext">管理员页面</span> 
    </div>
   </div> 
   <div class="row"> 
    <div class="span11"> 
     <!-- background-remind & backgroundMenu --> 
     <ul class="breadcrumb background-remind"> 
      <li>提醒:</li> 
      <li><a href="javascript:void(0)">待处理的比赛信息<span>(5)</span></a></li> 
     </ul> 
     <div class="span2 backgroundMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>系统发布:</a></h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li class="active"><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="javascript:void(0)"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li> 
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li> 
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li> 
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9">
     <div class="matchList">
      <!--场地维护 开始--> 
      <div id="courtMaintenance">
       <!-- panel --> 
       <div class="panel-top">
       <select class="selectFilter"> <option data-forfilter=".court-name">场地名称</option> <option data-forfilter=".match-type">比赛类型</option> <option data-forfilter=".court-address">场地地址</option> <option data-forfilter=".releaseTime">发布时间</option> <option data-forfilter=".releaseUser">发布用户</option> </select> 
        <div class="text-filter-box input-append"> 
         <input data-path=".court-name" type="text" placeholder="请输入关键字" data-control-type="textbox" data-control-name="match-filter" data-control-action="filter" /> 
         <select class="selectFilter"> <option data-forfilter=".court-name">场地名称</option> <option data-forfilter=".match-type">比赛类型</option> <option data-forfilter=".court-address">场地地址</option> <option data-forfilter=".releaseTime">发布时间</option> <option data-forfilter=".releaseUser">发布用户</option> </select> 
         <span class="add-on"><i class="icon-search"></i></span> 
        </div> 
        <div class="btnbar pull-right"> 
         <button type="button" class="btn deleteCourt">删除选中</button>
         <button type="button" class="btn passCourt">发布选中</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover courtTable"> 
        <caption>场地维护</caption> 
        <thead>
         <tr>
          <th>场地名称</th>
          <th>比赛类型</th>
          <th>场地地址</th>
          <th>发布时间</th>
          <th>发布用户</th>
         </tr>
        </thead> 
        <tbody></tbody> 
       </table> 
      </div> 
      </div>
      <!--场地维护 结束-->
      
      <!-- ****************************************************************************************************************** -->
      <!-- ****************************************************************************************************************** -->
      <!-- ****************************************************************************************************************** -->

      <!--场地编辑 开始-->
      <div class="editCourt hide">
        <div class="btnbar row"> 
         <button type="button" class="btn passCourt ">审核通过</button> 
         <button type="button" class="btn saveCourt ">保存修改</button>
         <button type="button" class="btn deleteCourt ">删除场地</button>
         <button type="button" class="btn backList ">返回列表</button>
        </div>
        <div class="page-header row"> 
         <h4>场地基本信息</h4> 
        </div> 
        <form class="form-horizontal row" id="editCourtForm"> 
        <fieldset> 
          <legend>场地基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">场地名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" required="required" /> 
            <label class="hide error">请输入场地名称</label>
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
            <label class="hide error">请选择场地类型</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label> 
           <div class="controls form-inline"> 
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
            <input class="hide" id="inputRegionId" type="text" name="court.regionId" value=""/>
            <input class="hide" id="inputRegion" type="text" name="court.region" value=""/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtAddress" name="court.addr" placeholder="如：某地某桥某号某号楼" required="required" />
            <label class="hide error">请输入场地地址</label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="number" id="inputCourtTables" name="court.tableNum" placeholder="如：12 或 1 " min="1" /> 
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
          </fieldset>
        </form>
        </div>

      <!--全部采集主体结束--> 
     </div>
     <!-- /span8 --> 
    </div>
    <!-- /span11--> 
   </div>
   <!-- /row--> 
  </div>
  <!-- /container--> 
  <!-- HTML5 elements ,IE9模式, for IE6-8 --> 
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/IE9.js"></script>
  <![endif]--> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script> 
  <!--<script src="js/jplist.min.js"></script> -->
  <script src="js/sousai.common.js"></script>
  <!-- handlebars template -->
  <script id="court-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <tr class="court" data-info="{{data this}}"> 
          <td class="court-title"><label for="{{id}}"><input type="checkbox" id="{{id}}"/>{{name}}</label></td> 
          <td class="match-type">{{matchType}}</td> 
          <td class="court-addr">{{addr}}</td> 
          <td class="court-releaseTime">{{relTime}}</td> 
          <td class="court-releaseUser">{{userName}}</td> 
          <td class="court-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">查看编辑</a></td> 
         </tr>
                            
    {{/each}}
  </script>
  <script>
  $(function(){
	  //ajax接收所有的场地
		$.post("getAllCourt", null, function(data) {
	      console.log(data);//alert(data);
        var target = $(".courtTable > tbody"),template = Handlebars.compile($('#court-template').html());
        Handlebars.registerHelper("data",function(v){
          //将当前对象转化为字符串，保存在data-info中
          console.log(v);
          var v1 = JSON.stringify(v);
          //console.log("v1:"+v1);
          return v1;
        });
        target.empty(); //清空tbody
        target.html(template(data));
	    });
    //管理员界面表格列字数限制，溢出省略
    $("td > label").wordLimit();
    $(".court-address").wordLimit();
    //点击编辑比赛隐藏List列表同时显示编辑比赛
    $("tbody").on("click",".court-oprate > a",function(event){
      $(".courtList").slideUp();
      $(".editCourt").slideDown();
    });
    //点击返回场地列表
    $(".backList").click(function(){
      $(".courtList").slideDown();
      $(".editCourt").slideUp();
    });

    //***************************************************************************************
    // 编辑场地的js代码，同场地发布页面。 ***************************** BEGIN ***************************
    //***************************************************************************************
    
    //点击大类比赛类型获得具体比赛类型
  $(".selectMatchType").change(function() {
  //tgPrt: targetparent 目标父元素
  var tgPrt = $(this).parent();
  if (tgPrt.find(".selectMatchType option:selected").attr("value") == 0) {
    //当点击默认选项时将具体比赛类型隐藏并设为默认状态 同时 将场地类型设置为默认状态
    tgPrt.find(".selectParticularMatchType").hide().empty().append("<option value=0>请选择比赛类型</option>");
    $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
    //若已选择“其他”则改为默认选项
      if( omtf == 1){
      tgPrt.find(".selectParticularMatchType").attr("name","court.matchType");
        tgPrt.find(".omthide").slideUp();
        $("#otherMatchType").removeAttr("name");
        omtf = 0;
      }
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
    tgPrt.find(".selectParticularMatchType").show();
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
  
    //***************************************************************************************
    // 编辑场地的js代码，同场地发布页面。 ***************************** END *****************************
    //***************************************************************************************
    
  </script>  
 </body>
</html>