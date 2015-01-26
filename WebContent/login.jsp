<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>登录 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网登录页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" />
  <style type="text/css">
.bd {
  margin-top: 48px;
}
  </style>
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
 </head> 
 <body class="login"> 
  <div class="container"> 
   <div class="row"> 
    <div class="span5 offset2"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a> 
     <span class="logotext">用户登录</span> 
    </div> 
   </div> 
   <div class="row bd"> 
    <div class="span3 offset2 loginImg"> 
     <img src="img/defaultImg.png" /> 
    </div> 
    <div class="span3 offset2 form-signin"> 
     <form id="formlogin"> 
      <fieldset> 
       <legend>会员登录</legend> 
       <div class="error hide">您输入的密码和用户名不匹配，请重新输入。</div>
       <label for="inputUsername">用户名:</label> 
       <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" value="" required="required" /> 
       <label for="inputPassword">密码:<a href="javascript:void(0)">忘记密码?</a></label> 
       <input type="password" class="input-block-level" id="inputPassword" name="user.pwd" placeholder="密码" required="required" /> 
       <label class="checkbox" for="rememberMe" > <input type="checkbox" id="rememberMe" />记住我</label> 
       <input class="btn btn-success" type="button" id="signinBtn" value="登&nbsp;&nbsp;录" /> 
       <label><a href="register.jsp">免费注册</a></label> 
      </fieldset> 
     </form> 
    </div> 
   </div> 
   <div class="row"> 
    <div class="span2 offset2"> 
     <i class="icon-user"></i> 
     <a href="tencent://message/?uin=822547462&amp;Site=sousai.com&amp;Menu=yes" target="blank">页面改进建议</a> 
    </div> 
   </div> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" />
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
    //登录时检测 记住我 选项是否为勾选状态，
    $("#signinBtn").click(function(){
    	if ($("#formlogin").valid() === true) {
    		
	    	if($("#rememberMe").is(":checked")){
	    		//勾选 记住我，更新已存在的cookie或新建一个cookie;
	    		var userName = $("#inputUsername").val();
	    	    setCookie("sousaiUserName",userName);
	    	    console.log("set cookie yet and then submit:"+ getCookie("sousaiUserName"));
	    	}
	
	        $.ajax({
	            type: "POST",
	            url: "processLogin",
	            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	            data: {
	              "user.name": $("#inputUsername").val(),
	              "user.pwd": $("#inputPassword").val(),
	            },
	            dataType: "json",
	            success: function(rspdata) {
	            	console.log(rspdata);

	            	  if( rspdata == "success" ){
	            		  //sousaiRemindDialog("登录成功");
	            		  window.location.href = "index.jsp";
	            	  }else if( rspdata == "error" ){
	            		  sousaiRemindDialog("登录失败,您输入的密码和用户名不匹配，请重新输入。");
	            	  }else{
	            		  sousaiRemindDialog("登录失败，错误代码为："+rspdata);
	            	  }
	            },
	            error: function(jqXHR,textStatus,errorThrown){
	            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	              	sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
	            },
	          });
    	}
    });
    
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