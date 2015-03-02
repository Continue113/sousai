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
        <!-- <div class="controls toolbar"> 
        <button type="button" class="btn edit">编辑</button>
        <button type="button" class="btn save">保存</button>
        </div> -->
        <div class="controls breadcrumb-fff">
        <ul class="breadcrumb" id="hotwords"></ul>
        </div>
        </div> 
        
        <div class="control-group" id="matchTypeControlGroup">
        <label class="control-label" for="inputMatchType">比赛类型：</label> 
        <!-- <div class="controls toolbar"> 
        <button type="button" class="btn" onclick="editAllMatchType()">编辑</button>
        <button type="button" class="btn" onclick="saveAllMatchType()">保存</button>
        </div> -->
        <div class="controls breadcrumb-fff"></div>
        </div> 
        
        
        <div class="control-group" id="courtTypeControlGroup">
        <label class="control-label" for="inputMatchType">场地类型：</label> 
        <div class="controls toolbar">
        <select class="selectMatchType span2" name="mcId"><option value=0>请选择比赛大类</option></select>
        <select class="selectParticularMatchType span2"><option value=0>请先选择比赛大类</option></select>
        <!-- <button type="button" class="btn" id="editCourtType">编辑</button>
        <button type="button" class="btn" id="saveCourtType">保存</button> -->
        </div>
        <div class="controls breadcrumb-fff"><ul class="breadcrumb selectCourtType"></ul></div>
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
         
        <input class="span1 catalog" type="text" id="catalog{{id}}" value="{{name}}" data-id="{{id}}" required="required" >
<span class="divider">:</span> <button type="button" class="btn btn-link" onclick="saveCatalog({{id}})">保存大类</button>
		<ul class="breadcrumb" id="catalogBreadcrumb{{id}}" data-id="{{id}}">{{literal}}</ul>

    {{/each}}
  </script>
  <script id="matchType-template" type="text/x-handlebars-template">
    {{#each this}}
         
        <li><input class="span1" type="text" id="matchType{{id}}" value="{{name}}" data-id="{{id}}" required="required" ><button type="button" class="btn btn-link" onclick="saveMatchType({{id}})">保存小类型</button></li>

    {{/each}}
  </script>
  
  <script>
  //定义函数
  function addHotWord(){
	 if($("#hotwords").find("input").length >= 6){
		 sousaiRemindDialog("热门搜索关键词已达上限。请修改已有关键词。");
		 return false;
	 }
	 var word =  $("#newHotWord").val(),
	 data = {
			  "hotWord.word" : word,
			  "hotWord.hot" : 1,
	  };
	  console.log(data);
	  if(!data["hotWord.word"]){
			$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对使用此场地的比赛和评论照成影响。");
			$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","deleteHotWord("+id+")");
			sousaiRemindDialog("确定删除？",-1,"show");
	  }else{
	  $.ajax({
		  url: "addHotWord",
		  data: data,
		  success: function(rspdata){
			  console.log(rspdata);
	          	if(rspdata == "success"){
	          		getAllHotWord();
	          	    hideSousaiRemindDialog();          		
	          	}else{
	          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
	          	}
		  },
	  });
	  }
  }

  function deleteHotWord(id){
	  var data = {
			  "hotWord.word" : word,
			  "hotWord.hot" : 1,
			  "hotWord.id" : id,
	  };
	  $.ajax({
          url: "deleteMatchClasses",
          data: data,
          success: function(rspdata){
          	console.log(rspdata);
          	if(rspdata == "success"){
              	getAllMatchType();
          	    hideSousaiRemindDialog();          		
          	}else{
          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
          	}
          }		  
	  });
  }
  function saveHotWord(id){
		 var word =  $("#hotword"+id).val();
		  var data = {
				  "hotWord.id" : id,
				  "hotWord.word" : word,
				  "hotWord.hot" : id,
		  };
		  console.log(data);
		  $.ajax({
			  url: "updateHotWord",
			  data: data,
			  success: function(rspdata){
				  console.log(rspdata);
		          	if(rspdata == "success"){
		          		getAllHotWord();
		          	    hideSousaiRemindDialog();          		
		          	}else{
		          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
		          	}
			  },
		  });
	  }
  function getAllHotWord(){
      var hotwords = $("#hotwords");
	  $.ajax({
		  url: "findAllHotWords",
		  success: function(rspdata) {
	         	console.log(rspdata);
	         	hotwords.empty();
	            for (var i = 0; i < rspdata.length; i++) {
	            	hotwords.append('<li><input class="span1" type="text" id="hotword' + rspdata[i].id + '" value="' + rspdata[i].word + '" data-id="' + rspdata[i].id + '" required="required" ><button type="button" class="btn btn-link" onclick="saveHotWord(' + rspdata[i].id + ')">保存</button></li>');
	            //$("#hotword"+rspdata[i].id).val(rspdata[i].word);            
	         	} 
	            hotwords.append('<li><input class="span1" type="text" id="newHotWord" required="required" ><button type="button" class="btn btn-link" onclick="addHotWord()">添加</button></li>');	            
	      },
	  });
  }
  function getAllCourtType(){
	  $.ajax({
		  url: "findAllCourtTypes",
		  success: function(rspdata){
			  console.log(rspdata);
		  },
	  });
  }
      function getAllMatchType(){
    	//获取所有比赛类型
          $.post("showMC", null, function(rspdata) {
        	  console.log(rspdata);
        	  //初始化场地类型处的比赛类型
		      var type = $(".selectMatchType"), target = $("#matchTypeControlGroup").find(".breadcrumb-fff"),template = Handlebars.compile($('#matchCatalog-template').html());

       		  for (var i = 0; i < rspdata.length; i++) {
           		  type.append("<option value=\"" + rspdata[i].id + "\">" + rspdata[i].name + "</option>");
        	  }
		      
		      Handlebars.registerHelper("literal",function(){
		    	  var cataid = this.id;
	    		  $.ajax({
	    	          url: "showMT",
	    	          data: {"mcId": cataid},
	    	          success: function(rspType) {
			    		  console.log("XXX"+cataid);
			    		  console.log(rspType);
					      var targetType = $("#catalogBreadcrumb"+cataid),templateType = Handlebars.compile($('#matchType-template').html());
					      targetType.empty().html(templateType(rspType)).append('<li><input class="span1 " type="text" id="newMatchType'+cataid+'" value="" required="required" ></li><li><button type="button" class="btn btn-link" onclick="addMatchTypeInthisCatalog('+cataid+')">添加小类型</button></li>');
		              },
		              /* error: function(){
		            	  console.log("chucuole");
		            	  $("#catalogBreadcrumb"+cataid).append('<li><input class="span1 " type="text" id="newMatchType'+cataid+'" value="" required="required" ></li><li><button type="button" class="btn btn-link" onclick="addMatchTpyeInthisCatalog('+cataid+')">添加小类型</button></li>');
		              	  return new Handlebars.SafeString('<li><input class="span1 " type="text" id="newMatchType'+cataid+'" value="" required="required" ></li><li><button type="button" class="btn btn-link" onclick="addMatchTpyeInthisCatalog('+cataid+')">添加小类型</button></li>');
			    		} */
	    		  });
	    		  
	    		  
	    		  
		      });
		      target.empty().html(template(rspdata)).append('<input class="span1 " type="text" id="newMatchCatalog" required="required" ><button type="button" class="btn btn-link" onclick="addCatalog()">添加大类</button>');
			  	    	  
          });
    	  
      }
/*   function editAllMatchType(){
	  $("#matchTypeControlGroup .breadcrumb-fff").find("input").removeAttr("disabled");
  }
  function saveAllMatchType(){
	  var target = $("#matchTypeControlGroup .breadcrumb-fff");
	  $.each( target.find("input.catalog"),function(index,item){
		  console.log(item);
		  console.log($(item).val());
		  console.log(target.find(".breadcrumb")[index]);
	  });
  } */
  function saveCatalog(id){
	  data = {
              "mc.name": $("#catalog"+id).val(),
              "mc.id": id,
          };
	  console.log(data);
	  if(!data["mc.name"]){
			$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对使用此场地的比赛和评论照成影响。");
			$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","deleteMatchClasses("+id+")");
			sousaiRemindDialog("确定删除？",-1,"show");
	  }else{
		  $.ajax({
	          url: "updateMatchClass",
	          data: data,
	          success: function(rspdata){
	          	console.log(rspdata);
	          	if(rspdata == "success"){
	              	getAllMatchType();
	          	    hideSousaiRemindDialog();          		
	          	}else{
	          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
	          	}
	          }		  
		  });
	  }	  
  }
  function deleteMatchClasses(id){
	  $.ajax({
          url: "deleteMatchClasses",
          data: {ids: id},
          success: function(rspdata){
          	console.log(rspdata);
          	if(rspdata == "success"){
              	getAllMatchType();
          	    hideSousaiRemindDialog();          		
          	}else{
          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
          	}
          }		  
	  });
  }
  function addMatchTypeInthisCatalog(cataid){
	  var targetType = $("#newMatchType"+cataid),
	  data = {
              "mt.name": targetType.val(),
              "mt.mcId": cataid,
          };
	  console.log(data);
	  $.ajax({
          url: "addMatchType",
          data: data,
          success: function(rspdata){
          	console.log(rspdata);
          	if(rspdata == "success"){
              	getAllMatchType();
          	    hideSousaiRemindDialog();          		
          	}else{
          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
          	}
          }		  
	  });
  }
  function saveMatchType(id){
	  var targetType = $("#matchType"+id),
	  data = {
		  	  "mt.id": id,
              "mt.name": targetType.val(),
              "mt.mcId": targetType.parent().parent().attr("data-id"),
          };
	  console.log(data);
	  if(!data["mt.name"]){
			$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对使用此场地的比赛和评论照成影响。");
			$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","deleteMatchTypes("+id+")");
			sousaiRemindDialog("确定删除？",-1,"show");
	  }else{
		  $.ajax({
	          url: "updateMatchType",
	          data: data,
	          success: function(rspdata){
	          	console.log(rspdata);
	          	if(rspdata == "success"){
	              	getAllMatchType();
	          	    hideSousaiRemindDialog();          		
	          	}else{
	          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
	          	}
	          }		  
		  });
	  }	  
  }
  function deleteMatchTypes(id){
	  $.ajax({
          url: "deleteMatchTypes",
          data: {ids: id},
          success: function(rspdata){
          	console.log(rspdata);
          	if(rspdata == "success"){
              	getAllMatchType();
          	    hideSousaiRemindDialog();          		
          	}else{
          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
          	}
          }		  
	  });
  }
  function addCatalog(){
	  var target = $("#newMatchCatalog"),
	  data = {
          "mc.name": target.val(),
      };
  console.log(data);
  $.ajax({
      url: "addMatchClass",
      data: data,
      success: function(rspdata){
      	console.log(rspdata);
      	if(rspdata == "success"){
          	getAllMatchType();
      	    hideSousaiRemindDialog();          		
      	}else{
      		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
      	}
      }
	  
  });
  }
  function saveCourtType(id){
	  var targetType = $("#courtType"+id),
	  data = {
	  	  	  "courtType.id": id,
	  	  	  "courtType.matchTypeId": targetType.attr("data-matchid"),
              "courtType.name": targetType.val(),
          };
	  console.log(data);
	  if(!data["courtType.name"]){
			$("#SRDadd").text("小提示：一旦确定删除将无法取消操作,同时将对使用此场地的比赛和评论照成影响。");
			$("#sousaiRemindDialog > .modal-footer > button.btn-success").attr("onclick","deleteCourtType("+id+")");
			sousaiRemindDialog("确定删除？",-1,"show");
	  }else{
		  $.ajax({
	          url: "updateCourtType",
	          data: data,
	          success: function(rspdata){
	          	console.log(rspdata);
	          	if(rspdata == "success"){
	              	getAllCourtTypeInthisCatalog(data["courtType.matchTypeId"]);
	          	    hideSousaiRemindDialog();
	          	}else{
	          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
	          	}
	          }		  
		  });
	  }	  
  }
  function deleteCourtType(id){
	  var targetType = $("#courtType"+id),
	  data = {
	  	  	  "courtType.id": id,
	  	  	  "courtType.matchTypeId": targetType.attr("data-matchid"),
              "courtType.name": targetType.val(),
          };
    	console.log(data);
	  $.ajax({
          url: "deleteMatchTypes",
          data: data,
          success: function(rspdata){
          	console.log(rspdata);
          	if(rspdata == "success"){
              	getAllCourtTypeInthisCatalog(data["courtType.matchTypeId"]);
          	    hideSousaiRemindDialog();          		
          	}else{
          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
          	}
          }		  
	  });	  
  }
  function addCourtTypeInthisCatalog(cataid){
	  var targetType = $("#newCourtType"+cataid),
	  data = {
              "courtType.name": targetType.val(),
              "courtType.matchTypeId": cataid,
              //"courtType.id": id,
          };
	  console.log(data);
	  $.ajax({
          url: "addCourtType",
          data: data,
          success: function(rspdata){
          	console.log(rspdata);
          	if(rspdata == "success"){
              	getAllCourtTypeInthisCatalog(cataid);
          	    hideSousaiRemindDialog();          		
          	}else{
          		sousaiRemindDialog("操作失败，错误代码为："+rspdata);
          	}
          }		  
	  });
  }
 function getAllCourtTypeInthisCatalog(cataid){
     //当选择具体比赛类型时，同时获取相应场地类型
     $.ajax({
         url: "showCT",
         data: {
             "matchId": cataid,
         },
         success: function(rspdata) {
         	console.log(rspdata);
             var sctCourtType = $("#courtTypeControlGroup").find(".selectCourtType");
             sctCourtType.empty();
             for (var i = 0; i < rspdata.length; i++) { "<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>"
                 sctCourtType.append('<li><input class="span1" type="text" id="courtType' + rspdata[i].id + '" value="' + rspdata[i].name + '" data-id="' + rspdata[i].id + '" data-matchid="'+cataid+'" required="required" ><button type="button" class="btn btn-link" onclick="saveCourtType(' + rspdata[i].id + ')">保存</button></li>');
             }
             sctCourtType.append('<li><input class="span1 " type="text" id="newCourtType'+cataid+'" value="" required="required" ></li><li><button type="button" class="btn btn-link" onclick="addCourtTypeInthisCatalog('+cataid+')">添加类型</button></li>');
         },
     });
	 
 }
  $(function(){
	  if(isAdmin() == '-1'){
		  return false;
	  }
	  setMenu();
	  console.log("getAllMatchType");
	  getAllMatchType();
	  console.log("getAllHotWord");
	  getAllHotWord();
	  //getAllCourtType();

	    //点击大类比赛类型获得具体比赛类型
	    $(".selectMatchType").change(function() {
	    	selectMatchType($(this));
	    });
	    //点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
	    $(".selectParticularMatchType").change(function() {
	    	//tgPrt: targetparent 目标父元素
	        var tgPrt = $(this).parent(),
	        thisval = tgPrt.find(".selectParticularMatchType option:selected").text(),
	        thisvalue = tgPrt.find(".selectParticularMatchType option:selected").attr("value");
			console.log(thisval+thisvalue);
	        if (thisvalue > 1) {
	            //当选择具体比赛类型时，同时获取相应场地类型
	            getAllCourtTypeInthisCatalog(thisvalue);
	        }
	    });
	  	  
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