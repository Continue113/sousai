<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>我的搜赛 &middot; 发布场地 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-发布场地" /> 
  <meta name="author" content="KING@CQU" /> 
  <!-- styles --> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jquery.fileupload.css" rel="stylesheet" /> 
  <link href="css/jquery.fileupload-ui.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.userCenter.css" rel="stylesheet" /> 
 </head> 
 <body class="userCenter"> 
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span4"> 
     <img src="img/logo.png" /> 
     <span class="logotext">我的搜赛</span> 
    </div> 
    <s:include value="searchbox.jsp" />
    <!-- 搜索框 --> 
    <!--   <div class="span7"> 
     <ul class="nav nav-tabs searchboxMenu"> 
      <li class="active"><a href="#searchbox-match" data-toggle="tab">比赛</a></li> 
      <li><a href="#searchbox-field" data-toggle="tab">场地</a></li> 
     </ul> 
     <div class="tab-content"> 
      <div id="searchbox-match" class="tab-pane active"> 
       <div class="input-append"> 
        <input type="text" class="span5" placeholder="输入您想要的比赛" /> 
        <button class="btn btn-success btn-matchsearch-append" type="button"><i class="icon-search icon-white"></i>&nbsp;搜&nbsp;索</button> 
       </div> 
      </div> 
      <div id="searchbox-field" class="tab-pane"> 
       <div class="input-append"> 
        <input type="text" class="span5" placeholder="输入您要找的场地" /> 
        <button class="btn btn-success btn-matchsearch-append" type="button"><i class="icon-search icon-white"></i>&nbsp;搜&nbsp;索</button> 
       </div> 
      </div> 
     </div> 
    </div> --> 
   </div>
   <!-- /row --> 
   <div class="row"> 
    <div class="span11"> 
     <div class="navbar"> 
      <div class="navbar-inner"> 
       <ul class="nav"> 
        <li class="active"><a href="#">我的搜赛网</a></li> 
       </ul> 
      </div> 
     </div> 
     <div class="span2 mySousaiMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><a href="userCenter-myMatch.jsp"><i class="icon-chevron-right"></i> 我发布的比赛</a></li> 
       <li><a href="userCenter-myCollection.jsp"><i class="icon-chevron-right"></i> 我收藏的比赛</a></li> 
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li class="active"><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind"> 
       <ul class="breadcrumb"> 
        <li>比赛信息:</li> 
        <li><a href="#">乒乓球<span>(5)</span></a></li> 
        <li><a href="#">羽毛球<span>(5)</span></a></li> 
        <li><a href="#">保宁球<span>(5)</span></a></li> 
        <li><a href="#">网球<span>(5)</span></a></li> 
       </ul> 
      </div> 
      <div class="tab-content"> 
       <div id="releaseCourt" class="tab-pane active"> 
        <div class="page-header"> 
         <h4>场地基本信息</h4> 
        </div> 
        <form class="form-horizontal" id="releaseCourtForm" action="releaseCourtAction" method="post" enctype="multipart/form-data"> 
         <fieldset> 
          <legend>场地基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">场地名称：</label> 
           <div class="controls"> 
            <input class="span5 add-on" type="text" id="inputCourtName" name="inputCourtName" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtType">场地类型：</label> 
           <div class="controls"> 
            <!-- 选择场地类型 --> 
            <select name="courtType"> <option value="0">请选择场地类型</option> <option value="courtType-inner">室内</option> <option value="courtType-outer">室外</option> <option value="courtType-zq">体育局</option> <option value="courtType-pp">俱乐部</option> <option value="courtType-lq">社区</option> <option value="courtType-zq">单位</option> <option value="courtType-zq">学校</option> <option value="courtType-pp">临时</option> <option value="courtType-lq">公共</option> <option value="courtType-zq">其他</option> </select> 
            <!-- /选择场地类型 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectMatchType">比赛类型：</label> 
           <div class="controls"> 
            <!-- 选择比赛类型 --> 
            <select name="matchType" class="selectMatchType"> <option value="0">请选择比赛类型</option> <option value="matchType-xql" data-for="matchType-xql">小球类</option> <option value="matchType-dql" data-for="matchType-dql">大球类</option> <option value="matchType-qpl" data-for="matchType-qpl">棋牌类</option> <option value="matchType-wyl" data-for="matchType-wyl">文艺类</option> <option id="matchType-qt">其他</option> </select> 
            <select name="matchType-xql" class="matchType-xql hide"> <option value="0">请选择(小球类)</option> <option value="matchType_pingPong">乒乓球</option> <option value="matchType_pingPong">羽毛球</option> <option value="matchType_pingPong">网球</option> <option value="matchType_pingPong">台球</option> </select> 
            <select name="matchType-dql" class="matchType-dql hide"> <option value="0">请选择(大球类)</option> <option value="matchType_pingPong">篮球</option> <option value="matchType_pingPong">足球</option> <option value="matchType_pingPong">排球</option> </select> 
            <select name="matchType-qpl" class="matchType-qpl hide"> <option value="0">请选择(棋牌类)</option> <option value="matchType_pingPong">麻将</option> <option value="matchType_pingPong">围棋</option> <option value="matchType_pingPong">象棋</option> <option value="matchType_pingPong">扑克牌</option> </select> 
            <select name="matchType-wyl" class="matchType-wyl hide"> <option value="0">请选择(文艺类)</option> <option value="matchType_pingPong">街舞</option> </select> 
            <!-- /选择比赛类型 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label> 
           <div class="controls form-inline"> 
            <s:include value="selectPCC.jsp" />
            <!-- 选择省市区三级下拉框 --> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5 add-on" type="text" id="inputCourtAddress" name="inputCourtAddress" placeholder="如：某地某桥某号某号楼" data-toggle="tooltip" data-placement="top" title="" data-original-title="限定30个字符以下" required="required" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTables" placeholder="如：乒乓球台12张 或 足球场1个" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTel">联系电话：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTel" placeholder="固定电话或移动电话 或 无" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtPrice">价格：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtPrice" placeholder="如：50元/小时/场 或 免费" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtOpenTime">开放时间：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtOpenTime" placeholder="如：每天9:00-18:00" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="uploadCourtImgs">场地图片：</label> 
           <div class="controls"> 
            <div class="fileupload-buttonbar"> 
             <span class="btn fileinput-button"> <i class="icon-plus"></i> <span>选择图片</span> <input type="file" name="files[]" multiple="" accept="image/png, image/gif, image/jpg, image/jpeg" /> </span> 
             <button type="submit" class="btn start"> <i class="icon-upload"></i> <span>上传</span> </button> 
             <button type="reset" class="btn cancel"> <i class="icon-ban-circle"></i> <span>取消</span> </button> 
             <button type="button" class="btn delete"> <i class="icon-trash"></i> <span>删除</span> </button> 
             <input type="checkbox" class="toggle" /> 
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
           <label class="control-label" for="inputCourtInfo">场地简介：</label> 
          </div> 
          <textarea id="inputCourtInfo" name="inputCourtInfo" required="required"></textarea> 
          <div class="control-group"> 
           <div class="controls"> 
            <input type="submit" class="btn btn-success " name="release" value="确定发布" /> 
            <input type="reset" class="btn" id="resetCourtForm" value="清空内容" /> 
            <button class="btn" name="preView">预览</button> 
           </div> 
          </div> 
         </fieldset> 
        </form> 
       </div> 
       <!-- /releaseCourt --> 
      </div> 
      <!-- /tab-content --> 
     </div> 
     <!-- /span8 offset2 --> 
    </div> 
    <!-- /span11 主要代码 --> 
   </div> 
   <!-- /row --> 
   <div class="ftpush"> 
   </div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" />
  <!-- 页首导航条 --> 
  <script src="js/jquery.ui.widget.js"></script> 
  <script src="js/tmpl.min.js"></script> 
  <script src="js/load-image.min.js"></script> 
  <script src="js/jquery.iframe-transport.js"></script> 
  <script src="js/jquery.fileupload.js"></script> 
  <script src="js/jquery.fileupload-process.js"></script> 
  <script src="js/jquery.fileupload-image.js"></script> 
  <script src="js/jquery.fileupload-ui.js"></script> 
  <script src="js/jquery.validate.min.js"></script> 
  <script src="tinymce/jquery.tinymce.min.js"></script> 
  <script src="tinymce/tinymce.min.js"></script> 
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
    /** tinymce **/
    tinymce.init({
      mode: 'textareas',
      language :'zh_CN',
      menubar: false,
      toolbar_items_size: 'small',
      plugins: [
                "advlist autolink autosave link image preview ",
                "searchreplace fullscreen ",
                "table"
        ],
        height:300,
    toolbar1: "newdocument bold italic underline | fontsizeselect | bullist numlist | alignleft aligncenter alignright alignjustify | link unlink image searchreplace table | undo redo preview fullscreen",
    image_advtab: true,
    // update validation status on change
    onchange_callback: function(editor) {
      tinyMCE.triggerSave();
      $("#" + editor.id).valid();
    }
    });
    /** 场地验证 **/
    var courtValidator = $("#releaseCourtForm").submit(function() {
      // update underlying textarea before submit validation
      tinyMCE.triggerSave();
    }).validate({
      submitHandler: function(){alert("发布场地成功");},
      ignore: "",
      rules:{
        inputCourtName:{
          minlength: 6,
          maxlength: 30
        },
        inputCourtAddress:{
          minlength: 6,
          maxlength: 30
        }
      },
      messages: {
      inputCourtName: {
        required: "请输入场地名称",
        minlength: "场地名称至少6个字符",
        maxlength: "场地名称至多30个字符"
      },
      inputCourtAddress: {
        required: "请输入场地地址",
        minlength: "场地地址至少6个字符",
        maxlength: "场地地址至多30个字符"
      },      
      selectMatchType: "请选择一种比赛类型",
      selectCourtType: "请选择一种场地类型",
      inputCourtInfo: "请输入场地简介"
    },
    errorPlacement: function(error, element){
        if (element.is("textarea")) {
          error.insertAfter($("label[for='inputCourtInfo']"));
        }
        else error.insertAfter(element);
    }
  });

    courtValidator.focusInvalid = function() {
      // put focus on tinymce on submit validation
      if( this.settings.focusInvalid ) {
        try {
          var toFocus = $(this.findLastActive() || this.errorList.length && this.errorList[0].element || []);
          if (toFocus.is("textarea")) {
            tinyMCE.get(toFocus.attr("id")).focus();
          } else {
            toFocus.filter(":visible").focus();
          }
        } catch(e) {
          // ignore IE throwing errors when focusing hidden elements
        }
      }
    }
    /** 清空场地表单 **/
    $("#resetCourtForm").click(function(){
      courtValidator.resetForm();
    });
    /****/
 
    /** 用户头像图片上传 **/
    $('#releaseCourtForm').fileupload({
            url: 'server/java/'
        });
        $('#releaseCourtForm').fileupload('option', {
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 5000000,
            maxNumberOfFiles : 5,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
        });
    //文件上传地址
    //var url = 'http://localhost:8080/myfileupload/upload';
    //初始化，主要是设置上传参数，以及事件处理方法(回调函数)
    /*$('#editUserForm').fileupload({
        autoUpload: false,//是否自动上传
        url: url,//上传地址
        maxFileSize: 5000000,
        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i,
        dataType: 'json',
        done: function (e, data) {//设置文件上传完毕事件的回调函数
            $.each(data.result.files, function (index, file) {//
                $('<p/>').text(file.name).appendTo('#files');
            });
        },
        progressall: function (e, data) {//设置上传进度事件的回调函数
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .bar').css(
                'width',
                progress + '%'
            );
        }
    });*/
  })


  </script>  
 </body>
</html>