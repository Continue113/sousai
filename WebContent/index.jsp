<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
 <head> 
  <title>搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网注册页面" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  
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
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
  </head> 
 <body class="index"> 
  <s:include value="navbar.jsp" />
  <!-- 页首导航条 --> 
  <div class="container"> 
   <div class="hdpush"></div> 
   <div class="row"> 
    <div class="span2 offset1"> 
     <a class="logoBack" href="index.jsp" title="回到首页"><img src="img/logo.png" alt="搜赛网"/></a> 
    </div> 
    <s:include value="searchbox.jsp" />
    <!-- 搜索框 --> 
   </div> 
   <div class="row container scmn"> 
    <!--scmn:shortcutmain mchnb:matchnumber dsc:描述--> 
    <div class="span8 offset2 breadcrumb-fff">
    <ul class="breadcrumb"> 
     
      <li class="matchIcon"><a class="blk" target="_blank" href="javascript:void(0)">
      <div class="icon">
      <img alt="乒乓球" src="img/pingpong-grey.png" class="pull-left"/> 
        <div class="subtitle pull-right text-center"> 
         <span class="title">乒乓球</span>
         <p>比赛&nbsp;&nbsp;<span class="number">32</span>&nbsp;&nbsp;场</p> 
        </div>
       </div>
       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
      </a></li>
        
      
	        <li class="matchIcon"><a class="blk" target="_blank" href="javascript:void(0)">
      <div class="icon">
      <img alt="乒乓球" src="img/pingpong-grey.png" class="pull-left"/> 
        <div class="subtitle pull-right text-center"> 
         <span class="title">开发中</span>
         <p>比赛&nbsp;&nbsp;<span class="number">32</span>&nbsp;&nbsp;场</p> 
        </div>
       </div>
       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
      </a></li>
	  
	  
	        <li class="matchIcon"><a class="blk" target="_blank" href="javascript:void(0)">
      <div class="icon">
      <img alt="乒乓球" src="img/pingpong-grey.png" class="pull-left"/> 
        <div class="subtitle pull-right text-center"> 
         <span class="title">开发中</span>
         <p>比赛&nbsp;&nbsp;<span class="number">32</span>&nbsp;&nbsp;场</p> 
        </div>
       </div>
       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
      </a></li>
	  
	  
	        <li class="matchIcon"><a class="blk" target="_blank" href="javascript:void(0)">
      <div class="icon">
      <img alt="乒乓球" src="img/pingpong-grey.png" class="pull-left"/> 
        <div class="subtitle pull-right text-center"> 
         <span class="title">开发中</span>
         <p>比赛&nbsp;&nbsp;<span class="number">32</span>&nbsp;&nbsp;场</p> 
        </div>
       </div>
       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
      </a></li>
	  
	  <li class="matchIcon"><a class="blk" target="_blank" href="javascript:void(0)">
      <div class="icon">
      <img alt="乒乓球" src="img/pingpong-grey.png" class="pull-left"/> 
        <div class="subtitle pull-right text-center"> 
         <span class="title">开发中</span>
         <p>比赛&nbsp;&nbsp;<span class="number">32</span>&nbsp;&nbsp;场</p> 
        </div>
       </div>
       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
      </a></li>
      
     </ul>
    </div> 
   </div> 
   <div class="ftpush"></div> 
  </div> 
  <!-- /container --> 
  <s:include value="footer.jsp" />
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <!-- handlebars template -->
  <script id="matchIcon-template" type="text/x-handlebars-template">
    {{#each this}}
		
		<li class="matchIcon"><a class="blk" target="_blank" href="javascript:void(0)">
	      		      <div class="icon">
	      	      <img alt="乒乓球" src="img/pingpong-grey.png" class="pull-left"/> 
	      	        <div class="subtitle pull-right text-center"> 
	      	         <span class="title">{{key}}</span>
	      	         <p>比赛&nbsp;&nbsp;<span class="number">{{value}}</span>&nbsp;&nbsp;场</p> 
	      	        </div>
	      	       </div>
	      	       <div class="iconlabel pull-left text-center">进入比赛列表页面 </div>
	      	      </a></li>
                            
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
	            console.log(temp);
	            var template = Handlebars.compile($('#matchIcon-template').html());
			    target.empty().html(template(temp.data));
	        },
	        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	          sousaiRemindDialog("抱歉，获取比赛信息出错了。");
	          console.log("userCenterRemind 抱歉，获取比赛信息出错了。");
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
        
        var imgurl = $(this).find("img").attr("src");
        if(imgurl !== "img/defaultIcon.png"){
          $(this).find("img").attr("src",imgurl.split("-")[0]+".png");
        };
        
    });
    $(".scmn").on("mouseleave","li",function(event){
    	//console.log("mouseleave");//console.log(event);
    	$(this).find(".subtitle span.sub").removeClass("title").end().find("div.iconlabel").hide();
        var imgurl = $(this).find("img").attr("src");
        if(imgurl !== "img/defaultIcon.png"){
          $(this).find("img").attr("src",imgurl.split(".")[0]+"-grey.png");
        };
    });
    
  });
  </script>  
 </body>
</html>