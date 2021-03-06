<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>注册 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网注册页面" > 
  <s:include value="seg-meta.jsp"/>
  <link href="css/sousai.register.css" rel="stylesheet">
 </head> 
 <body class="register"> 
  <s:include value="seg-navbar.jsp"/>
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span5 offset1"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
     <span class="logotext">用户注册</span> 
    </div> 
   </div> 
   <div class="row"> 
    <div class="span10 offset1 register-heading">填写用户信息 </div> 
   </div> 
   <div class="row"> 
    <div class="span4 offset1"> 
     <form class="form-horizontal form-signin" id="registerForm" method="post" action="processReg"> 
      <fieldset>
       <div class="control-group"> 
        <label class="control-label" for="inputUsername">用户名&nbsp;:</label> 
        <div class="controls"> 
         <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" required="required" data-toggle="tooltip" data-placement="right" title="" data-original-title="用户名至少4个字符，最多16个字符" > 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputUserPassword">密&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;:</label> 
        <div class="controls"> 
         <input type="password" class="input-block-level" id="inputUserPassword" name="user.pwd" placeholder="密码" required="required" data-toggle="tooltip" data-placement="right" title="" data-original-title="密码至少6位，建议不要使用过于简单的密码。" > 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputUserPassword2">确认密码&nbsp;:</label> 
        <div class="controls"> 
         <input type="password" class="input-block-level" id="inputUserPassword2" name="inputPassword2" placeholder="确认密码" required="required" > 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputUserEmail">邮&nbsp;&nbsp;&nbsp;&nbsp;箱&nbsp;:</label> 
        <div class="controls"> 
         <input type="email" class="input-block-level" id="inputUserEmail" name="user.email" placeholder="电子邮箱" required="required" > 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputValidateCode">验证码&nbsp;:</label> 
        <div class="controls form-inline"> 
         <input type="text" class="input-block-level" id="inputValidateCode" name="inputValidateCode" placeholder="验证码" required="required" > 
         <div id="inputValidateImg" class="code" onclick="createCode('inputValidateImg')"></div> 
         <span class="code-changeLink" onclick="createCode('inputValidateImg')">换一张</span> 
        </div> 
       </div> 
       <div class="control-group"> 
        <div class="controls"> 
         <input class="btn btn-primary btn-success span2" type="submit" value="注册">
        </div> 
       </div> 
      </fieldset> 
     </form> 
    </div> 
    <div class="span4 offset2"> 
     <div class="popover bottom"> 
      <div class="arrow"></div> 
      <h3 class="popover-title">为何要认真填写电子邮箱？</h3> 
      <div class="popover-content"> 
       <p><strong>E-MAIL&nbsp;</strong>电子邮箱</p> 
       <p>用于密码丢失时找回密码!</p> 
      </div> 
     </div> 
    </div> 
   </div> 
<!--    <div class="row"> 
    <div class="span2 offset7"> 
     <i class="icon-user"></i> 
     <a href="tencent://message/?uin=822547462&amp;Site=sousai.com&amp;Menu=yes">页面改进建议</a> 
    </div> 
   </div>  -->
   <div class="row ftpush"></div> 
  </div> 
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script src="js/jquery.validate.min.js"></script> 
  <script>
    $(function(){
      /** 生成验证码 **/
      createCode("inputValidateImg");

      /** 工具提示 **/
      $("#inputUsername").tooltip();
      $("#inputUserPassword").tooltip();

      /** 表单验证代码 **/
      //添加验证 验证码方法
      $.validator.addMethod("isEqual",function(value,element,param){
        var target = $(param);
        if(value.toUpperCase() == target.text().toUpperCase()){
          return true;
        }
        else{
          createCode("inputValidateImg");
          return false;
        }
      },"不相符，请重新输入");

      $("#registerForm").validate({
        submitHandler: function(form){
          $.ajax({
            url: "processReg",
            data: {
              "user.name": $("#inputUsername").val(),
              "user.pwd": $("#inputUserPassword").val(),
              "user.email": $("#inputUserEmail").val(),
              "user.type": 1,
            },
            success: function(resdata){
              //$('#sousaiRemindDialog').modal({backdrop:static});
              //5秒后跳转至首页
              window.setTimeout("window.location='index.jsp'",5000);
              var resetbtn = confirm("注册成功，点击确定直接跳转至首页，点击取消将在5秒后跳转至首页。");
              if (resetbtn == true){
                location.href = "index.jsp";
              }
            },
          });
        },
    rules: {
      "user.name": {
        minlength: 4,
        maxlength: 16,
        remote: "validName",
      },
      "user.pwd": {
        minlength: 6
      },
      inputPassword2: {
        minlength: 6,
        equalTo: "#inputUserPassword"
      },
      "user.email": {
        email: true
      },
      inputValidateCode: {
        minlength: 4,
        isEqual: "#inputValidateImg"
      }
    },
    messages: {
      "user.name": {
        required: "请输入用户名",
        minlength: "用户名至少4个字符",
        maxlength: "用户名最多16个字符",
        remote: "该用户名已存在，请换个其他的用户名！"
      },
      "user.pwd": {
        required: "请输入密码",
        minlength: "密码请设置至少6位"
      },
      inputPassword2: {
        required: "请再次输入密码",
        minlength: "密码请设置至少6位",
        equalTo: "两次密码输入不相符，请重新输入"
      },
      "user.email": {
        required: "请输入邮箱",
        email: "请输入有效的邮箱"
      },
      inputValidateCode: {
        required: "请输入验证码",
        minlength: "验证码为4位",
        isEqual: "验证码错误，请重新输入"
      },
    }
  });

});

    </script>  
 </body>
</html>