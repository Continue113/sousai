<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head> 
  <title>管理员页面 &middot; 评论维护 &middot; 搜赛网</title> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
  <meta name="description" content="搜赛网-管理员页面-评论维护" /> 
  <meta name="author" content="KING@CQU" /> 
  <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <link href="css/bootstrap-responsive.css" rel="stylesheet" /> 
  <link href="css/jplist.min.css1" rel="stylesheet" /> 
  
  <link href="https://jplist.com/content/css/jplist-core.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-filter-toggle-bundle.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-pagination-bundle.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-history-bundle.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-textbox-control.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-jquery-ui-bundle.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-preloader-control.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-start-rating-control.min.css" rel="stylesheet" type="text/css" />
    <link href="https://jplist.com/content/css/jplist-views-control.min.css" rel="stylesheet" type="text/css" />
  
  
  <link href="css/sousai.common.css" rel="stylesheet" /> 
  <link href="css/sousai.background.css" rel="stylesheet" /> 
  <!--[if lte IE 8]>
  <link href="css/sousai.IE8.css" rel="stylesheet" /> 
  <![endif]-->
 </head> 
 <body class="background"> 
  <s:include value="background-head.jsp" /> 
  <!-- 管理员界面页头 --> 
  <div class="container"> 
   <div class="row"> 
    <div class="span4"> 
     <img src="img/logo.png" /> 
     <span class="logotext">管理员页面</span> 
    </div>
   </div> 
   <div class="row"> 
    <div class="span11"> 
     <!-- background-remind & backgroundMenu --> 
     <ul class="breadcrumb background-remind"> 
      <li>提醒:</li> 
      <li><a href="#">待处理的比赛信息<span>(5)</span></a></li> 
     </ul> 
     <div class="span2 backgroundMenu "> 
      <ul class="nav nav-stacked nav-side"> 
       <li><h5><a href="#"><i class="icon-minus"></i>系统发布:</a></h5></li> 
       <li><a href="background-collections.jsp"><i class="icon-chevron-down "></i>全部采集</a></li> 
       <li><a href="background-collectionsSetting.jsp"><i class="icon-chevron-down "></i>采集设置</a></li> 
       <li><h5><a href="#"><i class="icon-minus"></i>数据维护:</a></h5></li> 
       <li><a href="background-matchMaintenance.jsp"><i class="icon-chevron-down "></i>比赛维护</a></li> 
       <li><a href="background-courtMaintenance.jsp"><i class="icon-chevron-down "></i>场地维护</a></li> 
       <li><a href="background-userMaintenance.jsp"><i class="icon-chevron-down "></i>用户维护</a></li> 
       <li class="active"><a href="background-evaluationMaintenance.jsp"><i class="icon-chevron-down "></i>评论维护</a></li> 
       <li><h5><a href="#"><i class="icon-minus"></i>网站统计</a></h5></li> 
       <li><a href="background-regUserCount.jsp"><i class="icon-chevron-down "></i>注册用户</a></li> 
       <li><a href="background-releaseCount.jsp"><i class="icon-chevron-down "></i>发布统计</a></li> 
       <li><a href="background-visitCount.jsp"><i class="icon-chevron-down "></i>访问量</a></li> 
      </ul> 
     </div> 
     <!-- /background-remind & backgroundMenu --> 
     <div class="span9"> 
      <!--全部采集主体开始--> 
      <div id="evaluationMaintenance"> 
      
                  <div id="demo" class="box jplist">
					
	            <!-- ios button: show/hide panel -->
	            <div class="jplist-ios-button">
		            <i class="fa fa-sort"></i>
		            jPList Actions
	            </div>
						
	            <!-- panel -->
	            <div class="jplist-panel box panel-top">						

                    <!-- reset button -->
		            <button 
			            type="button" 
			            class="jplist-reset-btn"
			            data-control-type="reset" 
			            data-control-name="reset" 
			            data-control-action="reset">
			            Reset &nbsp;<i class="fa fa-share"></i>
		            </button>

		            <div
			            class="jplist-drop-down"
			            data-control-type="items-per-page-drop-down"
			            data-control-name="paging"
			            data-control-action="paging">

			            <ul>
				            <li><span data-number="3"> 3 per page </span></li>
				            <li><span data-number="5"> 5 per page </span></li>
				            <li><span data-number="10" data-default="true"> 10 per page </span></li>
				            <li><span data-number="all"> View All </span></li>
			            </ul>
		            </div>

		            <div
			            class="jplist-drop-down"
			            data-control-type="sort-drop-down"
			            data-control-name="sort"
			            data-control-action="sort">

			            <ul>
				            <li><span data-path="default">Sort by</span></li>
				            <li><span data-path=".title" data-order="asc" data-type="text">Title A-Z</span></li>
				            <li><span data-path=".title" data-order="desc" data-type="text">Title Z-A</span></li>
				            <li><span data-path=".desc" data-order="asc" data-type="text">Description A-Z</span></li>
				            <li><span data-path=".desc" data-order="desc" data-type="text">Description Z-A</span></li>
				            <li><span data-path=".like" data-order="asc" data-type="number">Likes asc</span></li>
				            <li><span data-path=".like" data-order="desc" data-type="number">Likes desc</span></li>
			            </ul>
		            </div>

		            <!-- filter by title -->
		            <div class="text-filter-box">
															
			            <!--[if lt IE 10]>
			            <div class="jplist-label">Filter by Title:</div>
			            <![endif]-->
								
			            <input 
				            data-path=".title" 
				            data-button="#title-search-button"
				            type="text" 
				            value="" 
				            placeholder="Filter by Title" 
				            data-control-type="textbox" 
				            data-control-name="title-filter" 
				            data-control-action="filter"
			            />
								
			            <button 
				            type="button" 
				            id="title-search-button">
				            <i class="fa fa-search"></i>
			            </button>
		            </div>
							
		            <!-- filter by description -->
		            <div class="text-filter-box">
																
			            <!--[if lt IE 10]>
			            <div class="jplist-label">Filter by Description:</div>
			            <![endif]-->
								
			            <input 
				            data-path=".desc" 
				            data-button="#desc-search-button"
				            type="text" 
				            value="" 
				            placeholder="Filter by Description" 
				            data-control-type="textbox" 
				            data-control-name="desc-filter" 
				            data-control-action="filter"
			            />	
								
			            <button 
				            type="button" 
				            id="desc-search-button">
				            <i class="fa fa-search"></i>
			            </button>
		            </div>

                    <!-- views -->
		            <div 
			            class="jplist-views" 
			            data-control-type="views" 
			            data-control-name="views" 
			            data-control-action="views"
			            data-default="jplist-list-view">
							   
			            <button type="button" class="jplist-view jplist-list-view" data-type="jplist-list-view"></button>
			            <button type="button" class="jplist-view jplist-grid-view" data-type="jplist-grid-view"></button>
		            </div>
							
		            <!-- preloader for data sources -->
		            <div 
			            class="jplist-hide-preloader jplist-preloader"
			            data-control-type="preloader" 
			            data-control-name="preloader" 
			            data-control-action="preloader">
			            <img src="/content/img/common/ajax-loader-line.gif" alt="Loading..." title="Loading..." />
		            </div>
                            
		            <!-- checkbox filters -->
		            <div
			            class="jplist-group"
			            data-control-type="checkbox-group-filter"
			            data-control-action="filter"
			            data-control-name="themes">

			            <input
				            data-path=".architecture"
				            id="architecture"
				            type="checkbox"
			            />

			            <label for="architecture">Architecture</label>

			            <input
				            data-path=".christmas"
				            id="christmas"
				            type="checkbox"
			            />

			            <label for="christmas">Christmas</label>

			            <input
				            data-path=".nature"
				            id="nature"
				            type="checkbox"
			            />

			            <label for="nature">Nature</label>

			            <input
				            data-path=".lifestyle"
				            id="lifestyle"
				            type="checkbox"
			            />

			            <label for="lifestyle">Lifestyle</label>
		            </div>

		            <div
			            class="jplist-group"
			            data-control-type="checkbox-group-filter"
			            data-control-action="filter"
			            data-control-name="colors">

			            <input
				            data-path=".red"
				            id="red-color"
				            type="checkbox"
			            />

			            <label for="red-color">Red</label>

			            <input
				            data-path=".green"
				            id="green-color"
				            type="checkbox"
			            />

			            <label for="green-color">Green</label>

			            <input
				            data-path=".blue"
				            id="blue-color"
				            type="checkbox"
			            />

			            <label for="blue-color">Blue</label>

			            <input
				            data-path=".brown"
				            id="brown-color"
				            type="checkbox"
			            />

			            <label for="brown-color">Brown</label>
                                
                    </div>
							
		            <!-- pagination results -->
		            <div 
			            class="jplist-label" 
			            data-type="Page {current} of {pages}" 
			            data-control-type="pagination-info" 
			            data-control-name="paging" 
			            data-control-action="paging">
		            </div>
								
		            <!-- pagination -->
		            <div 
			            class="jplist-pagination" 
			            data-control-type="pagination" 
			            data-control-name="paging" 
			            data-control-action="paging">
		            </div>	

                </div>
						 
	            <!-- ajax content here -->   
	            <div class="list box text-shadow"></div>
						
	            <!-- no result found -->
	            <div class="box jplist-no-results text-shadow align-center jplist-hidden">
		            <p>No results found</p>
	            </div>
						
	            <!-- ios button: show/hide panel -->
	            <div class="jplist-ios-button">
		            <i class="fa fa-sort"></i>
		            jPList Actions
	            </div>
						
	            <!-- panel -->
	            <div class="jplist-panel box panel-bottom">						
													
		            <div 
			            class="jplist-drop-down left" 
			            data-control-type="items-per-page-drop-down" 
			            data-control-name="paging" 
			            data-control-action="paging"
			            data-control-animate-to-top="true">
								
			            <ul>
				            <li><span data-number="3"> 3 per page </span></li>
				            <li><span data-number="5"> 5 per page </span></li>
				            <li><span data-number="10" data-default="true"> 10 per page </span></li>
				            <li><span data-number="all"> View All </span></li>
			            </ul>
		            </div>
		            <div 
			            class="jplist-drop-down left" 
			            data-control-type="sort-drop-down" 
			            data-control-name="sort" 
			            data-control-action="sort"
			            data-control-animate-to-top="true">
								
			            <ul>
				            <li><span data-path="default">Sort by</span></li>
				            <li><span data-path=".title" data-order="asc" data-type="text">Title A-Z</span></li>
				            <li><span data-path=".title" data-order="desc" data-type="text">Title Z-A</span></li>
				            <li><span data-path=".desc" data-order="asc" data-type="text">Description A-Z</span></li>
				            <li><span data-path=".desc" data-order="desc" data-type="text">Description Z-A</span></li>
				            <li><span data-path=".like" data-order="asc" data-type="number">Likes asc</span></li>
				            <li><span data-path=".like" data-order="desc" data-type="number">Likes desc</span></li>
			            </ul>
		            </div>
							
		            <!-- pagination results -->
		            <div 
			            class="jplist-label" 
			            data-type="{start} - {end} of {all}" 
			            data-control-type="pagination-info" 
			            data-control-name="paging" 
			            data-control-action="paging">
		            </div>
								
		            <!-- pagination -->
		            <div 
			            class="jplist-pagination" 
			            data-control-type="pagination" 
			            data-control-name="paging" 
			            data-control-action="paging"
			            data-control-animate-to-top="true">
		            </div>					
	            </div>
            </div>

      </div> 
      <!--全部采集主体结束--> 
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
  <script src="js/jquery.wordLimit.js"></script> 
  <script src="js/jplist.min.js1"></script>
  <script src="js/sousai.common.js"></script> 
  
  <!-- https://jplist.com/ -->
  <script src="https://jplist.com/content/js/jplist/jplist-core.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.counter-control.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.filter-dropdown-bundle.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.filter-toggle-bundle.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.history-bundle.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.jquery-ui-bundle.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.pagination-bundle.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.sort-bundle.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.textbox-control.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.views-control.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.start-rating-control.min.js"></script>
    <script src="https://jplist.com/content/js/jplist/jplist.preloader-control.min.js"></script>
    
  <!-- Handlebars Templates Library: http://handlebarsjs.com -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/2.0.0-alpha.4/handlebars.min.js"></script>
	<!-- handlebars template -->
<script id="jplist-template" type="text/x-handlebars-template">
	{{#each this}}
						
		<div class="list-item box">	
			<div class="img left">
				<img src="{{image}}" alt="" title=""/>
			</div>
								
			<div class="block right">
				<p class="title">{{title}}</p>
				<p class="desc">{{description}}</p>
				<p class="like">{{likes}} Likes</p>
				<p class="theme">{{courtName}}, {{userName}}</p>
			</div>
		</div>
							
	{{/each}}
</script>
	
  <script>
  $(function(){
	  /*
	  {{#each this}}
		<tr class="evaluation"> 
          <td class="evaluation-content form-inline" data-parentId="{{parentId}}"><input type="checkbox" id="{{id}}" /><label for="{{id}}">{{mesg}}</label></td> 
          <td class="court-name" data-courtId="{{courtId}}">{{courtName}}</td> 
          <td class="releaseTime">{{time}}</td> 
          <td class="releaseUser" data-userId="{{userId}}">{{userName}}</td> 
         </tr>
	{{/each}}
	  
	//ajax接受所有的评论
	$.post("getAllMesg", null, function(data) {
      alert(data);console.log(data);
      var target = $("tbody"),string; //tbody
      target.empty(); //清空tbody
      for (var i = 0; i < data.length; i++) {
    	  string = '<tr class="evaluation">'
          +'<td class="evaluation-content form-inline" data-parentId="'+ data[i].parentId +'"><input type="checkbox" id="'+ data[i].id +'" /><label for="'+ data[i].id +'">'+ data[i].mesg +'</label></td>' 
          +'<td class="court-name" data-courtId="'+ data[i].courtId +'">'+ data[i].courtName +'</td>'
          +'<td class="releaseTime">'+ data[i].time +'</td>'
          +'<td class="releaseUser" data-userId="'+ data[i].userId +'">'+ data[i].userName +'</td></tr>';
          
    	  target.append(string);
      }
    });*/
    //列表排序
    //var $list = $('#evaluationMaintenance .evaluationTbody'), template = Handlebars.compile( $('#jplist-template-temp').html() );
    var $list = $('#demo .list')
    , template = Handlebars.compile($('#jplist-template').html());

//init jplist with php + mysql data source, json and handlebars template
$('#demo').jplist({

    itemsBox: '.list'
    , itemPath: '.list-item'
    , panelPath: '.jplist-panel'

    //data source
    , dataSource: {

	type: 'server'
	, server: {

		//ajax settings
		ajax: {
			url: 'getAllMesg'//https://jplist.com/content/data-sources/php-mysql-demo/server-json.php'
			, dataType: 'json'
			, type: 'POST'
		}
	}

	//render function for json + templates like handlebars, xml + xslt etc.
	, render: function (dataItem, statuses) {
		console.log( eval("("+dataItem.responseText+")") );
		$list.html(template( eval("("+dataItem.responseText+")") ));
	}
}

});

/*
    $('#evaluationMaintenance').jplist({
          itemsBox: '.evaluationTbody',
          itemPath: '.evaluation',
          panelPath: '.jplist-panel',
          dataSource: {
              type: 'server',
              server: {
                 //jQuery ajax settings
                 ajax:{
                   url: 'getAllMesg',
                   dataType: 'json',
                   type: 'POST',
                 },
                 serverOkCallback: function(serverData, statuses, ajax, response){
                     //server callback in case of success 
                     console.log("*********serverData:");console.log(serverData);
                     $list.html(template(serverData));
                 },
                 serverErrorCallback: function(statuses){
                     //server callback in case of fail 
                     alert("error"+statuses);console.log(statuses);
                 }
              }, 
              render: function (dataItem, statuses) {
            	  console.log(dataItem.content);
            	  //console.log("***********responseText:");console.log( eval("("+dataItem.responseText+")") );
            	  //console.log("***********statuses:");console.log(statuses);
            	  //$list.html(template( eval("("+dataItem.responseText+")") ));
            	  
            	  //var context = {0: {courtId: 1,courtName: "c1",id: 1,mesg: "XXXXXXXX",time: "十月 31, 2014",userId: 2,userName: "123456"},1: {courtId: 1,courtName: "c1",id: 1,mesg: "XXXXXXXX",time: "十月 31, 2014",userId: 2,userName: "123456"}};
            	  dataItem.content = {"count":40,"data":[{"title":"Architecture","0":"Architecture","description":"Architecture is both the process and product of planning, designing and construction. Architectural works, in the material form of buildings, are often perceived as cultural symbols and as works of art. Historical civilizations are often identified with their surviving architectural achievements.","1":"Architecture is both the process and product of planning, designing and construction. Architectural works, in the material form of buildings, are often perceived as cultural symbols and as works of art. Historical civilizations are often identified with their surviving architectural achievements.","image":"\/content\/img\/thumbs\/arch-2.jpg","2":"\/content\/img\/thumbs\/arch-2.jpg","likes":"25","3":"25","keyword1":"Architecture","4":"Architecture","keyword2":"Brown","5":"Brown"},{"title":"Autumn","0":"Autumn","description":"Autumn or Fall is one of the four temperate seasons. Autumn marks the transition from summer into winter, in September (Northern Hemisphere) or March (Southern Hemisphere)\r\nwhen the arrival of night becomes noticeably earlier. The equinoxes might be expected to be in the middle of their respective seasons, but temperature lag (caused by the thermal latency of the ground and sea) means that seasons appear later than dates calculated from a purely astronomical perspective.","1":"Autumn or Fall is one of the four temperate seasons. Autumn marks the transition from summer into winter, in September (Northern Hemisphere) or March (Southern Hemisphere)\r\nwhen the arrival of night becomes noticeably earlier. The equinoxes might be expected to be in the middle of their respective seasons, but temperature lag (caused by the thermal latency of the ground and sea) means that seasons appear later than dates calculated from a purely astronomical perspective.","image":"\/content\/img\/thumbs\/autumn-1.jpg","2":"\/content\/img\/thumbs\/autumn-1.jpg","likes":"12","3":"12","keyword1":"Nature","4":"Nature","keyword2":"Red","5":"Red"},{"title":"Boats","0":"Boats","description":"A boat is a watercraft of any size designed to float or plane, to provide passage across water. Usually this water will be inland (lakes) or in protected coastal areas. However, boats such as the whaleboat were designed to be operated from a ship in an offshore environment. In naval terms, a boat is a vessel small enough to be carried aboard another vessel (a ship).","1":"A boat is a watercraft of any size designed to float or plane, to provide passage across water. Usually this water will be inland (lakes) or in protected coastal areas. However, boats such as the whaleboat were designed to be operated from a ship in an offshore environment. In naval terms, a boat is a vessel small enough to be carried aboard another vessel (a ship).","image":"\/content\/img\/thumbs\/boats-1.jpg","2":"\/content\/img\/thumbs\/boats-1.jpg","likes":"11","3":"11","keyword1":"Nature","4":"Nature","keyword2":"Brown","5":"Brown"},{"title":"Arch","0":"Arch","description":"An arch is a structure that spans a space and supports a load. Arches appeared as early as the 2nd millennium BC in Mesopotamian brick architecture and their systematic use started with the Ancient Romans who were the first to apply the technique to a wide range of structures.","1":"An arch is a structure that spans a space and supports a load. Arches appeared as early as the 2nd millennium BC in Mesopotamian brick architecture and their systematic use started with the Ancient Romans who were the first to apply the technique to a wide range of structures.","image":"\/content\/img\/thumbs\/arch-1.jpg","2":"\/content\/img\/thumbs\/arch-1.jpg","likes":"5","3":"5","keyword1":"Architecture","4":"Architecture","keyword2":"Red","5":"Red"},{"title":"Books","0":"Books","description":"A book is a set of written, printed, illustrated, or blank sheets, made of ink, paper, parchment, or other materials, usually fastened together to hinge at one side. A single\r\nsheet within a book is called a leaf, and each side of a leaf is called a page.\r\nA book produced in electronic format is known as an electronic book (e-book).","1":"A book is a set of written, printed, illustrated, or blank sheets, made of ink, paper, parchment, or other materials, usually fastened together to hinge at one side. A single\r\nsheet within a book is called a leaf, and each side of a leaf is called a page.\r\nA book produced in electronic format is known as an electronic book (e-book).","image":"\/content\/img\/thumbs\/book-1.jpg","2":"\/content\/img\/thumbs\/book-1.jpg","likes":"100","3":"100","keyword1":"Architecture","4":"Architecture","keyword2":"Red","5":"Red"},{"title":"Business","0":"Business","description":"A business (also known as enterprise or firm) is an organization engaged in the trade of goods, services, or both to consumers. Businesses are predominant in capitalist economies, where most of them are privately owned and administered to earn profit to increase the wealth of their owners. Businesses may also be not-for-profit or state-owned. A business owned by multiple individuals may be referred to as\r\na company, although that term also has a more precise meaning.","1":"A business (also known as enterprise or firm) is an organization engaged in the trade of goods, services, or both to consumers. Businesses are predominant in capitalist economies, where most of them are privately owned and administered to earn profit to increase the wealth of their owners. Businesses may also be not-for-profit or state-owned. A business owned by multiple individuals may be referred to as\r\na company, although that term also has a more precise meaning.","image":"\/content\/img\/thumbs\/business-1.jpg","2":"\/content\/img\/thumbs\/business-1.jpg","likes":"15","3":"15","keyword1":"Lifestyle","4":"Lifestyle","keyword2":"Blue","5":"Blue"},{"title":"Calendar","0":"Calendar","description":"A calendar is a system of organizing days for social, religious, commercial, or administrative purposes. This is done by giving names to periods of time, typically days, weeks, months, and years. The name given to each day is known as a date. Periods in a calendar (such as years and months) are usually, though not necessarily, synchronized with the cycle of the sun or the moon.","1":"A calendar is a system of organizing days for social, religious, commercial, or administrative purposes. This is done by giving names to periods of time, typically days, weeks, months, and years. The name given to each day is known as a date. Periods in a calendar (such as years and months) are usually, though not necessarily, synchronized with the cycle of the sun or the moon.","image":"\/content\/img\/thumbs\/calendar-1.jpg","2":"\/content\/img\/thumbs\/calendar-1.jpg","likes":"18","3":"18","keyword1":"Lifestyle","4":"Lifestyle","keyword2":"Green","5":"Green"},{"title":"Car","0":"Car","description":"An automobile, autocar, motor car or car is a wheeled motor vehicle used for transporting passengers, which also carries its own engine or motor. Most definitions of the term specify that automobiles are designed to run primarily on roads, to have seating for one to eight people, to typically have four wheels, and to be constructed principally for the transport of people rather than goods.","1":"An automobile, autocar, motor car or car is a wheeled motor vehicle used for transporting passengers, which also carries its own engine or motor. Most definitions of the term specify that automobiles are designed to run primarily on roads, to have seating for one to eight people, to typically have four wheels, and to be constructed principally for the transport of people rather than goods.","image":"\/content\/img\/thumbs\/car-1.jpg","2":"\/content\/img\/thumbs\/car-1.jpg","likes":"7","3":"7","keyword1":"Lifestyle","4":"Lifestyle","keyword2":"Red","5":"Red"},{"title":"Christmas","0":"Christmas","description":"Christmas or Christmas Day is an annual commemoration of the birth of Jesus Christ, celebrated generally on December as a religious and cultural holiday by billions of people around the world. A feast central to the Christian liturgical year, it\r\ncloses the Advent season and initiates the twelve days of Christmastide. Christmas is a civil holiday in many of the world's nations, is celebrated by an increasing number of non-Christians, and is an integral part of the Christmas and holiday season.","1":"Christmas or Christmas Day is an annual commemoration of the birth of Jesus Christ, celebrated generally on December as a religious and cultural holiday by billions of people around the world. A feast central to the Christian liturgical year, it\r\ncloses the Advent season and initiates the twelve days of Christmastide. Christmas is a civil holiday in many of the world's nations, is celebrated by an increasing number of non-Christians, and is an integral part of the Christmas and holiday season.","image":"\/content\/img\/thumbs\/christmas-1.jpg","2":"\/content\/img\/thumbs\/christmas-1.jpg","likes":"29","3":"29","keyword1":"Christmas","4":"Christmas","keyword2":"Green","5":"Green"},{"title":"The Christmas Toy","0":"The Christmas Toy","description":"The Christmas Toy is a 1986 made-for-TV movie by The Jim Henson Company. It originally aired on ABC on December 6, 1986, and was originally sponsored by Kraft Foods. Originally introduced by Kermit The Frog, it was released on VHS format\r\nin 1993. In 2008, HIT Entertainment (distributed by Lionsgate) released the special on DVD, but edited out Kermit's appearance due to legal issues.","1":"The Christmas Toy is a 1986 made-for-TV movie by The Jim Henson Company. It originally aired on ABC on December 6, 1986, and was originally sponsored by Kraft Foods. Originally introduced by Kermit The Frog, it was released on VHS format\r\nin 1993. In 2008, HIT Entertainment (distributed by Lionsgate) released the special on DVD, but edited out Kermit's appearance due to legal issues.","image":"\/content\/img\/thumbs\/christmas-2.jpg","2":"\/content\/img\/thumbs\/christmas-2.jpg","likes":"35","3":"35","keyword1":"Christmas","4":"Christmas","keyword2":"Red","5":"Red"},{"title":"Christmas Tree","0":"Christmas Tree","description":"A Christmas tree is a decorated tree, usually an evergreen conifer such as pine or fir, traditionally associated with the celebration of Christmas. An artificial Christmas tree is an object made to resemble such a tree, usually made from polyvinyl chloride.","1":"A Christmas tree is a decorated tree, usually an evergreen conifer such as pine or fir, traditionally associated with the celebration of Christmas. An artificial Christmas tree is an object made to resemble such a tree, usually made from polyvinyl chloride.","image":"\/content\/img\/thumbs\/christmas-3.jpg","2":"\/content\/img\/thumbs\/christmas-3.jpg","likes":"86","3":"86","keyword1":"Christmas","4":"Christmas","keyword2":"Red","5":"Red"},{"title":"City","0":"City","description":"A city is a relatively large and permanent settlement. Although there is no agreement on how a city is distinguished from a town within general English language meanings, many\r\ncities have a particular administrative, legal, or historical status based on local law.","1":"A city is a relatively large and permanent settlement. Although there is no agreement on how a city is distinguished from a town within general English language meanings, many\r\ncities have a particular administrative, legal, or historical status based on local law.","image":"\/content\/img\/thumbs\/city-1.jpg","2":"\/content\/img\/thumbs\/city-1.jpg","likes":"125","3":"125","keyword1":"Architecture","4":"Architecture","keyword2":"Green","5":"Green"},{"title":"Capital City","0":"Capital City","description":"A capital city (or just, capital) is the area of a country, province, region, or state considered to enjoy primary status; although there are exceptions, a capital is typically a city that physically encompasses the offices and meeting places of the seat of government and is usually fixed by law or by the constitution. An alternative term is political capital, but this phrase has a second meaning based on an alternate sense of the word capital. The capital is often, but not necessarily, the largest city of its constituent area.","1":"A capital city (or just, capital) is the area of a country, province, region, or state considered to enjoy primary status; although there are exceptions, a capital is typically a city that physically encompasses the offices and meeting places of the seat of government and is usually fixed by law or by the constitution. An alternative term is political capital, but this phrase has a second meaning based on an alternate sense of the word capital. The capital is often, but not necessarily, the largest city of its constituent area.","image":"\/content\/img\/thumbs\/city-2.jpg","2":"\/content\/img\/thumbs\/city-2.jpg","likes":"191","3":"191","keyword1":"Architecture","4":"Architecture","keyword2":"Red","5":"Red"},{"title":"Coffee","0":"Coffee","description":"Coffee is a brewed beverage with a bitter, acidic flavor prepared from the roasted seeds of the coffee plant. The beans are found in coffee cherries, which grow on trees cultivated in over 70 countries, primarily in equatorial Latin America, Southeast Asia, South Asia and Africa. Green (unroasted) coffee is one of the most traded agricultural commodities in the world. Coffee can have a stimulating effect\r\non humans due to its caffeine content. It is one of the most-consumed beverages\r\nin the world.","1":"Coffee is a brewed beverage with a bitter, acidic flavor prepared from the roasted seeds of the coffee plant. The beans are found in coffee cherries, which grow on trees cultivated in over 70 countries, primarily in equatorial Latin America, Southeast Asia, South Asia and Africa. Green (unroasted) coffee is one of the most traded agricultural commodities in the world. Coffee can have a stimulating effect\r\non humans due to its caffeine content. It is one of the most-consumed beverages\r\nin the world.","image":"\/content\/img\/thumbs\/coffee-grass.jpg","2":"\/content\/img\/thumbs\/coffee-grass.jpg","likes":"18","3":"18","keyword1":"Nature","4":"Nature","keyword2":"Blue","5":"Blue"},{"title":"Coins","0":"Coins","description":"A coin is a piece of hard material that is standardized in weight, is produced in large quantities in order to facilitate trade, and primarily can be used as a legal tender. Coins are usually metal or a metallic material and sometimes made of synthetic materials, usually in the shape of a disc, and most often issued by a government. Coins are used as a form of money in transactions of various kinds, from the everyday circulation coins to the storage of large numbers of bullion coins. In the\r\npresent day, coins and banknotes make up currency, the cash forms of all modern\r\nmoney systems.","1":"A coin is a piece of hard material that is standardized in weight, is produced in large quantities in order to facilitate trade, and primarily can be used as a legal tender. Coins are usually metal or a metallic material and sometimes made of synthetic materials, usually in the shape of a disc, and most often issued by a government. Coins are used as a form of money in transactions of various kinds, from the everyday circulation coins to the storage of large numbers of bullion coins. In the\r\npresent day, coins and banknotes make up currency, the cash forms of all modern\r\nmoney systems.","image":"\/content\/img\/thumbs\/coins.jpg","2":"\/content\/img\/thumbs\/coins.jpg","likes":"39","3":"39","keyword1":"Lifestyle","4":"Lifestyle","keyword2":"Green","5":"Green"},{"title":"Crayons","0":"Crayons","description":"A crayon is\r\na stick of colored wax, charcoal, chalk, or other materials used for writing, coloring, drawing, and other methods of illustration. A crayon made of oiled chalk is called an oil pastel; when made of pigment with a dry binder, it is simply a pastel; both are popular media for color artwork. A grease pencil or china marker (UK chinagraph pencil) is made of colored hardened grease and is useful for marking on hard, glossy surfaces such as porcelain or glass. Some fine arts companies such as Swiss Caran d'Ache manufacture water-soluble crayons, whose colors are easily mixed once applied to media.","1":"A crayon is\r\na stick of colored wax, charcoal, chalk, or other materials used for writing, coloring, drawing, and other methods of illustration. A crayon made of oiled chalk is called an oil pastel; when made of pigment with a dry binder, it is simply a pastel; both are popular media for color artwork. A grease pencil or china marker (UK chinagraph pencil) is made of colored hardened grease and is useful for marking on hard, glossy surfaces such as porcelain or glass. Some fine arts companies such as Swiss Caran d'Ache manufacture water-soluble crayons, whose colors are easily mixed once applied to media.","image":"\/content\/img\/thumbs\/crayons.jpg","2":"\/content\/img\/thumbs\/crayons.jpg","likes":"14","3":"14","keyword1":"Lifestyle","4":"Lifestyle","keyword2":"Red","5":"Red"},{"title":"Cupcakes","0":"Cupcakes","description":"A cupcake\r\n(also British English: fairy cake; Australian English: patty cake or cup cake) is a small cake designed to serve one person, frequently baked in a small, thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations, such as sprinkles, are common on cupcakes. Although their origin is unknown, recipes for cupcakes have been printed since at least the late 12th century.","1":"A cupcake\r\n(also British English: fairy cake; Australian English: patty cake or cup cake) is a small cake designed to serve one person, frequently baked in a small, thin paper or aluminum cup. As with larger cakes, frosting and other cake decorations, such as sprinkles, are common on cupcakes. Although their origin is unknown, recipes for cupcakes have been printed since at least the late 12th century.","image":"\/content\/img\/thumbs\/cupcakes.jpg","2":"\/content\/img\/thumbs\/cupcakes.jpg","likes":"128","3":"128","keyword1":"Lifestyle","4":"Lifestyle","keyword2":"Blue","5":"Blue"},{"title":"Nests","0":"Nests","description":"A nest is a\r\nplace of refuge to hold an animal's eggs or provide a place to live or raise offspring. They are usually made of some organic material such as twigs, grass, and leaves; or may simply be a depression in the ground, or a hole in a tree, rock or building. Human-made materials, such as string, plastic, cloth, hair or paper, may be used.","1":"A nest is a\r\nplace of refuge to hold an animal's eggs or provide a place to live or raise offspring. They are usually made of some organic material such as twigs, grass, and leaves; or may simply be a depression in the ground, or a hole in a tree, rock or building. Human-made materials, such as string, plastic, cloth, hair or paper, may be used.","image":"\/content\/img\/thumbs\/eggs-nest.jpg","2":"\/content\/img\/thumbs\/eggs-nest.jpg","likes":"66","3":"66","keyword1":"Nature","4":"Nature","keyword2":"Green","5":"Green"},{"title":"Flower","0":"Flower","description":"A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower).","1":"A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower).","image":"\/content\/img\/thumbs\/flower-1.jpg","2":"\/content\/img\/thumbs\/flower-1.jpg","likes":"85","3":"85","keyword1":"Nature","4":"Nature","keyword2":"Green","5":"Green"},{"title":"Flowering Plant","0":"Flowering Plant","description":"The flowering plants (angiosperms), also known as Angiospermae or Magnoliophyta, are the most diverse group of land plants. Angiosperms are seed-producing plants like the gymnosperms and can be distinguished from the gymnosperms by a series of synapomorphies (derived characteristics). These characteristics include flowers, endosperm within the seeds, and the production of fruits that contain the seeds.","1":"The flowering plants (angiosperms), also known as Angiospermae or Magnoliophyta, are the most diverse group of land plants. Angiosperms are seed-producing plants like the gymnosperms and can be distinguished from the gymnosperms by a series of synapomorphies (derived characteristics). These characteristics include flowers, endosperm within the seeds, and the production of fruits that contain the seeds.","image":"\/content\/img\/thumbs\/flower-3.jpg","2":"\/content\/img\/thumbs\/flower-3.jpg","likes":"90","3":"90","keyword1":"Nature","4":"Nature","keyword2":"Red","5":"Red"},{"title":"Fountains","0":"Fountains","description":"A fountain (from the Latin 'fons' or 'fontis', a source or spring) is a piece of architecture which pours water into a basin or jets it into the air either to supply drinking water or for decorative or dramatic effect. Fountains were originally\r\npurely functional, connected to springs or aqueducts and used to provide drinking water and water for bathing and washing to the residents of cities, towns and\r\nvillages. Until the late 19th century most fountains operated by gravity, and needed a source of water higher than the fountain, such as a reservoir or aqueduct, to make the water flow or jet into the air.","1":"A fountain (from the Latin 'fons' or 'fontis', a source or spring) is a piece of architecture which pours water into a basin or jets it into the air either to supply drinking water or for decorative or dramatic effect. Fountains were originally\r\npurely functional, connected to springs or aqueducts and used to provide drinking water and water for bathing and washing to the residents of cities, towns and\r\nvillages. Until the late 19th century most fountains operated by gravity, and needed a source of water higher than the fountain, such as a reservoir or aqueduct, to make the water flow or jet into the air.","image":"\/content\/img\/thumbs\/fountain.jpg","2":"\/content\/img\/thumbs\/fountain.jpg","likes":"40","3":"40","keyword1":"Architecture","4":"Architecture","keyword2":"Blue","5":"Blue"},{"title":"Leaves","0":"Leaves","description":"A leaf is an organ of a vascular plant, as defined in botanical terms, and in particular in plant morphology. Foliage is a mass noun that refers to leaves as a feature of plants. Typically a leaf is a thin, flattened organ borne above ground and specialized or photosynthesis, but many types of leaves are adapted in ways almost unrecognisable in those terms: some are not flat (for example many succulent leaves and conifers), some are not above ground (such as bulb scales), and some are without major photosynthetic function (consider for example cataphylls, spines, and\r\ncotyledons).","1":"A leaf is an organ of a vascular plant, as defined in botanical terms, and in particular in plant morphology. Foliage is a mass noun that refers to leaves as a feature of plants. Typically a leaf is a thin, flattened organ borne above ground and specialized or photosynthesis, but many types of leaves are adapted in ways almost unrecognisable in those terms: some are not flat (for example many succulent leaves and conifers), some are not above ground (such as bulb scales), and some are without major photosynthetic function (consider for example cataphylls, spines, and\r\ncotyledons).","image":"\/content\/img\/thumbs\/leaves.jpg","2":"\/content\/img\/thumbs\/leaves.jpg","likes":"42","3":"42","keyword1":"Nature","4":"Nature","keyword2":"Green","5":"Green"},{"title":"Landscapes","0":"Landscapes","description":"Landscape comprises the visible features of an area of land, including the physical elements of landforms such as (ice-capped) mountains, hills, water bodies such as\r\nrivers, lakes, ponds and the sea, living elements of land cover including indigenous vegetation, human elements including different forms of land use, buildings and structures, and transitory elements such as lighting and weather conditions.","1":"Landscape comprises the visible features of an area of land, including the physical elements of landforms such as (ice-capped) mountains, hills, water bodies such as\r\nrivers, lakes, ponds and the sea, living elements of land cover including indigenous vegetation, human elements including different forms of land use, buildings and structures, and transitory elements such as lighting and weather conditions.","image":"\/content\/img\/thumbs\/lichterman.jpg","2":"\/content\/img\/thumbs\/lichterman.jpg","likes":"14","3":"14","keyword1":"Architecture","4":"Architecture","keyword2":"Brown","5":"Brown"},{"title":"Rivers","0":"Rivers","description":"A river is a\r\nnatural watercourse, usually freshwater, flowing towards an ocean, a lake, a sea, or another river. In a few cases, a river simply flows into the ground or dries up completely before reaching another body of water. Small rivers may also be\r\ncalled by several other names, including stream, creek, brook, rivulet, tributary and rill. There are no official definitions for generic terms, such as river,\r\nas applied to geographic features, although in some countries or communities a stream may be defined by its size. Many names for small rivers are specific to geographic location; one example is 'burn' in Scotland and northeast England. Sometimes a river is said to be larger than a creek, but this is not always the case, because of vagueness in the language.","1":"A river is a\r\nnatural watercourse, usually freshwater, flowing towards an ocean, a lake, a sea, or another river. In a few cases, a river simply flows into the ground or dries up completely before reaching another body of water. Small rivers may also be\r\ncalled by several other names, including stream, creek, brook, rivulet, tributary and rill. There are no official definitions for generic terms, such as river,\r\nas applied to geographic features, although in some countries or communities a stream may be defined by its size. Many names for small rivers are specific to geographic location; one example is 'burn' in Scotland and northeast England. Sometimes a river is said to be larger than a creek, but this is not always the case, because of vagueness in the language.","image":"\/content\/img\/thumbs\/river-1.jpg","2":"\/content\/img\/thumbs\/river-1.jpg","likes":"88","3":"88","keyword1":"Nature","4":"Nature","keyword2":"Blue","5":"Blue"},{"title":"River Source","0":"River Source","description":"The source or headwaters of a river or stream is the furthest place in that river or stream from its estuary or confluence with another river, as measured along the course of the river.","1":"The source or headwaters of a river or stream is the furthest place in that river or stream from its estuary or confluence with another river, as measured along the course of the river.","image":"\/content\/img\/thumbs\/river-2.jpg","2":"\/content\/img\/thumbs\/river-2.jpg","likes":"62","3":"62","keyword1":"Nature","4":"Nature","keyword2":"Brown","5":"Brown"},{"title":"Sunset","0":"Sunset","description":"Sunset or sundown is the daily disappearance of the Sun below the horizon in the west as a result of Earth's rotation. The time of sunset is defined in astronomy as the moment when the trailing edge of the Sun's disk disappears below the horizon in the west. The ray path of light from the setting Sun is highly distorted near the horizon because of atmospheric refraction, making the sunset appear to occur when the Sun's disk is already about one diameter below the horizon. Sunset is distinct from dusk, which is the moment at which darkness falls, which occurs when the Sun is approximately eighteen degrees below the horizon. The period between sunset and dusk is called twilight.","1":"Sunset or sundown is the daily disappearance of the Sun below the horizon in the west as a result of Earth's rotation. The time of sunset is defined in astronomy as the moment when the trailing edge of the Sun's disk disappears below the horizon in the west. The ray path of light from the setting Sun is highly distorted near the horizon because of atmospheric refraction, making the sunset appear to occur when the Sun's disk is already about one diameter below the horizon. Sunset is distinct from dusk, which is the moment at which darkness falls, which occurs when the Sun is approximately eighteen degrees below the horizon. The period between sunset and dusk is called twilight.","image":"\/content\/img\/thumbs\/sunset-1.jpg","2":"\/content\/img\/thumbs\/sunset-1.jpg","likes":"25","3":"25","keyword1":"Nature","4":"Nature","keyword2":"Green","5":"Green"},{"title":"Tree","0":"Tree","description":"A tree is a perennial woody plant. It is most often defined as a woody plant that has many secondary branches supported clear of the ground on a single main stem or trunk with clear apical dominance. A minimum height specification at maturity is cited by some authors, varying from 3 m to 6 m; some authors set a minimum of 10 cm trunk diameter (30 cm girth). Woody plants that do not meet these definitions by having\r\nmultiple stems and\/or small size are usually called shrubs, although many trees\r\nsuch as Mallee do not meet such definitions. Compared with most other plants, trees are long-lived, some reaching several thousand years old and growing to up to 115 m (379 ft) high.","1":"A tree is a perennial woody plant. It is most often defined as a woody plant that has many secondary branches supported clear of the ground on a single main stem or trunk with clear apical dominance. A minimum height specification at maturity is cited by some authors, varying from 3 m to 6 m; some authors set a minimum of 10 cm trunk diameter (30 cm girth). Woody plants that do not meet these definitions by having\r\nmultiple stems and\/or small size are usually called shrubs, although many trees\r\nsuch as Mallee do not meet such definitions. Compared with most other plants, trees are long-lived, some reaching several thousand years old and growing to up to 115 m (379 ft) high.","image":"\/content\/img\/thumbs\/tree.jpg","2":"\/content\/img\/thumbs\/tree.jpg","likes":"57","3":"57","keyword1":"Nature","4":"Nature","keyword2":"Brown","5":"Brown"},{"title":"Winter","0":"Winter","description":"Winter is the coldest season of the year in temperate climates, between autumn and spring. At the winter solstice, the days are shortest and the nights are longest, with days lengthening as the season progresses after the solstice.","1":"Winter is the coldest season of the year in temperate climates, between autumn and spring. At the winter solstice, the days are shortest and the nights are longest, with days lengthening as the season progresses after the solstice.","image":"\/content\/img\/thumbs\/winter-1.jpg","2":"\/content\/img\/thumbs\/winter-1.jpg","likes":"79","3":"79","keyword1":"Nature","4":"Nature","keyword2":"Brown","5":"Brown"},{"title":"Seesaw","0":"Seesaw","description":"A see saw (also known as a teeter-totter or teeter board) is a long, narrow board pivoted in the middle so that, as one end goes up, the other goes down. Mechanically a seesaw is a lever and fulcrum. Seesaws also work as a simple example of a mechanical system with two equilibrium positions. One side is stable, while the other is\r\nunstable.","1":"A see saw (also known as a teeter-totter or teeter board) is a long, narrow board pivoted in the middle so that, as one end goes up, the other goes down. Mechanically a seesaw is a lever and fulcrum. Seesaws also work as a simple example of a mechanical system with two equilibrium positions. One side is stable, while the other is\r\nunstable.","image":"\/content\/img\/thumbs\/winter-2.jpg","2":"\/content\/img\/thumbs\/winter-2.jpg","likes":"32","3":"32","keyword1":"Nature","4":"Nature","keyword2":"Brown","5":"Brown"},{"title":"Winter Sun","0":"Winter Sun","description":"The Sun is the star at the center of the Solar System. It is almost perfectly spherical and consists of hot plasma interwoven with magnetic fields. It has a diameter\r\nof about 1,392,000 km, about 109 times that of Earth, and its mass accounts for about 99.86% of the total mass of the Solar System. Chemically, about three quarters of the Sun's mass consists of hydrogen, while the rest is mostly helium.\r\nThe remainder (1.69%, which nonetheless equals 5,628 times the mass of Earth) consists of heavier elements, including oxygen, carbon, neon and iron, among others.","1":"The Sun is the star at the center of the Solar System. It is almost perfectly spherical and consists of hot plasma interwoven with magnetic fields. It has a diameter\r\nof about 1,392,000 km, about 109 times that of Earth, and its mass accounts for about 99.86% of the total mass of the Solar System. Chemically, about three quarters of the Sun's mass consists of hydrogen, while the rest is mostly helium.\r\nThe remainder (1.69%, which nonetheless equals 5,628 times the mass of Earth) consists of heavier elements, including oxygen, carbon, neon and iron, among others.","image":"\/content\/img\/thumbs\/winter-sun.jpg","2":"\/content\/img\/thumbs\/winter-sun.jpg","likes":"81","3":"81","keyword1":"Nature","4":"Nature","keyword2":"Red","5":"Red"},{"title":"Wood","0":"Wood","description":"Wood is a hard, fibrous tissue found in many trees. It has been used for hundreds of thousands of years for both fuel and as a construction material. It is an organic material, a natural composite of cellulose fibers (which are strong in tension) embedded in a matrix of lignin which resists compression. Wood is produced as secondary xylem in the stems of trees (and other woody plants). In a living tree it performs a support function, enabling woody plants to grow large or to stand up for\r\nthemselves. It also mediates the transfer of water and nutrients to the leaves and other growing tissues. Wood may also refer to other plant materials with comparable properties, and to material engineered from wood, or wood chips or fiber.","1":"Wood is a hard, fibrous tissue found in many trees. It has been used for hundreds of thousands of years for both fuel and as a construction material. It is an organic material, a natural composite of cellulose fibers (which are strong in tension) embedded in a matrix of lignin which resists compression. Wood is produced as secondary xylem in the stems of trees (and other woody plants). In a living tree it performs a support function, enabling woody plants to grow large or to stand up for\r\nthemselves. It also mediates the transfer of water and nutrients to the leaves and other growing tissues. Wood may also refer to other plant materials with comparable properties, and to material engineered from wood, or wood chips or fiber.","image":"\/content\/img\/thumbs\/woodstump.jpg","2":"\/content\/img\/thumbs\/woodstump.jpg","likes":"25","3":"25","keyword1":"Nature","4":"Nature","keyword2":"Green","5":"Green"}]};
            	  console.log(dataItem);
            	  $list.html(template(dataItem.content));
			  }
            }
        });*/
    //管理员界面表格列字数限制，溢出省略
    $("td > label").wordLimit();
    $(".court-name").wordLimit();
    //重复点击下拉列表改变排序
    var sortflag=1;
    $("div[data-control-action='sort'] li").click(function(){
      if(sortflag==1){
            //执行方法;
            $(this).find("span").attr("data-order","desc").end().find("i").removeClass("icon-arrow-up").addClass("icon-arrow-down");
            sortflag=0;
        }else{
            //执行方法;
            $(this).find("span").attr("data-order","asc").end().find("i").removeClass("icon-arrow-down").addClass("icon-arrow-up");
            sortflag=1;
        }
    });
  })
  </script>  
 </body>
</html>