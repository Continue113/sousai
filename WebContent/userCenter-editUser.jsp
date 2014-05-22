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
           <div class="controls">
            <div class="fileupload-buttonbar">
                <span class="btn fileinput-button">
                    <i class="icon-plus"></i>
                    <span>选择图片</span>
                    <input type="file" name="image" data-url="uploadPic" accept="image/png, image/gif, image/jpg, image/jpeg">
                </span>
                <span class="fileupload-process"></span>
            </div>
            <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
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
  <script src="js/jquery.ui.widget.js"></script>
  <script src="js/tmpl.min.js"></script>
  <script src="js/load-image.min.js"></script>
  <script src="js/jquery.iframe-transport.js"></script>
  <script src="js/jquery.fileupload.js"></script>
  <script src="js/jquery.fileupload-process.js"></script>
  <script src="js/jquery.fileupload-image.js"></script>
  <script src="js/jquery.fileupload-ui.js"></script>
  <script src="js/jquery.validate.min.js"></script>
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">上传中...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn start" disabled>
                    <i class="icon-upload"></i>
                    <span>开始</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn cancel">
                    <i class="icon-ban-circle"></i>
                    <span>取消</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="icon-trash"></i>
                    <span>删除</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn cancel">
                    <i class="icon-ban-circle"></i>
                    <span>取消</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
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
      }
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
    var uploader = $('#editUserForm');
    uploader.fileupload({
        url : 'uploadPic',
        type: "POST",
        dataType: "json",
        autoUpload: true,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        maxFileSize: 1000000,
        maxNumberOfFiles : 1,
        fileInput : uploader.find("input:file"),
        success: function(respdata){alert("成功回调内容为"+respdata);},
        error: function(jqXHR,textStatus,errorThrown){alert("jqXHR:"+jqXHR+",textStatus:"+textStatus+",errorThrown:"+errorThrown);},
    });
})
</script>
</body></html>