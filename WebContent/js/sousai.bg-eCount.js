//管理员页面统计数据Echarts脚本文件
//定义全局变量
//管理员界面折线图、柱形图
var bgChartLine;
require.config({
  paths: {
    echarts: 'js/echarts',
    'echarts/chart/bar': 'js/echarts-map',
    'echarts/chart/line': 'js/echarts-map',
  }
});
//配置导入模块文件完成
require(
	[
    'echarts',
    'echarts/chart/bar',
    'echarts/chart/line',
    ],
    function(ec) {
    //折柱
    bgChartLine = ec.init(document.getElementById('mainLine'));
    bgChartLine.setOption(optionLine, true);
	}
	);

//////////////////////////////////////////////////////////////////////////////////////
/////////////////	原本属于jsp页面
//////////////////////////////////////////////////////////////////////////////////////


function getChartData(year,month){
	  year = year || 2015;
	  month = month || 1;
	  $.ajax({
	        type: "POST",
	        url: "statistics",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        data: {year:year,month:month},
	        dataType: "json",
	        success: function(rspdata) {
	        	console.log(rspdata);
	        	var ajaxChartData={
	        			registrantsNum:[],  //注册用户
	        			sousaiMatchPublish :[],   //比赛发布(搜赛网)
	        			naturalMatchPublish :[],	//比赛发布(自然人)
	        			sousaiSitePublish :[],    //场地发布
	        			naturalSitePublish :[],	//场地发布
	        			comments :[], 				//评论数
	        			},statisticTable = $(".statisticsTable");
	        	//修改表格标题
	        	statisticTable.find("th:first").text('搜赛网数据统计 (' + year + '年)');
	        	//使用each遍历每个对象，取出相应对象的各个属性值	        	
		        $.each(rspdata,function(index,item){
	        		var index2 = index+2;
	        		statisticTable.find("tr:eq(2)").find("td:eq("+index2+")").text(item.registrantsNum).end().end()
		        		.find("tr:eq(3)").find("td:eq("+index2+")").text(item.sousaiMatchPublish).end().end()
		        		.find("tr:eq(4)").find("td:eq("+index2+")").text(item.naturalMatchPublish).end().end()
		        		.find("tr:eq(5)").find("td:eq("+index2+")").text(item.sousaiSitePublish).end().end()
		        		.find("tr:eq(6)").find("td:eq("+index2+")").text(item.naturalSitePublish).end().end()
		        		.find("tr:eq(7)").find("td:eq("+index2+")").text(item.comments);
	        	});
		        //计算表格中的累计总数，同时将为0的变为-
      		for(var i=2;i<$(".statisticsTable tr").length;i++){
          		var sum = 0;
  	        	$.each($(".statisticsTable tr:eq("+i+") > td:not(:eq(0),:eq(1))"),function(index,item){
  	        		var intItem = parseInt($(item).text());
  	        		sum+=intItem;    	        		
  	        	});
  	        	$(".statisticsTable tr:eq("+i+") > td:eq(1)").text(sum);
  	        	
  	        	$.each($(".statisticsTable tr:eq("+i+") > td:not(:eq(0))"),function(index,item){
  	        		var intItem = parseInt($(item).text());
  	        		//将数据push到ajaxChartData的对应数组中
  	        		switch(i){
  	        		case 2 :
  	        			ajaxChartData.registrantsNum.push(intItem);
  	        			break;
  	        		case 3 :
  	        			ajaxChartData.sousaiMatchPublish.push(intItem);
  	        			break;
  	        		case 4 :
  	        			ajaxChartData.naturalMatchPublish.push(intItem);
  	        			break;
  	        		case 5 :
  	        			ajaxChartData.sousaiSitePublish.push(intItem);
  	        			break;
  	        		case 6 :
  	        			ajaxChartData.naturalSitePublish.push(intItem);
  	        			break;
  	        		case 7 :
  	        			ajaxChartData.comments.push(intItem);
  	        			break;
  	        		default:
  	        			console.log("ajaxChartData填充完毕");
  	        		}
						//会将累计为0的也变为-
  	        		if($(item).text() == "0"){
  	        			$(item).text("-");
  	        		}    	        		
  	        	});
      		}
      		ajaxChartData.year = year;
      		ajaxChartData.month = month;
	        console.log(ajaxChartData);
	        GetAjaxChartData(ajaxChartData);      		
	  	    },
	      });
}

//点击按钮获取图表数据采用ajax方式
function GetAjaxChartData(ajaxChartData) {  //alert(ajaxChartData);
    //获得图表的options对象
    var options = bgChartLine.getOption();
    //图表显示提示信息
    bgChartLine.showLoading({
        text: "图表数据正在努力加载..."
    });
		  var series = [
		       {
			    name: '注册用户',
			    type: 'bar',
			    data: ajaxChartData.registrantsNum//[35, 49, 70, 232, 256, 764, 136, 162, 376, 207, 64, 33, 20]
			}, {
			    name: '比赛发布（搜赛网）',
			    type: 'bar',
			    data: ajaxChartData.sousaiMatchPublish//[35, 49, 70, 232, 256, 77, 356, 162, 326, 27, 64, 33, 20]
			}, {
			    name: '比赛发布（自然人）',
			    type: 'bar',
			    data: ajaxChartData.naturalMatchPublish//[35, 49, 70, 232, 25, 76, 156, 622, 326, 20, 64, 33, 20]
			}, {
			    name: '场地发布（搜赛网）',
			    type: 'bar',
			    data: ajaxChartData.sousaiSitePublish//[35, 49, 70, 32, 26, 767, 136, 16, 326, 240, 64, 33, 20]
			}, {
			    name: '场地发布（自然人）',
			    type: 'bar',
			    data: ajaxChartData.naturalSitePublish//[35, 49, 70, 232, 256, 77, 1356, 1622, 326, 50, 64, 33, 20]
			}, {
			    name: '场地评论',
			    type: 'bar',
			    data: ajaxChartData.comments//[35, 59, 90, 26, 287, 707, 156, 182, 487, 188, 60, 23, 20]
			}];
		  options.series = series;
		  options.title.text = '搜赛网数据统计 (' + ajaxChartData.year + '年)';		  
		  bgChartLine.hideLoading();
		  bgChartLine.setOption(options);
		  console.log("bgChartLine.setOption(options);");
}
