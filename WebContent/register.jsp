<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*register.jsp
*describe:register用于搜赛网用户注册
*author:king
*date:2015-5-6
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>注册 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网注册页面" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/bootstrap.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.register.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]--> 
 </head> 
 <body class="register"> 
  <s:include value="navbar.jsp" /><!-- 页首导航条 -->
  <div class="container"> 
  <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span5 offset1"> 
     <img src="img/logo.png" /> 
     <span class="logotext">账户注册</span> 
    </div> 
   </div> 
   <div class="row"> 
    <div class="span10 offset1 register-heading">
      填写账户信息 
    </div> 
   </div> 
   <div class="row"> 
    <div class="span4 offset1"> 
     <form class="form-horizontal form-signin" id="formlogin" method="post" action="processReg"> 
      <fieldset> 
       <legend>注册表单</legend> 
       <div class="control-group"> 
        <label class="control-label" for="inputUsername">用户名&nbsp;:</label> 
        <div class="controls"> 
         <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" required="required" data-toggle="tooltip" data-placement="right" title="" data-original-title="用户名至少4个字符，最多16个字符" /> 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputPassword">密码&nbsp;:</label> 
        <div class="controls"> 
         <input type="password" class="input-block-level" id="inputPassword" name="user.pwd" placeholder="密码" required="required" data-toggle="tooltip" data-placement="right" title="" data-original-title="密码至少6位，建议不要使用过于简单的密码。" /> 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputPassword2">确认密码&nbsp;:</label> 
        <div class="controls"> 
         <input type="password" class="input-block-level" id="inputPassword2" name="inputPassword2" placeholder="确认密码" required="required" /> 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputEmail">邮箱&nbsp;:</label> 
        <div class="controls"> 
         <input type="email" class="input-block-level" id="inputEmail" name="user.Email" placeholder="电子邮箱" required="required" /> 
        </div> 
       </div> 
       <div class="control-group"> 
        <label class="control-label" for="inputValidateCode">验证码&nbsp;:</label> 
        <div class="controls form-inline"> 
         <input type="password" class="input-block-level" id="inputValidateCode" name="inputValidateCode" placeholder="验证码" required="required" /> 
         <div id="inputValidateImg" class="code" onclick="createCode()"></div> 
         <span class="code-changeLink" onclick="createCode()">换一张</span> 
        </div> 
       </div> 
       <div class="control-group"> 
        <div class="controls"> 
         <button class="btn btn-primary btn-success span2" type="submit" onclick="validateCode();">注册</button> 
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
   <div class="row"> 
    <div class="span2 offset7"> 
     <i class="icon-user"></i> 
     <a href="tencent://message/?uin=822547462&Site=sousai.com&Menu=yes">页面改进建议</a> 
    </div> 
   </div> 
   <div class="row ftpush"></div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" /><!-- 页尾信息 -->
  <!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/jquery.validate.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <script>    
    $(function(){
      /** 生成验证码 **/
        var code;
        function createCode() {
            code = "";
            var codeLength = 4; //验证码的长度
            var checkCode = document.getElementById("inputValidateImg");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) 
            {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) 
            {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
      createCode()
      /** /生成验证码 **/

      /** 工具提示 **/
      $("#inputUsername").tooltip();
      $("#inputPassword").tooltip();
      /** /工具提示**/

      /** 表单验证代码 **/
      $.validator.addMethod("isEqual",function(value,element,param){
        var target = $(param);
        if(value.toUpperCase() == target.text().toUpperCase()){
          return true;
        }
        else{
          createCode();
          return false;
        }
      },"不相符，请重新输入");

      $("#formlogin").validate({
        submitHandler: function(){$('#registerModal').modal({backdrop:static});},
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
        equalTo: "#inputPassword"
      },
      "user.Email": {
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
      "user.Email": {
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
/** /表单验证代码 **/

})

    </script>  
 </body>
</html>