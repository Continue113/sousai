<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 用户维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-用户维护" /> 
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
  /** 编辑场地 按钮bar  **/
  .editUser > .btnbar {margin-left: 0;}
  /** 编辑场地按钮bar 中的按钮  **/
  .editUser > .btnbar > .btn {float: right;margin-left: 10px;}  
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
       <li><h5><i class="icon-minus"></i>系统发布:</h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li> 
       <li><h5><i class="icon-minus"></i>数据维护:</h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li class="active"><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><i class="icon-minus"></i>网站统计:</h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li> 
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li> 
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li> 
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
     <div class="userList">
      <!--用户维护 开始--> 
      <div id="userMaintenance">
       <!-- panel --> 
       <div class="panel-top">
       <select class="selectFilter"> <option data-forfilter=".user-userName">用户名</option> <option data-forfilter=".user-email">注册邮箱</option> <option data-forfilter=".user-registerTime">注册时间</option> <option data-forfilter=".user-IP">IP地域</option> </select> 
        <div class="text-filter-box input-append"> 
         <input data-path=".user-userName" type="text" placeholder="请输入关键字" data-control-type="textbox" data-control-name="match-filter" data-control-action="filter" /> 
         <select class="selectFilter"> <option data-forfilter=".user-userName">用户名</option> <option data-forfilter=".user-email">注册邮箱</option> <option data-forfilter=".user-registerTime">注册时间</option> <option data-forfilter=".user-IP">IP地域</option> </select> 
         <span class="add-on"><i class="icon-search"></i></span>
        </div> 
        <div class="btnbar pull-right"> 
         <button type="button" class="btn forbidUser">禁用用户</button>
         <button type="button" class="btn addUser">添加用户</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover userTable"> 
        <caption>用户维护</caption> 
        <thead>
         <tr>
          <th>用户名</th>
          <th>注册时间</th>
          <th>最后登录时间</th>
          <th>比赛发布</th>
          <th>场地发布</th>
          <th>登录次数</th>
          <th>登录邮箱</th>
          <th>常用IP</th>
         </tr>
        </thead> 
        <tbody></tbody> 
       </table>
      </div> 
      </div>
      <!--用户维护 结束--> 
      
      <!-- ****************************************************************************************************************** -->
      <!-- ****************************************************************************************************************** -->
      <!-- ****************************************************************************************************************** -->

      <!--用户编辑 开始-->
      <div class="editUser hide">
        <div class="btnbar row"> 
         <button type="button" class="btn saveAdd hide">保存添加</button>
         <button type="button" class="btn addUser">添加用户</button> 
         <button type="button" class="btn saveUser">保存修改</button>
         <button type="button" class="btn forbidUser">禁用用户</button>
         <button type="button" class="btn backList">返回列表</button>
        </div>
        <div class="page-header row"> 
         <h4>账户基本信息</h4> 
        </div>
        <form id="editUserForm" class="form-horizontal"> 
         <fieldset> 
          <legend>账户基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="userName">用户名：</label> 
           <div class="controls"> 
            <input class="span3" type="text" id="userName" value="" name="user.name" placeholder="用户名" required="required" /> 
           </div>
          </div>
          <div class="control-group"> 
           <label class="control-label" for="userPassword">密码：</label> 
           <div class="controls"> 
            <input class="span3" type="text" id="userPassword" value=""  name="user.pwd" placeholder="密码" required="required" /> 
           </div> 
          </div>
          <div class="control-group"> 
           <label class="control-label" for="userEmail">注册邮箱：</label> 
           <div class="controls"> 
            <input class="span3" type="email" id="userEmail" value="" name="user.email" placeholder="电子邮箱" required="required" />
           </div> 
          </div>
          </fieldset>
          </form>
         </div>
         <!--用户编辑 结束-->
      
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
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script> 
  <!-- <script src="js/jplist.min.js"></script>  -->
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.common.js"></script> 
  <!-- handlebars template -->
  <script id="user-template" type="text/x-handlebars-template">
    {{#each this}}

		    <tr class="user" data-info="{{data this}}">
	    		<td class="user-userName form-inline"><label for="{{userId}}"><input type="checkbox" id="data[i].{{userId}}"/>{{userName}}<label></td>
        	<td class="user-registerTime">{{regTime}}</td>
        	<td class="user-lastLoginTime">{{lastLogTime}}</td>
        	<td class="user-matchNumber">{{matchNumber}}</td>
        	<td class="user-courtNumber">{{courtNumber}}</td>
        	<td class="user-loginNumber">{{loginNumber}}</td>
        	<td class="user-email">{{userEmail}}</td>
        	<td class="user-IP">{{IP}}<span>&nbsp;{{city}}</span></td>
	    		<td class="user-oprate"><a href="javascript:void(0)" class="btn btn-mini pull-right">编辑用户</a></td>
        </tr>	    		  
                            
    {{/each}}
  </script>
  <script>
  $(function(){
	//ajax接受所有的用户
		$.post("getAllUser", null, function(data) {
	      console.log(data);//alert(data);
        var target = $(".userTable > tbody"),template = Handlebars.compile($('#user-template').html());
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
    //列表排序
    
    //管理员界面表格列字数限制，溢出省略
    $(".user-email").wordLimit(16);
    //重复点击下拉列表改变排序
    
    //点击编辑用户隐藏List列表同时显示编辑用户
    $("tbody").on("click",".user-oprate > a",function(event){
        //显示禁用用户和保存修改用户选项，隐藏保存添加，同时根据data-info填补form，
        $(".editUser .forbidUser").show();
        $(".editUser .saveUser").show();
        $(".editUser .saveAdd").hide();
      var datainfo = $(this).parent().parent().attr("data-info");
      console.log(datainfo);
      $(".userList").slideUp();
      $(".editUser").slideDown();
    });
    //点击返回用户列表
    $(".backList").click(function(){
      $(".userList").slideDown();
      $(".editUser").slideUp();
    });
    //点击添加用户
    $(".addUser").click(function(){
      //隐藏 禁用用户和保存修改用户选项，同时清空form，显示保存添加
      $(".editUser .forbidUser").hide();
      $(".editUser .saveUser").hide();
      //由于jquery没有专门的重置函数，故使用DOM重置表单
      $("#editUserForm")[0].reset();
      $(".editUser .saveAdd").show();
      $(".userList").slideUp();
      $(".editUser").slideDown();
    });


    //***************************************************************************************
    // 编辑用户的js代码，关于验证用户信息是否合法，同场注册页面。   *********************** BEGIN *****************
    //***************************************************************************************
    
      //表单验证代码
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

      $("#editUserForm").validate({
        submitHandler: function(form){
        	console.log("通过验证");
          /*$.ajax({
            url: "processReg",
            type: "POST",
            dataType: "json",
            data: {
              "user.name": $("#inputUsername").val(),
              "user.pwd": $("#inputUserPassword").val(),
              "user.email": $("#inputUserEmail").val(),
            },
            success: function(resdata){
            	console.log(resdata);
              //$('#sousaiRemindDialog').modal({backdrop:static});
              console.log("dialoged!");              
            },
            error: function(jqXHR,textStatus,errorThrown){
            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
              alert("抱歉，发送数据出错了，请重新输入。");
            },
          });*/
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
      "user.email": {
        email: true
      },
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
      "user.email": {
        required: "请输入邮箱",
        email: "请输入有效的邮箱"
      },
    }
  });    

    //***************************************************************************************
    // 编辑用户的js代码，关于验证用户信息是否合法，同场注册页面。   *********************** END *******************
    //***************************************************************************************
    
  });
  </script>  
 </body>
</html>