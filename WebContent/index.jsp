<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
 <head> 
  <title>搜赛网</title> 
  <meta name="description" content="搜赛网注册页面"> 
  <s:include value="seg-meta.jsp"/>
  <style type="text/css">
  /* 主页主体快捷图标 */
.scmn{margin-top: 30px;}
.scmn li a {
	float: left;
	height: 80px;
	width: 152px;
	border: 1px solid #ccc;
	margin: 10px;
	-webkit-box-shadow: #ccc 0px 0px 5px;
	-moz-box-shadow: #ccc 0px 0px 5px;
	box-shadow: #ccc 0px 0px 5px;
	behavior: url(/PIE.htc);
}
.scmn li a:hover {
	-webkit-box-shadow: #666 2px 2px 5px;
	-moz-box-shadow: #666 2px 2px 5px;
	box-shadow: #666 2px 2px 5px;
	behavior: url(/PIE.htc);
}
.scmn li img {
	position: relative;
	top: 10px;
	left: 10px;
	width: 45px;
	height: 41px;
}
.scmn li .subtitle {
	position: relative;
	top: 10px;
	margin-right: 10px;
}
.scmn li .subtitle .title{
	font-size: 24px;
	font-weight: bold;
}
.scmn li .icon {
	position: relative;
	height: 60px;
}
.scmn li .iconlabel {
	display: none;
	position: relative;
	width: 152px;
	background-color: #ccc;
}
  </style>
  </head> 
 <body class="index"> 
  <s:include value="seg-navbar.jsp"/>
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset1"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"></a> 
    </div> 
    <s:include value="seg-searchbox.jsp"/>
    <!-- 搜索框 --> 
   </div> 
   <div class="row container scmn"> 
    <!--scmn:shortcutmain mchnb:matchnumber dsc:描述--> 
    <div class="span8 offset2 breadcrumb-fff"><ul class="breadcrumb"></ul></div> 
   </div> 
   <div class="ftpush"></div> 
  </div> 
  <!-- /container --> 
  <s:include value="seg-footer.jsp"/>
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <!-- handlebars template -->
  <script id="matchIcon-template" type="text/x-handlebars-template">
    {{#each this}}
		
		<li class="matchIcon">
		<a class="blk" target="_blank" href="matchSearchAdv.jsp?matchType={{key}}">
	      		      <div class="icon">
	      	      {{!-- <img alt="{{key}}" src="img/{{UnicodeKey}}-grey.png" class="pull-left"> --}}
	      	        <div class="subtitle {{!-- pull-right --}} text-center"> 
	      	         <span class="title">{{key}}</span>
	      	         <p>比赛&nbsp;&nbsp;<span class="number">{{value}}</span>&nbsp;&nbsp;场</p> 
	      	        </div>
	      	       </div>
	      	       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
	    </a>
		</li>
                            
    {{/each}}
  </script>
  <script>
  //定义函数
  function getAllMatchIcon(){

		var target = $(".scmn ul.breadcrumb");
		$.ajax({
	        type: "POST",
	        url: "cntEachMatch",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        dataType: "json",
	        success: function(rspdata) {
	            console.log(rspdata);
	            var data=[];
	        	$.each( rspdata, function( key, value ) {
		      		  data.push({"key":key,"value":value});
		      		  });
	            var temp = {
	            	"data":data	
	            };
	            var template = Handlebars.compile($('#matchIcon-template').html());
	            /* Handlebars.registerHelper("UnicodeKey",function(){
	                return escape(this.key).toLocaleLowerCase().replace(/%u/gi, 'u');
	              }); */
			    target.empty().html(template(temp.data));
	        },
	        error: function(jqXHR,textStatus,errorThrown){
	        	console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	            sousaiRemindDialog("抱歉，获取比赛信息出错了。");
	        },
	      }); //ajax 已得到发布的比赛信息
  }
  
  $(function(){
	  //加载所有比赛数量
	 getAllMatchIcon();
	  
    //首页快捷图标 
    $(".scmn").on("mouseenter","li",function(event){
    	//console.log("mouseenter");//console.log(event);

        $(this).find(".subtitle span.sub").addClass("title").end().find("div.iconlabel").show();
        
        /* var imgurl = $(this).find("img").attr("src");
        if(imgurl !== "img/defaultIcon.png"){
          $(this).find("img").attr("src",imgurl.split("-")[0]+".png");
        }; */
        
    });
    $(".scmn").on("mouseleave","li",function(event){
    	//console.log("mouseleave");//console.log(event);
    	$(this).find(".subtitle span.sub").removeClass("title").end().find("div.iconlabel").hide();
        /* var imgurl = $(this).find("img").attr("src");
        if(imgurl !== "img/defaultIcon.png"){
          $(this).find("img").attr("src",imgurl.split(".")[0]+"-grey.png");
        }; */
    });
    
  });
  </script>  
 </body>
</html>