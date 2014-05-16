<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*background.jsp
*describe:搜赛网管理员 采集设置 界面
*author:king
*date:2015-5-13
*/%>
<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>管理员页面&middot;采集设置&middot;搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-采集设置" /> 
  <meta name="author" content="" /> 
  <!-- Le styles --> 
  <link href="css/smoothness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jquery.fileupload.css" rel="stylesheet" /> 
  <link href="css/jquery.fileupload-ui.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]--> 
  <style>
  .form-horizontal .control-label {width: 140px;}
  .form-horizontal .controls {margin-left: 150px;}
  /** 重置最小宽度下form-horizontal的左边距 **/
  @media (max-width: 480px) {
  .form-horizontal .control-label {
      float: none;
      width: auto;
      padding-top: 0;
      text-align: left;
    }
  .form-horizontal .controls {
      margin-left: 0;
    }
  }
  /** 按钮左边距 **/
  .btn {margin-left: 10px;}
  .fileupload-buttonbar .btn {margin-left: 0;}
  </style>
 </head> 
 <body class="background"> 
  <s:include value="background-head.jsp" /> <!-- 管理员界面页头 --> 
  <div class="container">
    <div class="row">
    <div class="span4"> 
     <img src="img/logo.png" />
     <span class="logotext">管理员页面</span> 
    </div></div>
    <div class="row">
    	<div class="span11">
       <s:include value="background-nav.jsp" /><!-- 管理员界面待处理提醒 和 侧边导航 --> 
     <div class="span9">
      <form class="form-horizontal" id="collectionsSettingForm" action="releaseCourtAction" method="post"  enctype="multipart/form-data"> 
         <fieldset> 
          <legend>采集设置</legend> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchTitleKey">比赛名称关键字：</label> 
           <div class="controls"> 
            <input class="span7 add-on" type="text" id="inputMatchTitleKey" name="inputMatchTitleKey" placeholder="如：乒乓球|季度赛|比赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="多个关键字请用竖线|隔开" required="required"/> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchTimeKey">比赛时间关键字：</label> 
           <div class="controls"> 
            <input class="span7 add-on" type="text" id="inputMatchTimeKey" name="inputMatchTimeKey" placeholder="如：比赛时间|比赛日期|2014年5月|日|月" data-toggle="tooltip" data-placement="top" title="" data-original-title="多个关键字请用竖线|隔开" required="required"/> 
           </div> 
          </div>
          <div class="control-group"> 
           <label class="control-label" for="inputMatchCourtKey">比赛地点关键字：</label> 
           <div class="controls"> 
            <input class="span7 add-on" type="text" id="inputMatchCourtKey" name="inputMatchCourtKey" placeholder="如：乒乓球|季度赛|比赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="多个关键字请用竖线|隔开" required="required"/> 
           </div> 
          </div>
          <div class="control-group"> 
           <label class="control-label" for="inputCollectWeb">固定采集网站：</label> 
           <div class="controls"> 
            <input class="span6 add-on" type="text" id="inputCollectWeb" name="inputCollectWeb" placeholder="如：http://www.baidu.com" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击添加 添加网站输入框"/><button class="btn">添加</button><button class="btn">管理</button>
           </div> 
          </div>
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">上传QQ聊天记录：</label> 
           <div class="controls">
            <div class="fileupload-buttonbar">
                <span class="btn fileinput-button">
                    <i class="icon-plus"></i>
                    <span>选择文件</span>
                    <input type="file" name="files[]" multiple="">
                </span>
                <button type="submit" class="btn start">
                    <i class="icon-upload"></i>
                    <span>上传</span>
                </button>
                <button type="reset" class="btn cancel">
                    <i class="icon-ban-circle"></i>
                    <span>取消</span>
                </button>
                <button type="button" class="btn delete">
                    <i class="icon-trash"></i>
                    <span>删除</span>
                </button>
                <input type="checkbox" class="toggle">
                <button class="btn">采集</button>
                <span class="fileupload-process"></span>
            <div class=" fileupload-progress fade">
                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                </div>
                <div class="progress-extended">&nbsp;</div>
            </div>
        <table role="presentation" class="table table-striped"><tbody class="files"></tbody></table> 
      </div>
           </div> 
          </div>
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">采集时间：</label> 
           <div class="controls"> 
            <input class="add-on" type="text" id="inputCourtName" name="inputCourtName" placeholder="如：15:20" data-toggle="tooltip" data-placement="top" title="" data-original-title="请使用24小时制"/>
           </div>
            <hr>
            <input class="btn pull-right" type="reset" value="重置"/>
            <input class="btn btn-success pull-right" type="submit" value="保存"/>
           </div>
        </fieldset>
      </form>
     </div><!-- /span9 -->
   </div><!-- /span11-->
   </div><!-- /row-->
   </div><!-- /container-->

<!-- Le javascript
    ================================================== --> 
  <!-- Placed at the end of the document so the pages load faster --> 
  <script src="js/jquery-1.11.0.min.js"></script> 
  <script src="js/jquery.ui.widget.js"></script>
  <script src="js/tmpl.min.js"></script>
  <script src="js/bootstrap.min.js"></script> 
  <script src="js/jquery.iframe-transport.js"></script>
  <script src="js/jquery.fileupload.js"></script>
  <script src="js/jquery.fileupload-process.js"></script>
  <script src="js/jquery.fileupload-ui.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/sousai.common.js"></script> 

<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">上传中...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn start" disabled>
                    <i class="icon-upload"></i>
                    <span>开始</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn cancel">
                    <i class="icon-ban-circle"></i>
                    <span>取消</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="icon-trash"></i>
                    <span>删除</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn cancel">
                    <i class="icon-ban-circle"></i>
                    <span>取消</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
  <script>
  $(function(){
    /** 表单验证代码 **/
    var validateor = $("#collectionsSettingForm").validate({
      submitHandler: function(){},
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
    /** 表单重置 **/
    $("input[type='reset']").click(function(){ 
    validateor.resetForm(); 
    }); 
    /** 用户头像图片上传 **/
    $('#collectionsSettingForm').fileupload({
            url: 'server/java/'
        });
        $('#collectionsSettingForm').fileupload('option', {
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 5000000,
            maxNumberOfFiles : 5,
            acceptFileTypes: /(\.|\/)(txt)$/i
        });
  })
  </script>
</body>
</html>