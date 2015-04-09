<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>登录 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网登录页面" > 
  <s:include value="seg-meta.jsp"/>
 </head> 
 <body class="login"> 
  <div class="container"> 
   <div class="row"> 
    <div class="span5 offset2"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a> 
     <span class="logotext">用户登录</span> 
    </div> 
   </div> 
   <div class="row bd"> 
    <div class="span4 offset2 loginImg"> 
     <img src="img/picLeftToLoginBOx_1.jpg" > 
    </div> 
    <div class="span3 offset1 form-signin"> 
     <form id="formlogin"> 
      <fieldset>
       <div class="error hide">您输入的密码和用户名不匹配，请重新输入。</div>
       <label for="inputUsername">用户名:</label> 
       <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" value="" required="required" > 
       <label for="inputPassword">密码:<a href="javascript:void(0)">忘记密码?</a></label> 
       <input type="password" class="input-block-level" id="inputPassword" name="user.pwd" placeholder="密码" required="required" > 
       <label class="checkbox" for="rememberMe" > <input type="checkbox" id="rememberMe" >记住我</label> 
       <input class="btn btn-success" type="submit" id="signinBtn" value="登&nbsp;&nbsp;录" > 
       <label><a href="register.jsp">免费注册</a></label> 
      </fieldset> 
     </form> 
    </div> 
   </div> 
<!--    <div class="row"> 
    <div class="span2 offset2"> 
     <i class="icon-user"></i> 
     <a href="tencent://message/?uin=822547462&amp;Site=sousai.com&amp;Menu=yes" target="blank">页面改进建议</a> 
    </div> 
   </div>  -->
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script>
  $(function(){
  	//表单验证代码 登录
      $("#formlogin").validate({
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
          required: "请输入用户名",
          minlength: "用户名至少4个字符",
          maxlength: "用户名最多16个字符"
        },
        "user.pwd": {
          required: "请输入密码",
          minlength: "密码至少6位"
        }
      }
      });
      ;
    //登录时检测 记住我 选项是否为勾选状态，    
    //进入此页面查找已存在的cookie
    if(getCookie("sousaiUserName") != null){
    	$("#inputUsername").val(unescape(getCookie("sousaiUserName")));
		$("#rememberMe").attr("checked","checked");
	}else {
		console.log(getCookie("sousaiUserName"));
		$("#inputUsername").val("");
	}
});

  </script>
 </body>
</html>