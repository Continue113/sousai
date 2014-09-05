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
  <link href="css/sousai.login.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
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
     <form id="formlogin" action="processLogin" method="post"> 
      <fieldset> 
       <legend>会员登录</legend> 
       <s:if test="tip!=null"> 
        <div class="error">
         您输入的密码和用户名不匹配，请重新输入。
        </div> 
        <label for="inputUsername">用户名:</label> 
        <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" value="<s:property value="tip" />" required="required" /> 
       </s:if> 
       <s:else> 
        <label for="inputUsername">用户名:</label> 
        <input type="text" class="input-block-level" id="inputUsername" name="user.name" placeholder="用户名" value="" required="required" /> 
       </s:else> 
       <label for="inputPassword">密码:<a href="#">忘记密码?</a></label> 
       <input type="password" class="input-block-level" id="inputPassword" name="user.pwd" placeholder="密码" required="required" /> 
       <label class="checkbox"> <input type="checkbox" value="remember-me" />记住我</label> 
       <input class="btn btn-success" type="submit" id="signinBtn" value="登&nbsp;&nbsp;录" /> 
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
  <script src="js/jquery.validate.min.js"></script> 
  <script>
  $(function(){
    /** 表单验证代码 **/
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
    
    /** 记住我：仅记住用户名**/
    $("input[value='remember-me']").click(function(){
    	if($("input[value='remember-me']").is(":checked")){
    	}else {
    		//取消 记住我
    		deleteCookie("sousaiUserName");
    	}
    });

    //新建指定的cookie,cookieKey为cookie名、value为cookie值，expiresTime为cookie有效期
	function setCookie(name,value){
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape(value) + ";rmbMe=1;expires=" + exp.toGMTString();
	}
	//获取指定的cookie值
	function getCookie(name){
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)"); 
    if(arr=document.cookie.match(reg)) 
        return (arr[2]);
    else
        return null;
	}
    //删除指定值的cookie
    function deleteCookie(cookieKey){
    	//清除cookie 设置时间为过去的时间即可
		var crtdate = new Date();
		crtdate.setTime(crtdate.getTime()-10000);
		document.cookie = cookieKey+" = v;path = './'; expires = "+crtdate.toGMTString();    	
    }
    
    //登录时检测 记住我 选项是否为勾选状态，
    $("#signinBtn").click(function(){
    	if($("input[value='remember-me']").is(":checked")){
    		//勾选 记住我，更新已存在的cookie或新建一个cookie;
    		var userName = $("#inputUsername").val();
    	    setCookie("sousaiUserName",userName);
    	    alert("set cookie yet and then submit:"+ getCookie("sousaiUserName"));
    	    $("#signinBtn").submit();
    	}else {
    		//若没有勾选 记住我，则直接提交
    		$("#signinBtn").submit();
    	}
    });
    
    //计入此页面查找已存在的cookie
    if(getCookie("sousaiUserName") != null){
    	$("#inputUsername").val(unescape(getCookie("sousaiUserName")));
		$("input[value='remember-me']").attr("checked","checked");
	}else {
		alert(getCookie("sousaiUserName"));
		$("#inputUsername").val("");
	}
});

  </script>
 </body>
</html>