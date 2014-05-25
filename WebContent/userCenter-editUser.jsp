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
  <link href="css/jquery.fileupload.css" rel="stylesheet" /> 
  <link href="css/jquery.fileupload-ui.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" />
  <link href="css/sousai.userCenter.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  <style>
  /** 更改密码label排列方式 **/
  .control-label-changePwd{margin: 5px 0 0 0;}
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
  #editUserForm .crtUserIcon > img{width: 100px;height: 100px;}
  /** 选中图片边框为绿色 **/
  .active{border-color: #51a351;}
  /** 缩略图**/
  .userCenter .thumbnail img{width: 50px;height: 50px;}
  #imghead {filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=image);}
  #uploadImgForm {position: relative;top: -270px;left: 210px;}
  #uploadImgForm > .span5 {margin-left: 0;margin-top: 3px;border-top: 1px solid #ccc;}
  </style>

</head>
<body class="userCenter">
<s:include value="navbar.jsp" /><!-- 页首导航条 -->
<div class="container"> 
 <div class="hdpush"></div> 
 <div class="row"> 
  <div class="span4"> 
   <img src="img/logo.png" />
   <span class="logotext">我的搜赛</span> 
  </div> 
  <s:include value="searchbox.jsp" /><!-- 搜索框 -->
 </div><!-- /row -->

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
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li class="active"><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
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
       <div id="editUser" class="tab-pane active"> 
        <div class="page-header">
         <h4>账户基本信息</h4>
        </div> 
        <form id="editUserForm" class="form-horizontal" action="updateUserInfo" method="POST" enctype="multipart/form-data"> 
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
            <div class="crtUserIcon"><img src="img/defaultImg.png" /></div>
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
            <input type="submit" value="保存修改" class="btn btn-success" /> 
            <input type="button" value="重置" id="resetEditUserForm" class="btn" />
            <!-- 隐藏重置表单按钮 -->
            <input type="reset" id="resetBtn" class="btn hide" />  
           </div>
          </div> 
         </fieldset> 
        </form>
          
        <form id="uploadImgForm" enctype="multipart/form-data" method="POST" action="uploadPic">
        <span class="btn fileinput-button"><i class="icon-plus"></i><span>选择图片</span></span>
        <input id="imgInput" class="hide" type="file" name="image" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this)">
        <table class=" span5">
          <tbody class="files">
          <tr class="hide">
            <td><span id="preview"><img id="imghead" src="img/loading.gif" /></span></td>
            <td><span class="name">name</span><p class="hide" id="message"></p></td>
            <td><span class="size">size</span></td>
            <td><input class="btn start" type="submit" value="上传"/><input type="reset" value="取消" class="btn cancle" /></td>
          </tr>
          </tbody>
        </table>
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
    /** editUser鼠标点击选择头像 **/
    $("#systemIcons li").click(function(){
      $(this).parent().find("li").removeClass("active");
      $(this).addClass("active");
      var imgSrc = $(this).find("img").attr("src");
      $(".crtUserIcon > img").attr("src",imgSrc);
    });
    /****/

    /** 编辑账户验证 **/
    //定义发送至服务器的数据，旧密码未验证通过的情况下，不发送填写的新密码
    var senddata = {
      "user.id": "<s:property value="#session.userBean.userId" />",
      "user.pwd": null,
      "user.email": $("#inputUserEmail").val(),
    };

    //添加验证旧密码方法
    $.validator.addMethod("isPwd",function(value,element,param){
      if(value === param){
        $("#inputUserNewPassword").attr("placeholder","请输入新密码").attr("data-original-title","请输入新密码");
        $("#inputUserNewPassword2").attr("placeholder","请再次输入新密码").attr("data-original-title","请再次输入新密码");
        return true;
      }
      else{
        $("#inputUserNewPassword").attr("placeholder","请先输入旧密码，再输入新密码").attr("data-original-title","请先输入旧密码，再输入新密码");
        $("#inputUserNewPassword2").attr("placeholder","请先输入旧密码，再输入新密码").attr("data-original-title","请先输入旧密码，再输入新密码");
        return false;
      }
    },"密码错误，请重新输入");
    //添加验证是否填写旧密码，且旧密码是否正确。
    $.validator.addMethod("isPass",function(value,element,param){
      if($("#inputUserPassword").val() === param){
        senddata["user.pwd"] =  $("#inputUserNewPassword").val();
        return true;
      }
      else{
        senddata["user.pwd"] =  null;
        return false;
      }
    },"请先输入旧密码");

    var editUserValidator = $("#editUserForm").validate({
      submitHandler: function(){
        $.ajax({
        url: "updateUserInfo",
        type: "POST",
        dataType: 'json',
        data: senddata,
        success: function(rspdata) {
          alert("编辑账户成功"+rspdata);
        },
        error: function() {
          alert("抱歉，发送数据出错了，请重新输入。");
        },
        });
      },
      ignore: ".ignore",
      rules: {
      inputUserPassword: {
        minlength: 6,
        isPwd: '<s:property value="#session.userBean.userPwd"/>'
      },
      "user.pwd": {
        minlength: 6,
        isPass: '<s:property value="#session.userBean.userPwd"/>'
      },
      inputUserNewPassword2: {
        minlength: 6,
        equalTo: "#inputUserNewPassword"
      },
      "user.email": {
        email: true
      },
    },
    messages: {
      inputUserPassword: {
        minlength: "密码至少6个字符",
        isPwd: "密码错误,请重新输入！"
      },
      "user.pwd": {
        minlength: "密码请设置至少6位",
        isPass: "请先输入旧密码"
      },
      inputUserNewPassword2: {
        minlength: "密码请设置至少6位",
        equalTo: "两次密码输入不相符，请重新输入"
      },
      "user.email": {
        email: "请输入有效的邮箱"
      }
    }
  });
    /** 取消编辑账户 **/
    $("#resetEditUserForm").click(function(){
      var resetbtn = confirm("确定重置吗？");
      if (resetbtn == true){
        $("#resetBtn").click();
        editUserValidator.resetForm();
      }
    });
    /** 上传图片 **/
    $(".fileinput-button").click(function(){
      $("#imgInput").trigger('click');
    });
    $(".start").click(function(){
      $(this).attr("disabled","disabled")
      $(this).parents().find(".name").append('<img src="img/loading.gif" width="25" />');
      ajaxFileUpload();
    });
    $(".cancle").click(function(){
      $(".files .hide").fadeOut();
    });
})
//验证上传图片格式，大小，并在通过后显示图片预览
function imgValid(img){
   var imgname = img.files[0].name;  
   var imgsize = img.files[0].size;  
   var imgsizeMB = (imgsize/1024/1024).toFixed(2);
   var imgtype = img.files[0].type; 
   //console.log(imgtype);
   if(imgsize >= 1*1024*1024) {
    alert("照片大小为 "+imgsizeMB+"MB,照片太大了，请上传小于1MB的照片.");
   }else if(imgtype !== "image/png" && imgtype !== "image/gif" && imgtype !== "image/jpg" && imgtype !== "image/jpeg" ){
    alert("文件格式为 "+imgtype+",请上传png,gif,jpg,jpeg格式的照片.");
   }else{
    $(".files .hide").find(".name").text(imgname);
    $(".files .hide").find(".size").text(imgsizeMB+"MB");
    $(".files .hide").fadeIn();
    previewImage(img);
  }
}

  function ajaxFileUpload()
  {
    /*starting setting some animation when the ajax starts and completes
    $("#loading")
    .ajaxStart(function(){
      $(this).show();
    })
    .ajaxComplete(function(){
      $(this).hide();
    });
    
    /*
      prepareing ajax file upload
      url: the url of script file handling the uploaded files
      fileElementId: the file type of input element id and it will be the index of  $_FILES Array()
      dataType: it support json, xml
      secureuri:use secure protocol
      success: call back function when the ajax complete
      error: callback function when the ajax failed
    */
    $.ajaxFileUpload
    (
      {
        url:'uploadPic', 
        secureuri:false,
        fileElementId:'imgInput',
        dataType: 'json',
        success: function (data, status)
        {
          /*if(typeof(data.error) != 'undefined')
          {
            if(data.error != '')
            {
              alert(data.error);
            }else
            {
              alert(data.msg);
            }
          }*/
          alert(data);
        },
        error: function (data, status, e)
        {
          alert(e);
        }
      }
    )
    
    return false;

  }  
/*iframe上传图片，并接受回调
// 服务器端输出：out.print("JSON字串");  // {"statusCode":200; "message":"上传成功"; "ImgUrl":"图片相对服务器路径img/picName.jpg"}
var frame = {
  ajaxDone: function(json) {
    if (json.statusCode == 200) {
      $("#message").html(json.message).show();
      $(".start .name").find("img").remove();
      $(".crtUserIcon > img").attr("src",json.ImgUrl);
      //$.jquery.load(json.loadUrl);
    } else {
      $("#message").html(json.message).show();
    }
  },
  frameDone: function(config) {
    var ifr = null,fm = null,defConfig = {
      formObj: $('#uploadImgForm'),
      complete: function(response) {},
    };

    config = $.extend(defConfig, config);

    var $form = config.formObj;
    var frameName = 'callbackframe';

    ifr = $('<iframe name="' + frameName + '" id="' + frameName + '" class="hide"></iframe>');
    ifr.appendTo($('body'));
    $form.attr("target", frameName);
    console.log("iframe已添加至body");
    
    ifr.load(function() {
      var response = this.contentWindow.document.body.innerHTML;
      config.complete.call(this, response);
      //ifr.remove();
      //ifr = null;
    });
    return false;
  }
}

function checkForm(form) {
  frame.frameDone({
    formObj: $form,
    complete: function(response) {
      var j = $.parseJSON(response);
      frame.ajaxDone(j);
    }
  });
  return true;
}
*/
//图片上传预览    IE是用了滤镜。
function previewImage(file)
{
  var MAXWIDTH  = 100; 
  var MAXHEIGHT = 100;
  var div = document.getElementById('preview');
  if (file.files && file.files[0])
  {
      div.innerHTML ='<img id=imghead>';
      var img = document.getElementById('imghead');
      img.onload = function(){
        var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
        img.width  =  rect.width;
        img.height =  rect.height;
        //img.style.marginLeft = rect.left+'px';
        //img.style.marginTop = rect.top+'px';
      }
      var reader = new FileReader();
      reader.onload = function(evt){img.src = evt.target.result;}
      reader.readAsDataURL(file.files[0]);
  }
  else //兼容IE
  {
    var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
    file.select();
    var src = document.selection.createRange().text;
    div.innerHTML = '<img id=imghead>';
    var img = document.getElementById('imghead');
    img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
    var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
    status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
    div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;"+sFilter+src+"\"'></div>";
  }
}
function clacImgZoomParam( maxWidth, maxHeight, width, height ){
    var param = {top:0, left:0, width:width, height:height};
    if( width>maxWidth || height>maxHeight )
    {
        rateWidth = width / maxWidth;
        rateHeight = height / maxHeight;
        
        if( rateWidth > rateHeight )
        {
            param.width =  maxWidth;
            param.height = Math.round(height / rateWidth);
        }else
        {
            param.width = Math.round(width / rateHeight);
            param.height = maxHeight;
        }
    }
    
    param.left = Math.round((maxWidth - param.width) / 2);
    param.top = Math.round((maxHeight - param.height) / 2);
    return param;
}
</script>
</body></html>