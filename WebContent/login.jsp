<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*login.jsp
*describe:login用于搜赛网登录
*author:king
*date:2015-5-6
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>登录 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网登录页面" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.login.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]--> 
 </head> 
 <body class="login"> 
  <div class="container"> 
   <div class="row"> 
    <div class="span5 offset2"> 
     <img src="img/logo.png" /> 
     <span class="logotext">用户登录</span> 
    </div> 
   </div> 
   <div class="row bd"> 
    <div class="span3 offset2 loginImg"> 
     <img src="img/defaultImg.png" /> 
    </div> 
    <div class="span3 offset2 form-signin"> 
     <form action="processLogin" method="post"> 
      <fieldset> 
       <legend>会员登录</legend> 
       <label for="inputUsername">用户名:</label> 

       <s:if test="tip!=null"> 
       <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" value='<s:property value="tip" />' required="required"/>
       </s:if>

       <s:else>
       <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" value="" required="required"/>
       </s:else>

       <label for="inputPassword">密码:<a href="#">忘记密码?</a></label> 
       <input type="password" class="input-block-level" id="inputPassword" name="user.pwd" placeholder="密码" required="required"/> 
       <label class="checkbox"> <input type="checkbox" value="remember-me" />记住我</label> 
       <input class="btn btn-success" type="submit" id="signinBtn" value="登&nbsp;&nbsp;录">
       <label><a href="register.jsp">免费注册</a></label> 
      </fieldset> 
     </form> 
    </div> 
   </div> 
   <div class="row"> 
    <div class="span2 offset2"> 
     <i class="icon-user"></i> 
     <a href="tencent://message/?uin=822547462&Site=sousai.com&Menu=yes" target="blank">页面改进建议</a> 
    </div>
   </div>
   <div class="ftpush"> 
   </div>
  </div>
  <!-- /container --> 
  <s:include value="footer.jsp" /><!-- 页尾信息 -->
  <!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.validate.min.js"></script> 
  <script>
  function showSRD(){
      $("#formlogin").validate({
        submitHandler: function(){$('#registerModal').modal({backdrop:static});},
    rules: {
      "user.name": {
        minlength: 4,
        maxlength: 16
      },
      "user.pwd": {
        minlength: 6
      }
    },
    messages: {
      "user.name": {
        minlength: "用户名至少4个字符",
        maxlength: "用户名最多16个字符"
      },
      "user.pwd": {
        required: "请输入密码",
        minlength: "密码请设置至少6位"
      }
    }
  });
/** /表单验证代码 **/
  }
  </script>
 </body>
</html>