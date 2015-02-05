<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
 <head> 
  <title>管理员页面 &middot; 用户维护 &middot; 搜赛网</title>
  <meta name="description" content="搜赛网-管理员页面-用户维护"> 
  <s:include value="seg-meta.jsp"/>
  <link href="css/sousai.back.css" rel="stylesheet">
 </head> 
 <body class="background"> 
  <s:include value="seg-back-head.jsp"/> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a>
     <span class="logotext">管理员页面</span> 
    </div>
   </div> 
   <div class="row"> 
    <div class="span11"> 
      <s:include value="seg-back-menu.jsp" /><!-- 后台导航菜单 -->
     <div class="span9"> 
     <div class="userList">
      <!--用户维护 开始--> 
      <div id="userMaintenance">
       <!-- panel --> 
       <div class="panel-top form-inline">
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
         <input type="text" class="span2" placeholder="请输入关键字"> 
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
        </div>   
        <select class="select selectRows span1"></select>
        <label class="checkbox" for="selType"><input id="selType" type="checkbox" value="1"><span>显示所有</span></label>
        <div class="btnbar pull-right"> 
         <button type="button" class="btn forbidUser">禁用</button>
         <button type="button" class="btn unforbidUser">解禁</button>
         <button type="button" class="btn addUser">添加</button> 
        </div>
       </div>
       <table class="table table-striped table-hover userTable">
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
            <input class="span3" type="text" id="userName" value="" name="user.name" placeholder="用户名" required="required" disabled> 
           </div>
          </div>
          </form>
          <form id="userPasswordForm" class="form-horizontal">
          <div class="control-group"> 
           <label class="control-label" for="userPassword">密码：</label> 
           <div class="controls"> 
            <input class="span3" type="text" id="userPassword" value=""  name="user.pwd" placeholder="密码" required="required">
           </div> 
          </div>
          </form>
          <form id="userEmailForm" class="form-horizontal">
          <div class="control-group"> 
           <label class="control-label" for="userEmail">注册邮箱：</label> 
           <div class="controls"> 
            <input class="span3" type="email" id="userEmail" value="" name="user.email" placeholder="电子邮箱" required="required">
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

		    <tr class="user" data-info="{{data}}">
	    		<td class="user-userName form-inline">{{checkState}}</td>
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
	function e(argso){
		//定义默认选项 
		var args=argso;
		args.currentPage = args.currentPage||$("ul.pagination li.active a").html()||1;
		args.rows = args.rows||$("select.selectRows option:selected").val()||25;
		args.orderByCol = args.orderByCol||$(".sort button .current").attr("data-orderbycol")||"name";
		args.isAsc = args.isAsc||$(".sort button .current").attr("data-isasc")||true;
		args.strColumns = args.strColumns||$(".text-filter-box button .current").attr("data-strcolumns")||"name";
		args.keyValue = args.keyValue||$(".text-filter-box input").val()||"";
		args.selType = args.selType||$("#selType").attr("value")||1;
		
	  	console.log(args);
		$("#ajaxState .load").show();
	    $.ajax({
	        url: "getAllUser",
	        data: args,
	        success: function(rspdata) {
	        	  var target = $(".userTable > tbody"),template = Handlebars.compile($('#user-template').html());
	        	  Handlebars.registerHelper("data",function(){
	        	    return JSON.stringify(this);
	        	  });
	    	      Handlebars.registerHelper("checkState",function(){
	    	    	  switch(this.userType){
	    	    	  case "0":
	                  	  return  new Handlebars.SafeString('<label for="'+this.userId+'"><input type="checkbox" id="'+this.userId+'" /><span>'+this.userId+':'+this.userName+'</span></label><span class="label label-info">已禁用</span>');
	                  	  break;
	    	    	  case "1":
	                  	  return new Handlebars.SafeString('<label for="'+this.userId+'"><input type="checkbox" id="'+this.userId+'" /><span>'+this.userId+':'+this.userName+'</span></label>');
	                  	  break;
	    	    	  case "2":
	                	  return new Handlebars.SafeString('<label for="'+this.userId+'"><span>'+this.userId+':'+this.userName+'</span></label><span class="label label-important">管理员</span>');
	                	  break;
	    	    	  }
	                  /*if(this.userType == "0"){
	                  	  return  new Handlebars.SafeString('<label for="'+this.userId+'"><span>'+this.userId+':'+this.userName+'</span></label><span class="label label-info">已禁用</span>');
	                  }else if(userType == "2"){ //管理员
	                	  return new Handlebars.SafeString('<label for="'+this.userId+'"><span>'+userId+':'+this.userName+'</span></label><span class="label label-important">管理员</span>');
		              }else{
	                  	  return new Handlebars.SafeString('<label for="'+this.userId+'"><input type="checkbox" id="'+this.userId+'" /><span>'+this.userId+':'+this.userName+'</span></label>');
	                  }*/
	                });	 
	        	  target.empty().html(template(rspdata.body));
	        	  $("#ajaxState .load").hide();
	    	      $("#ajaxState .noresult").hide();
	        	  if(target.find("tr.user").length == 0){
	        	  $("#ajaxState .noresult").show();
	        	  }
	        	  //管理员界面表格列字数限制，溢出省略
	        	  $("td > label > span").wordLimit();
	        	  $(".user-email").wordLimit(16);
	              pages(rspdata.count,args.currentPage,args.rows);
	  	    }
	      });
}
  
  $(function(){
	  setMenu();
	//ajax接受所有的用户 默认为25条每页
	e({currentPage:1,rows:25});
    //点击编辑用户隐藏List列表同时显示编辑用户
    $("tbody").on("click",".user-oprate > a",function(event){
        var datainfo = $(this).parent().parent().attr("data-info"), target=$(".editUser");
        //显示禁用用户和保存修改用户选项，隐藏保存添加，同时根据data-info填补form，
        target.find(".forbidUser").show().end().find(".saveUser").show().end().find(".saveAdd").hide();
      //解析datainfo中的信息
      var data = eval('(' + datainfo + ')');
      $("#userName").val(data.userName).attr("data-id",data.userId).attr("data-oldname",data.userName);
      $("#userPassword").val(data.userPwd);
      $("#userEmail").val(data.userEmail);
      $(".userList").slideUp();
      target.slideDown();
      //添加用户名输入框的disabled属性      
      $("#userName").attr("disabled","disabled");
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

    $("#selType").click(function(){
    	var target = $(this);
    	if(target.attr("value")==1){
    		e({selType:1});
    		target.attr("value",0);//.parent().find("span").text("显示未禁用");
    	}else if(target.attr("value")==0){
    		e({selType:0});
    		target.attr("value",1);//.parent().find("span").text("显示所有");    		
    	}
    });

    //***************************************************************************************
    // 编辑用户的js代码，关于验证用户信息是否合法，同场注册页面。   *********************** BEGIN *****************
    //***************************************************************************************
    
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
	            data: {
	                "user.name": dataname,
	                "user.pwd": datapwd,
	                "user.email": dataemail,
	            },
	            success: function(rspdata){
	            	console.log(rspdata);
	            	if(rspdata == "success"){
	            		sousaiRemindDialog("添加用户成功.");
		                //window.setTimeout("window.location='background-userMaintenance.jsp'",1000);
	            	}else{
	            		sousaiRemindDialog("添加用户失败，错误代码为："+rspdata);
	            	}
	            }
	          });
			
		}else{
			sousaiRemindDialog("Valid: 有不符合验证的内容，");
		}
	});
    //保存用户信息
    $("button.saveUser").click(function (){ //修改用户名错误,修改密码居然是修改到了已经登录的那个 。
    	//用户名已存在问题：胭脂是否为用户名的问题，若用户名没有修改则设置valid为true；
		var valid = false,
        dataid = $("#userName").attr("data-id"),
        dataname = $("#userName").val(),
        datapwd = $("#userPassword").val(),
        dataemail = $("#userEmail").val();

    	if($("#userPasswordForm").valid() && $("#userEmailForm").valid() ){
    		valid = true;
    	}
		
		if( valid === true ){
        $.ajax({
        url: "updateUserInfo",
        data: {
        	"action": 2,
        	"user.id":dataid,
            "user.name": dataname,
            "user.pwd": datapwd,
            "user.email": dataemail,
          },
        success: function(rspdata) {
        	if(rspdata == "SUCCESS"){
        		sousaiRemindDialog("编辑账户成功");
        	}else{
    		sousaiRemindDialog("编辑用户失败，错误代码为："+rspdata);
    		//window.setTimeout("window.location='background-userMaintenance.jsp'",1000);  
    		}          	        
        }
        });
		}else{
			sousaiRemindDialog( "Valid: 有不符合验证的内容，");
		}
    });

    //点击发布比赛 列表界面
    $("button.forbidUser").click(function(){
    	var checked = $(".user input:checked"),n = checked.length;
    	//若为选中则提示
    	if( n == 0){
    		sousaiRemindDialog("请先选中用户");
    	}else{
    		var userIds = new Array();
    		$(".user input:checked").each(function(index,element){
    			console.log($(this).attr("id"));
    			userIds.push($(this).attr("id"));
    		});
            $.ajax({
              url: "deleteUsersByAdmin",
              data: {
                "userIds": userIds.join(","),
              },
              success: function(rspdata) {
            	  if( rspdata == "success" ){
            		  sousaiRemindDialog("禁用用户成功");
              		  $(".user input:checked").parent().parent().prepend('<span class="label label-info">已禁用</span>').end().end().remove();
            	  }else{
            		  sousaiRemindDialog("禁用用户失败，错误代码为："+rspdata);
            	  }
              }
            });
    	}
    });
    
    
  });
  </script>  
 </body>
</html>