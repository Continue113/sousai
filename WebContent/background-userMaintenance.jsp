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
  /** 排序下拉按钮 **/
  .panel-top > .btn-group {margin-top: -10px;}
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
       <div class="btn-group sort" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-orderbycol="name" data-isasc="true">排序方式</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
          <li><a href="javascript:void(0)" data-orderbycol="name" data-isasc="true">用户名<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="email" data-isasc="true">注册邮箱<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="regTime" data-isasc="true">注册时间<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="loginNumber" data-isasc="true">登录次数<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="matchNumber" data-isasc="true">比赛发布<i class="icon-arrow-up"></i></a></li> 
          <li><a href="javascript:void(0)" data-orderbycol="courtNumber" data-isasc="true">场地发布<i class="icon-arrow-up"></i></a></li>
		</ul>
	   </div>
	    <div class="text-filter-box input-append"> 
         <input type="text" class="span2" placeholder="请输入关键字"/> 
         <div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="current" data-strcolumns="name">用户名</span><span class="caret"></span></button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="javascript:void(0)" data-strcolumns="name">用户名</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="email">注册邮箱</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="regTime">注册时间</a></li>
			<li><a href="javascript:void(0)" data-strcolumns="IP">常用IP</a></li>
		</ul>
	   	</div>
	   	<button class="btn" type="button" id="textFilterBoxSearchButton">搜索</button>
         <!-- <span class="add-on"><i class="icon-search"></i></span> -->
        </div>   
        <select class="select selectRows span1"><option value=25>25条/页</option><option value=40>40条/页</option><option value=50>50条/页</option></select>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn forbidUser">禁用用户</button>
         <button type="button" class="btn addUser">添加用户</button> 
        </div> 
       </div>
       <table class="table table-striped table-hover userTable"> 
        <caption>用户维护</caption> 
        <thead>
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
       <div class="panel-bottom">
       <div id="ajaxState" class="text-center"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       <div class="pagination"><nav><ul class="pagination"></ul></nav></div></div>
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
          <form id="userNameForm" class="form-horizontal">
          <div class="control-group"> 
           <label class="control-label" for="userName">用户名：</label> 
           <div class="controls"> 
            <input class="span3" type="text" id="userName" value="" name="user.name" placeholder="用户名" required="required" disabled/> 
           </div>
          </div>
          </form>
          <form id="userPasswordForm" class="form-horizontal">
          <div class="control-group"> 
           <label class="control-label" for="userPassword">密码：</label> 
           <div class="controls"> 
            <input class="span3" type="text" id="userPassword" value=""  name="user.pwd" placeholder="密码" required="required" />
           </div> 
          </div>
          </form>
          <form id="userEmailForm" class="form-horizontal">
          <div class="control-group"> 
           <label class="control-label" for="userEmail">注册邮箱：</label> 
           <div class="controls"> 
            <input class="span3" type="email" id="userEmail" value="" name="user.email" placeholder="电子邮箱" required="required" />
           </div> 
          </div>
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
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.common.js"></script> 
  <!-- handlebars template -->
  <script id="user-template" type="text/x-handlebars-template">
    {{#each this}}

		    <tr class="user" data-info="{{data this}}">
	    		<td class="user-userName form-inline"><label for="{{id}}"><input type="checkbox" id="{{userId}}"/><span>{{userName}}</span><label></td>
        	<td class="user-registerTime">{{userRegTime}}</td>
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
  //定义函数
	function e(crtPage,rs,obc,ia,sc,kv){
		$("#ajaxState .load").show();console.log("start");
	    $.ajax({
	        type: "POST",
	        url: "getAllUser",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        data: {currentPage:crtPage,rows:rs,orderByCol:obc,isAsc:ia,strColumns:sc,keyValue:kv},
	        dataType: "json",
	        success: function(data) {
	        	console.log(data);
	        	  var target = $(".userTable > tbody"),template = Handlebars.compile($('#user-template').html());
	        	  Handlebars.registerHelper("data",function(v){
	        	    //将当前对象转化为字符串，保存在data-info中
	        	    console.log(v);
	        	    var v1 = JSON.stringify(v);
	        	    //console.log("v1:"+v1);
	        	    return v1;
	        	  });
	        	  target.empty(); //清空tbody
	        	  target.html(template(data.body));
	        	  $("#ajaxState .load").hide();
	    	      $("#ajaxState .noresult").hide();
	    	      console.log("stop");
	        	  //出错或无结果
	        	  //target.empty(); //清空tbody
	        	  if(target.find("tr.user").length == 0){
	        	  $("#ajaxState .noresult").show();console.log("无结果");
	        	  }
	        	  //管理员界面表格列字数限制，溢出省略
	        	  $("td > label > span").wordLimit();
	        	  $(".user-email").wordLimit(16);
	            pages(data.count,crtPage,rs);
	  	    },
	        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	  	      $("#ajaxState .noresult").show();console.log("出错了");
	          sousaiRemindDialog("抱歉，ajax出错了。");
	        },
	      });
}
  
  $(function(){
	//ajax接受所有的用户 默认为25条每页
	e(1,25,"name",true,"name","");
    //点击编辑用户隐藏List列表同时显示编辑用户
    $("tbody").on("click",".user-oprate > a",function(event){
        var datainfo = $(this).parent().parent().attr("data-info"), target=$(".editUser");
        //显示禁用用户和保存修改用户选项，隐藏保存添加，同时根据data-info填补form，
        target.find(".forbidUser").show();
        target.find(".saveUser").show();
        target.find(".saveAdd").hide();
      console.log(datainfo);
      //解析datainfo中的信息
      var data = eval('(' + datainfo + ')');
      $("#userName").val(data.userName).attr("data-id",data.userId).attr("data-oldname",data.userName);
      $("#userPassword").val(data.userPwd);
      $("#userEmail").val(data.userEmail);
      $(".userList").slideUp();
      target.slideDown();
      //添加用户名输入框的disabled属性      
      $("#userName").attr("disabled","disabled")
    });
    //点击返回用户列表
    $(".backList").click(function(){
      $(".userList").slideDown();
      $(".editUser").slideUp();
    });
    //点击添加用户
    $(".addUser").click(function(){
    	var target=$(".editUser");
      //隐藏 禁用用户和保存修改用户选项，同时清空form，显示保存添加
      target.find(".forbidUser").hide();
      target.find(".saveUser").hide();
      //由于jquery没有专门的重置函数，故使用DOM重置表单
      $("form")[0].reset();$("form")[1].reset();$("form")[2].reset();
      
      target.find(".saveAdd").show();
      $(".userList").slideUp();
      target.slideDown();
      //取消用户名输入框的disabled属性
      $("#userName").removeAttr("disabled");
    });


    //***************************************************************************************
    // 编辑用户的js代码，关于验证用户信息是否合法，同场注册页面。   *********************** BEGIN *****************
    //***************************************************************************************
    

        //表单验证代码
    /*$("#editUserForm").validate({
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
      },
    });*/


    //表单验证代码
$("#userNameForm").validate({
  rules: {
    "user.name": {
      minlength: 4,
      maxlength: 16,
      remote: "validName",
    },
  },
  messages: {
    "user.name": {
      required: "请输入用户名",
      minlength: "用户名至少4个字符",
      maxlength: "用户名最多16个字符",
      remote: "该用户名已存在，请换个其他的用户名！"
    },
  },
});

$("#userPasswordForm").validate({
  rules: {
    "user.pwd": {
      minlength: 6,
      maxlength: 16,
    },
  },
  messages: {
    "user.pwd": {
      required: "请输入密码",
      minlength: "密码请设置至少6位",
      maxlength: "密码请设置至多16个字符",
    },
  },
});


//表单验证代码
$("#userEmailForm").validate({
rules: {
"user.email": {
  email: true,
  maxlength: 32,
},
},
messages: {
"user.email": {
  required: "请输入邮箱",
  email: "请输入有效的邮箱",
  maxlength: "邮箱做多设置32个字符",
},
},
});
    
    //验证添加用户
    $( "button.saveAdd" ).click(function() {//密码限制问题
    	var valid = false;
    	if( $("#userNameForm").valid() && $("#userPasswordForm").valid() && $("#userEmailForm").valid() ){
    		valid = true;
    		$("#userName").parent().find(".error").hide();
    	}
		if( valid === true ){
			console.log("通过验证");
	        var dataname = $("#userName").val(),
	        datapwd = $("#userPassword").val(),
	        dataemail = $("#userEmail").val();
	    	console.log(dataname+datapwd+dataemail);
	          $.ajax({
	            url: "processReg",
	            type: "POST",
	            dataType: "json",
	            data: {
	                "user.name": dataname,
	                "user.pwd": datapwd,
	                "user.email": dataemail,
	            },
	            success: function(data){
	            	console.log(data);
	            	if(data == "success"){
	            		sousaiRemindDialog("添加用户成功.");
		                window.setTimeout("window.location='background-userMaintenance.jsp'",1000);
	            	}else{
	            		sousaiRemindDialog("由于未知错误，添加用户失败。");
	            	}
	            },
	            error: function(jqXHR,textStatus,errorThrown){
	            	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	                sousaiRemindDialog("抱歉，发送数据出错了，请重新输入。");
	            },
	          });
			
		}else{
			sousaiRemindDialog("Valid: 有不符合验证的内容，");
		}
	});
    //保存用户信息
    $("button.saveUser").click(function (){ //修改用户名错误,修改密码居然是修改到了已经登录的那个 。
    	//用户名已存在问题：胭脂是否为用户名的问题，若用户名没有修改则设置valid为true；
		var valid = false,
		oldname = $("#userName").attr("data-oldname"),
        dataid = $("#userName").attr("data-id"),
        dataname = $("#userName").val(),
        datapwd = $("#userPassword").val(),
        dataemail = $("#userEmail").val();

    	if( ($("#userNameForm").valid()||(dataname === oldname)) && $("#userPasswordForm").valid() && $("#userEmailForm").valid() ){
    		valid = true;
    	}
		
		if( valid === true ){
			console.log("通过验证");
    	console.log(dataid+" ,"+dataname+" ,"+datapwd+" ,"+dataemail);

        $.ajax({
        url: "updateUserInfo",
        type: "POST",
        dataType: 'json',
        data: {
        	"action": 2,
        	"user.id":dataid,
            "user.name": dataname,
            "user.pwd": datapwd,
            "user.email": dataemail,
          },
        success: function(rspdata) {
          window.setTimeout("window.location='background-userMaintenance.jsp'",1000);
          sousaiRemindDialog("编辑账户成功,请刷新页面。");
        },
        error: function(jqXHR,textStatus,errorThrown){
        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          sousaiRemindDialog("抱歉，发送数据出错了，请重新输入。");
        },
        });
		}else{
			sousaiRemindDialog( "Valid: 有不符合验证的内容，");
		}
    });

    //***************************************************************************************
    // 编辑用户的js代码，关于验证用户信息是否合法，同场注册页面。   *********************** END *******************
    //***************************************************************************************
    
  });
  </script>  
 </body>
</html>