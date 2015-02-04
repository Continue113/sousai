<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面&middot;网站设置&middot;搜赛网</title>
  <meta name="description" content="搜赛网-管理员页面-采集设置" > 
  <s:include value="seg-meta.jsp"/>
  <link href="css/sousai.back.css" rel="stylesheet">
 </head> 
 <body class="background"> 
  <s:include value="seg-back-head.jsp" /> 
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
      <form class="form-horizontal">
      <fieldset>
      
        <div class="control-group" id="hotSeachControlGroup">
        <label class="control-label" for="inputMatchType">热门搜索：</label> 
        <div class="controls toolbar"> 
        <button type="button" class="btn edit">编辑</button>
        <button type="button" class="btn save">保存</button>
        </div>
        <div class="controls breadcrumb-fff">
        <ul class="breadcrumb" id="hotSearchBreadcrumb">         
        <li><input class="span1" placeholder="如：请填写关键字" required="required" type="text"></li>
        <li><input class="span1" placeholder="如：请填写关键字" required="required" type="text"></li>
        <li><input class="span1" placeholder="如：请填写关键字" required="required" type="text"></li>
        <li><input class="span1" placeholder="如：请填写关键字" required="required" type="text"></li>
        <li><input class="span1" placeholder="如：请填写关键字" required="required" type="text"></li>
        <li><input class="span1" placeholder="如：请填写关键字" required="required" type="text"></li>
 		</ul>
        </div>
        </div> 
        
        <div class="control-group" id="matchTypeControlGroup">
        <label class="control-label" for="inputMatchType">比赛类型：</label> 
        <div class="controls toolbar"> 
        <button type="button" class="btn" onclick="editAllMatchType()">编辑</button>
        <button type="button" class="btn" onclick="saveAllMatchType()">保存</button>
        </div>
        <div class="controls breadcrumb-fff"></div>
        </div> 
        
        
        <div class="control-group" id="courtTypeControlGroup">
        <label class="control-label" for="inputMatchType">场地类型：</label> 
        <div class="controls toolbar"> 
        <button type="button" class="btn" id="editCourtType">编辑</button>
        <button type="button" class="btn" id="saveCourtType">保存</button>
        </div>
        <div class="controls breadcrumb-fff"></div>
        </div> 
      
      </fieldset>
<%--        <fieldset> 
        <legend>采集设置</legend> 
        <div class="control-group"> 
         <label class="control-label" for="inputMatchTitleKey">比赛名称关键字：</label> 
         <div class="controls"> 
          <input class="span7 add-on" type="text" id="inputMatchTitleKey" name="inputMatchTitleKey" placeholder="如：乒乓球|季度赛|比赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="多个关键字请用竖线|隔开" required="required" > 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputMatchTimeKey">比赛时间关键字：</label> 
         <div class="controls"> 
          <input class="span7 add-on" type="text" id="inputMatchTimeKey" name="inputMatchTimeKey" placeholder="如：比赛时间|比赛日期|2014年5月|日|月" data-toggle="tooltip" data-placement="top" title="" data-original-title="多个关键字请用竖线|隔开" required="required" > 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputMatchCourtKey">比赛地点关键字：</label> 
         <div class="controls"> 
          <input class="span7 add-on" type="text" id="inputMatchCourtKey" name="inputMatchCourtKey" placeholder="如：乒乓球|季度赛|比赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="多个关键字请用竖线|隔开" required="required" > 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputCollectWeb">固定采集网站：</label> 
         <div class="controls"> 
          <input class="span6 add-on" type="text" id="inputCollectWeb" name="inputCollectWeb" placeholder="如：http://www.baidu.com" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击添加 添加网站输入框" >
          <button class="btn">添加</button>
          <button class="btn">管理</button> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputCourtName">上传QQ聊天记录：</label> 
         <div class="controls"> 
          <div class="fileupload-buttonbar"> 
           <span class="btn fileinput-button"> <i class="icon-plus"></i> <span>选择文件</span> <input type="file" name="files[]" > </span> 
           <button type="submit" class="btn start"> <i class="icon-upload"></i> <span>上传</span> </button> 
           <button type="reset" class="btn cancel"> <i class="icon-ban-circle"></i> <span>取消</span> </button> 
           <button type="button" class="btn delete"> <i class="icon-trash"></i> <span>删除</span> </button> 
           <input type="checkbox" class="toggle" > 
           <button class="btn">采集</button> 
           <span class="fileupload-process"></span> 
           <div class=" fileupload-progress fade"> 
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100"> 
             <div class="progress-bar progress-bar-success" style="width:0%;"></div> 
            </div> 
            <div class="progress-extended">
             &nbsp;
            </div> 
           </div> 
           <table role="presentation" class="table table-striped">
            <tbody class="files"></tbody>
           </table> 
          </div> 
         </div> 
        </div> 
        <div class="control-group"> 
         <label class="control-label" for="inputCourtName">采集时间：</label> 
         <div class="controls"> 
          <input class="add-on" type="text" id="inputCourtName" name="inputCourtName" placeholder="如：15:20" data-toggle="tooltip" data-placement="top" title="" data-original-title="请使用24小时制" > 
         </div> 
         <hr > 
         <input class="btn pull-right" type="reset" value="重置" > 
         <input class="btn btn-success pull-right" type="submit" value="保存" > 
        </div> 
       </fieldset>  --%>
      </form> 
     </div>
     <!-- /span9 --> 
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
  <script src="js/jquery.validate.min.js"></script> 
  <script src="js/sousai.common.js"></script> 
  <!-- handlebars template -->
  <script id="matchCatalog-template" type="text/x-handlebars-template">
    {{#each this}}
         
        <input disabled class="span1 catalog" type="text" id="catalog{{id}}" value="{{name}}" placeholder="如：请填写大类的类型" required="required" > <span class="divider">:</span>
		<ul class="breadcrumb" id="catalogBreadcrumb{{id}}">{{literal}}</ul>

    {{/each}}
  </script>
  <script id="matchType-template" type="text/x-handlebars-template">
    {{#each this}}
         
        <li><input disabled class="span1 " type="text" id="matchType{{id}}" value="{{name}}" placeholder="如：请填写比赛类型" required="required" ></li>

    {{/each}}
  </script>
  
  <script>
  //定义函数
      function getAllMatchType(){
    	//获取所有比赛类型
          $.post("showMC", null, function(rspdata) {
        	  console.log(rspdata);
		      var target = $("#matchTypeControlGroup").find(".breadcrumb-fff"),template = Handlebars.compile($('#matchCatalog-template').html());
		      Handlebars.registerHelper("literal",function(){
		    	  var cataid = this.id;
		    	  $.post("showMT", {"mcId": cataid}, function(rspType) {
		    		  console.log("XXX"+cataid);console.log(rspType);
				      var targetType = $("#catalogBreadcrumb"+cataid),templateType = Handlebars.compile($('#matchType-template').html());
				      targetType.empty().html(templateType(rspType));//.append('<li><button type="button" class="btn btn-link" onclick="addMatchTpyeInthisCatalog('+cataid+')">添加小类型</button></li>');
	              });
		      });
		      target.empty().html(template(rspdata));//.append('<button type="button" class="btn btn-link" onclick="addCatalog()">添加大类</button>');
			  
	    	  
          });
    	  
      }
  function editAllMatchType(){
	  $("#matchTypeControlGroup .breadcrumb-fff").find("input").removeAttr("disabled");
  }
  function saveAllMatchType(){
	  var target = $("#matchTypeControlGroup .breadcrumb-fff");
	  $.each( target.find("input.catalog"),function(index,item){
		  console.log(item);
		  console.log($(item).val());
		  console.log(target.find(".breadcrumb")[index]);
	  });
  }
  function addMatchTpyeInthisCatalog(cataid){
	  var targetType = $("#catalog"+cataid+"Breadcrumb");
	  targetType.find("li:last").before('<li><input class="span1 " type="text"  placeholder="如：请填写比赛类型" required="required" ></li>');//.html('<li><button type="button" class="btn btn-link" onclick="saveMatchTpyeInthisCatalog('+cataid+')">保存当前小类型</button></li>');
  }
  function addCatalog(){
	  console.log($(this));
	  $("button[onclick='addCatalog()']").before('<input class="span1 " type="text" placeholder="如：请填写大类的类型" required="required" > <span class="divider">:</span><ul class="breadcrumb newCatalogBreadcrumb"><li><input class="span1 " type="text" placeholder="如：请填写类型" required="required" ></li></ul>');
  }
  $(function(){
	  setMenu();
	  //getAllMatchType();
	  console.log(document.getElementById("editCourtType"));
	  $(editCourtType);
	  
	  
    /** 表单验证代码 **/
    var validateor = $("#collectionsSettingForm").validate({
    rules: {
    },
    messages: {
      inputMatchTitleKey: {
        required: "请输入比赛名称关键字",
      },
      inputMatchTimeKey: {
        required: "请输入比赛时间关键字",
      },
      inputMatchCourtKey: {
        required: "请输入比赛地点关键字",
      },
    }
    });
    /** 用户头像图片上传 **
    $('#collectionsSettingForm').fileupload({
            url: 'server/java/'
        });
        $('#collectionsSettingForm').fileupload('option', {
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 5000000,
            maxNumberOfFiles : 5,
            acceptFileTypes: /(\.|\/)(txt)$/i
        });*/
  });
  </script>  
 </body>
</html>