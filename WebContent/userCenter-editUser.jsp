<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>我的搜赛 &middot; 编辑账户 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-编辑账户" /> 
  <meta name="author" content="KING@CQU" />
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" />
  <link href="css/sousai.userCenter.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style>
  /** 更改密码label排列方式 **/
  .control-label-changePwd {margin: 5px 0 0 0;}
  /** 当前头像 **/
  #editUserForm .crtUserIcon {
  display: inline-block;
  padding: 4px;
  border: 1px solid #ddd;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -moz-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
  -webkit-transition: all 0.2s ease-in-out;
  -moz-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  }
  #editUserForm .crtUserIcon > img {width: 100px;height: 100px;}
  /** 选中图片边框为绿色 **/
  .active{border-color: #51a351;}
  /** 缩略图**/
  .userCenter .thumbnail img {width: 50px;height: 50px;}
  #imghead {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);height: 70px;}
  .fileinput-button {margin-top: 5px;}
  </style>

</head>
<body class="userCenter">
<s:include value="navbar.jsp" /><!-- 页首导航条 -->
<div class="container"> 
 <div class="hdpush"></div> 
 <div class="row"> 
  <div class="span4"> 
   <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a>
   <span class="logotext">我的搜赛</span> 
  </div> 
  <s:include value="searchbox.jsp" /><!-- 搜索框 -->
 </div><!-- /row -->

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
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li class="active"><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind">
       <ul class="breadcrumb"> 
        <li>比赛信息:</li> 
        <li><a href="javascript:void(0)">乒乓球<span>(5)</span></a></li> 
        <li><a href="javascript:void(0)">羽毛球<span>(5)</span></a></li> 
        <li><a href="javascript:void(0)">保宁球<span>(5)</span></a></li> 
        <li><a href="javascript:void(0)">网球<span>(5)</span></a></li> 
       </ul>
      </div> 
      <div class="tab-content">
       <div id="editUser" class="tab-pane active"> 
        <div class="page-header">
         <h4>账户基本信息</h4>
        </div> 
        <form id="editUserForm" class="form-horizontal"> 
         <fieldset> 
          <legend>账户基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="userName">用户名：</label> 
           <div class="controls"> 
            <input class="span3 ignore" type="text" id="userName" value="<s:property value="#session.userBean.userName" />" disabled /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="courtOpen">密码重置：</label> 
           <div class="controls"> 
            <label class="control-label-changePwd" for="inputUserPassword">旧密码</label> 
            <input class="span3 add-on" type="password" id="inputUserPassword" name="inputUserPassword" placeholder="请输入旧密码" data-toggle="tooltip" data-placement="top" title="" data-original-title="请输入旧密码" /> 
           </div>
           <div class="controls"> 
            <label class="control-label-changePwd" for="inputUserNewPassword">新密码</label> 
            <input class="span3 add-on" type="password" id="inputUserNewPassword" name="user.pwd" placeholder="请先输入旧密码，再输入新密码" data-toggle="tooltip" data-placement="top" title="" data-original-title="请先输入旧密码，再输入新密码" /> 
           </div>
           <div class="controls">
            <label class="control-label-changePwd" for="inputUserNewPassword2">确认密码</label> 
            <input class="span3 add-on" type="password" id="inputUserNewPassword2" name="inputUserNewPassword2" placeholder="请先输入旧密码，再输入新密码" data-toggle="tooltip" data-placement="top" title="" data-original-title="请先输入旧密码，再输入新密码" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputUserEmail">注册邮箱：</label> 
           <div class="controls"> 
            <input class="span3 add-on" type="email" id="inputUserEmail" name="user.email" value="<s:property value="#session.userBean.userEmail" />" data-toggle="tooltip" data-placement="top" title="" data-original-title="可选择修改" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="userIcon">头像设置：</label> 
           <div class="controls"> 
            <div class="crtUserIcon"><img src="<s:property value="#session.userBean.userPic" />" /></div>
           </div>
           <!-- hide old uploadpic
           <div class="controls"> 
            <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
            <span class="error">请上传小于 200KB 的 jpg、jpeg、png、gif 格式的图片。</span>
            <table class="table">
              <tbody class="files">
              <tr class="hide">
                <td><span id="preview"><img id="imghead" src="" /></span></td>
                <td><span class="name">name</span></td>
                <td><span class="size">size</span></td>
                <td><span class="btn" id="start"><i class="icon-upload"></i>上传</span></td>
                <td><span class="btn" id="cancel"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              </tbody>
            </table>
           </div>
           -->
           <!-- flash upload div -->
           <div class="controls" >
           <OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
            codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
            WIDTH="650" HEIGHT="450" id="sousaiUserIconUpload">
            <PARAM NAME=movie VALUE="avatar.swf">
            <PARAM NAME=quality VALUE=high>
            <PARAM NAME=bgcolor VALUE=#FFFFFF>
            <param name="flashvars" value="imgUrl=img/defaultIcon.png&uploadUrl=./upfile.jsp&uploadSrc=false" />
            <EMBED src="avatar.swf" quality=high bgcolor=#FFFFFF WIDTH="650" HEIGHT="450" wmode="transparent" flashVars="imgUrl=img/defaultIcon.png&uploadUrl=./upfile.jsp&uploadSrc=false"
            NAME="myMovieName" ALIGN="" TYPE="application/x-shockwave-flash" allowScriptAccess="always"
            PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
            </EMBED>
            </OBJECT>
           <div id="avatar_priview"></div>
           </div>
         </div>
          <div class="control-group"> 
           <label class="control-label" for="systemIcons">系统头像：</label> 
           <div class="controls" id="systemIcons"> 
            <ul class="breadcrumb"> 
             <li class="thumbnail active"><img src="img/defaultImg.png" /></li> 
             <li class="thumbnail"><img src="img/defaultIcon.png" /></li> 
             <li class="thumbnail"><img src="img/pingpong.png" /></li> 
             <li class="thumbnail"><img src="img/pingpong-grey.png" /></li> 
             <li class="thumbnail"><img src="img/defaultIcon.png" /></li> 
             <li class="thumbnail"><img src="img/defaultImg.png" /></li> 
             <li class="thumbnail"><img src="img/pingpong.png" /></li> 
             <li class="thumbnail"><img src="img/defaultIcon.png" /></li>
            </ul> 
           </div> 
          </div> 
          <div class="control-group">
           <div class="controls"> 
            <button type="submit" class="btn btn-success">保存修改</button>
            <button type="button" class="btn" id="resetEditUserForm">重置</button>
            <!-- 隐藏重置表单按钮 -->
            <button type="reset" id="resetBtn" class="btn hide"></button>
           </div>
          </div> 
         </fieldset> 
        </form>
        <form  class="hide" id="uploadImgForm" enctype="multipart/form-data" method="POST">
        <input id="imgInput" type="file" name="image" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this)">
        <input class="btn start" type="submit" value="上传"/><input type="reset" value="取消" class="btn cancle" />
        </form>
       </div>
       <!-- /editUser --> 
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
  <s:include value="footer.jsp" /><!-- 页首导航条 --> 
  <script src="js/ajaxfileupload.js"></script>
  <script src="js/jquery.validate.min.js"></script>
<script>
$(function () {
    //editUser鼠标点击选择头像
    $("#systemIcons li").click(function(){
      $(this).parent().find("li").removeClass("active");
      $(this).addClass("active");
      var imgSrc = $(this).find("img").attr("src");
      $(".crtUserIcon > img").attr("src",imgSrc);
    });

    //编辑账户验证 
    //添加验证旧密码方法
    $.validator.addMethod("isPwd",function(value,element,param){
      if(value === param || value == ""){
        return true;
      }else{
        return false;
      }
    },"密码错误，请重新输入");
    //添加验证是否填写旧密码，且旧密码是否正确。
    $.validator.addMethod("isPass",function(value,element,param){
      if(value == ""){return true;}
      else if( $("#inputUserPassword").val() != ""){
        return true;
      }
    },"请先输入旧密码");

    var editUserValidator = $("#editUserForm").validate({
      submitHandler: function(){
        //定义发送至服务器的数据，旧密码未验证通过的情况下，不发送填写的新密码
        if($("#inputUserNewPassword").val() == "" && $("#inputUserEmail").val() == '<s:property value="#session.userBean.userEmail" />'){
          return false;
        }else{
          var sendurl = 'updateUserInfo?action=1&user.id=<s:property value="#session.userBean.userId" />';
          if($("#inputUserNewPassword").val() !== "" )
            sendurl += "&user.pwd="+$("#inputUserNewPassword").val();
          if($("#inputUserEmail").val() !== "" )
            sendurl += "&user.email="+$("#inputUserEmail").val();
          $.ajax({
          url: sendurl,
          type: "POST",
          dataType: 'json',
          data: null,
          success: function(rspdata) {
            window.setTimeout("window.location='userCenter-editUser.jsp'",1000);
            sousaiRemindDialog("编辑账户成功,请刷新页面。");
          },
          error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
            sousaiRemindDialog("抱歉，发送数据出错了，请重新输入。");
          },
          });
        }
      },
      ignore: ".ignore",
      rules: {
      inputUserPassword: {
        minlength: 6,
        maxlength: 16,
        isPwd: '<s:property value="#session.userBean.userPwd"/>'
      },
      "user.pwd": {
        minlength: 6,
        maxlength: 16,
        isPass: true
      },
      inputUserNewPassword2: {
        minlength: 6,
        maxlength: 16,
        equalTo: "#inputUserNewPassword"
      },
      "user.email": {
        email: true,
        maxlength: 32,
      },
    },
    messages: {
      inputUserPassword: {
        minlength: "密码至少6个字符",
        maxlength: "密码最多16个字符",
        isPwd: "密码错误,请重新输入！"
      },
      "user.pwd": {
        minlength: "密码请设置至少6位",
        maxlength: "密码最多16个字符",
        isPass: "请先输入旧密码"
      },
      inputUserNewPassword2: {
        minlength: "密码请设置至少6位",
        maxlength: "密码最多16个字符",
        equalTo: "两次密码输入不相符，请重新输入"
      },
      "user.email": {
        email: "请输入有效的邮箱",
        maxlength: "邮箱做多32个字符",
      }
    }
  });
  //取消编辑账户
  $("#resetEditUserForm").click(function(){
    var resetbtn = confirm("确定重置吗？");
    if (resetbtn == true){
      $("#resetBtn").trigger('click');
      editUserValidator.resetForm();
    }
  });
  /** 上传图片 **//*
  $(".fileinput-button").click(function(){
    $("#imgInput").trigger('click');
  });
  $("#start").click(function(){
    $("#uploadImgForm > .start").trigger("click").attr("disabled","disabled");
    ajaxFileUpload();
  });
  $("#cancle").click(function(){
    $(".files .hide").fadeOut();
  });*/
});
/*
function ajaxFileUpload() {
  $(".files .name").ajaxStart(function(){
    $(this).append('<img src="img/loading.gif" width="25" />');
  }).ajaxComplete(function(){
    $(this).remove("img");
  });
  //获得图片后缀名
  var picExt = $("#uploadImgForm > input:file").val();
  picExt = picExt.substring(picExt.lastIndexOf(".")+1,picExt.length);
  $.ajaxFileUpload({
    url: 'uploadUserPic?imgType='+picExt,
    secureuri: false,
    fileElementId: 'imgInput',
    dataType: 'json',
    success: function(respdata, status) {
      console.log(typeof respdata + "内容为："+respdata);
      var jsondata = eval("("+respdata+")");
      if(jsondata.statusCode == 1){
        sousaiRemindDialog("上传头像成功.");
        var imgURL = $("#imghead").attr("src");
        $(".crtUserIcon > img").attr("src",imgURL);
        $(".cancle").trigger('click');
      }
    },
    error: function(data, status, e) {
      sousaiRemindDialog("上传图片出错，请重新上传.");
      console.log(e);
    }
  });
  return false;
}
//验证上传图片格式，大小，并在通过后显示图片预览
function imgValid(file){
  var div = document.getElementById('preview'),
      img = document.getElementById('imghead'),
      fileName = $(".files .hide").find(".name"),
      fileSize = $(".files .hide").find(".size"),
      imgname,imgsize,imgsizeMB,imgtype;
  if(file.files && file.files[0]){
    imgname = file.files[0].name,
    imgsize = file.files[0].size,
    imgsizeKB = (imgsize/1024).toFixed(2),
    imgtype = file.files[0].type; 
    //console.log(imgtype);
    if(imgsize >= 200*1024) {
     sousaiRemindDialog("照片大小为 "+imgsizeKB+"KB,照片太大了，请上传小于200KB的照片.");
    }else if(imgtype !== "image/png" && imgtype !== "image/gif" && imgtype !== "image/jpg" &&  imgtype !== "image/jpeg" ){
     sousaiRemindDialog("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
    }else{      
     fileName.text(imgname);
     fileSize.text(imgsizeKB+"KB");
     $(".files .hide").fadeIn();
    }
    var reader = new FileReader();  
    reader.onload = function(evt){img.src = evt.target.result;}  
    reader.readAsDataURL(file.files[0]);
  }else {
    //ie 只能得到文件名
    var nfile = $("#imgInput").val();//fake路径
    var fileText =nfile.substring(nfile.lastIndexOf("."),nfile.length);//文件后缀名
    imgname = nfile.substring(nfile.lastIndexOf("\\")+1,nfile.length);//文件名;
    imgtype =fileText.toLowerCase();//转化为统一小写后缀名.jpg等
    if(imgtype != ".png" && imgtype != ".gif" && imgtype != ".jpg" && imgtype != ".jpeg" ){
        sousaiRemindDialog("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
    }
    fileName.text(imgname);
    fileSize.text("");
    $(".files .hide").fadeIn();
  }
}
*/
//flash上传头像 
function uploadevent(status,picUrl,callbackdata){
	console.log(picUrl); //后端存储图片
	console.log(callbackdata);
  status += '';
  switch(status){
	case '1':
	var time = new Date().getTime();
	var filename162 = picUrl+'_162.jpg';
	var filename48 = picUrl+'_48.jpg';
	var filename20 = picUrl+"_20.jpg";
  //显示图片上传预览
  $(".crtUserIcon > img").attr("src",filename162+"?"+time);
  break;
  case '-1':
  window.location.reload();
  break;
	default:
	window.location.reload();
}
}
</script>
</body></html>