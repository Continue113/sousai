<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>我的搜赛 &middot; 我发布的场地 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网用户中心-我的搜赛-我发布的场地" /> 
  <meta name="author" content="KING@CQU" />
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/sousai.common.css" rel="stylesheet" />
  <link href="css/sousai.userCenter.css" rel="stylesheet" />
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
    <style type="text/css">
/** 场地列表 **/
.courtBoxs{border: 1px solid #ccc;margin: 10px 0;float: left;padding-bottom: 20px;}
.courtBox{margin: 10px 0 0 10px;float: left;}
.courtBox .courtBox-img{float:left;border: 1px solid #ccc;}
.courtBox .courtBox-img img{width: 110px;height: 85px;}
.courtBox .courtBox-block{float: right;margin-left: 10px;}
.courtBox .courtBox-block p{margin-bottom: 0;font-size: 12px;}
.courtBox .courtBox-block .courtBox-title{background-color: #f5f5f5;border: 1px solid #ccc;border-bottom: 0;padding:2px 5px;}
.courtBox .courtBox-block .courtBox-title .btn-mini{line-height: 16px;}
.courtBox .courtBox-block ul{clear:both;padding: 0;margin-bottom: 0;background-color: #fff;border: 1px solid #ccc;-webkit-border-radius: 0;
  -moz-border-radius: 0;border-radius: 0;}
.courtBox .courtBox-block ul > li{padding-left:5px;vertical-align: middle;text-align: center;border-left: 1px solid #ccc;}
.courtBox .courtBox-block .courtBox-address{width:200px;border-left: 0;}
.courtBox .courtBox-block .courtBox-info{width:110px;}
.courtBox .courtBox-block .courtBox-record{width:80px;}
.courtBox .courtBox-block .courtBox-evaluation{width:200px;}
  </style>
</head>
<body class="userCenter">
<s:include value="navbar.jsp" /><!-- 页首导航条 -->
<div class="container"> 
 <div class="hdpush"></div> 
 <div class="row"> 
  <div class="span4"> 
   <img src="img/logo.png" />
   <span class="logotext">我的搜赛</span> 
  </div> 
  <s:include value="searchbox.jsp" /><!-- 搜索框 -->
 </div><!-- /row -->

    <div class="row"> 
    <div class="span11"> 
     <div class="navbar">
      <div class="navbar-inner"> 
       <ul class="nav"> 
        <li class="active"><a href="javascript:void(0)">我的搜赛网</a></li>
       </ul>
      </div>
     </div> 
     <div class="span2 mySousaiMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><a href="userCenter-myMatch.jsp"><i class="icon-chevron-right"></i> 我发布的比赛</a></li> 
       <li><a href="userCenter-myCollection.jsp"><i class="icon-chevron-right"></i> 我收藏的比赛</a></li> 
       <li><a href="userCenter-releaseMatch.jsp"><i class="icon-chevron-right"></i> 发布比赛</a></li> 
       <li><a href="userCenter-releaseCourt.jsp"><i class="icon-chevron-right"></i> 发布场地</a></li> 
       <li class="active"><a href="userCenter-myCourt.jsp"><i class="icon-chevron-right"></i> 我发布的场地</a></li> 
       <li><a href="userCenter-editUser.jsp"><i class="icon-chevron-right"></i> 编辑账户</a></li> 
      </ul> 
     </div> 
     <div class="span8"> 
      <div class="userCenter-remind">
       <ul class="breadcrumb"> 
        <li>场地信息:</li> 
        <li>暂无信息</li>
       </ul>
      </div> 
      <div class="tab-content">
       <div id="myCourt" class="tab-pane active">
        <div class="courts" id="courtsList">
         <!-- panel --> 
         <div class="panel-top"></div>
         <div class="courtBoxs">
          <div class="courtBox">
           <!-- img --> 
           <div class="courtBox-img">
            <img src="img/defaultImg.png" alt="" title="" />
           </div> 
           <!-- data --> 
           <div class="courtBox-block"> 
            <div class="courtBox-title">
             <a href="javascript:void(0)">1成都1873乒乓球馆</a>
             <a href="javascript:void(0)" class="btn btn-mini pull-right">查看详细</a><a href="javascript:void(0)" class="btn btn-mini pull-right">编辑场地</a>
            </div> 
            <ul class="breadcrumb"> 
             <li class="courtBox-address">一北京东城区北京大学体育乓一北京东城区北京大学体育乓</li> 
             <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">1</span>个</p> <p>12345678</p> </li> 
             <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">1</span>次</p></li> 
             <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p> <p><span>2013-10-10</span>:<span>XXXXXXXXXXXXXXXXXXXXXXXXXX</span></p></li> 
            </ul> 
           </div> 
          </div> 
         </div>
         <!-- /courtBoxs -->
        </div> 
        <!-- /courts -->
       </div>
       <!-- /myCourt --> 
      </div>
      <!-- /tab-content --> 
     </div>
     <!-- /span8 offset2 --> 
    </div>
    <!-- /span11 主要代码 --> 
   </div>
   <!-- /row --> 
   <div class="ftpush"></div> 
  </div>
  <!-- /container --> 
  <s:include value="footer.jsp" />
  <!-- 页尾信息 --> 
  <script src="js/handlebars-v2.0.0.js"></script>
  <script src="js/jquery.wordLimit.js"></script>
  <!-- handlebars template -->
  <script id="court-template" type="text/x-handlebars-template">
    {{#each this}}
                        
        <div class="courtBox"  data-info="{{data this}}> 
         <!-- img --> 
         <div class="courtBox-img"> 
          <img src="img/defaultImg.png" alt="" title="" /> 
         </div> 
         <!-- data --> 
         <div class="courtBox-block"> 
          <div class="courtBox-title"> 
           <a href="{{id}}">{{name}}</a> 
           <a href="{{id}}" class="btn btn-mini pull-right">查看详细</a> <a href="javascript:void(0)" class="btn btn-mini pull-right">编辑场地</a>
          </div> 
          <ul class="breadcrumb"> 
           <li class="courtBox-address">{{addr}}</li> 
           <li class="courtBox-info "> <p>室内球馆（收费）</p> <p>赛场<span class="courtBox-infoNumb">1</span>个</p> <p>12345678</p> </li> 
           <li class="courtBox-record ">曾举办比赛<p><span class="courtBox-recordNumb">1</span>次</p></li> 
           <li class="courtBox-evaluation "><p><span>2013-10-10</span>:<span>但行代价昂贵你空间啊好烦你撒谎吃饭了空间啊干那</span></p> <p><span>2013-10-10</span>:<span>撒了你刚才发K 524545呵呵发那个给UI HM</span></p> <p><span>2013-10-10</span>:<span>4256605JKHGCFYUSDA是都还没后 俺哥啊 俺哥爱戴啊</span></p></li> 
          </ul> 
         </div> 
        </div>
                            
    {{/each}}
  </script>
  <script>
    $(function () {
  	  //ajax接收所有的场地
  		$.post("getAllCourt", null, function(data) {
  	      console.log(data);//sousaiRemindDialog(data);
          var target = $(".courtBoxs"),template = Handlebars.compile($('#court-template').html());
          Handlebars.registerHelper("data",function(v){
            //将当前对象转化为字符串，保存在data-info中
            console.log(v);
            var v1 = JSON.stringify(v);
            //console.log("v1:"+v1);
            return v1;
          });
          target.empty(); //清空tbody
          target.html(template(data));
          //字数限制，溢出省略 
          $(".courtBox-address").wordLimit(20);
  	    $(".courtBox-evaluation p").wordLimit();
  	    });
      //鼠标hover matchbox
      $(".courtBoxs ").on('mouseenter','div.courtBox',function(){
      	      $('div.courtBox').removeClass("box-active");
      	      $(this).addClass("box-active");
      });
    });
</script>
</body></html>