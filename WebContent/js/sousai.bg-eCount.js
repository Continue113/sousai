//管理员页面统计数据Echarts脚本文件
//定义全局变量
//管理员界面折线图、柱形图
var bgChartLine;
//管理员界面地图、饼图
var bgChartMap;
//配置echarts文件路径
require.config({
  paths: {
    echarts: 'js/echarts',
    'echarts/chart/bar': 'js/echarts-map',
    'echarts/chart/line': 'js/echarts-map',
    'echarts/chart/map': 'js/echarts-map',
    'echarts/chart/pie': 'js/echarts-map',
  }
});
//配置导入模块文件完成
require([
    'echarts',
    'echarts/chart/bar',
    'echarts/chart/line',
    'echarts/chart/map',
    'echarts/chart/pie',
  ],
  function(ec) {
    //折柱
    bgChartLine = ec.init(document.getElementById('mainLine'));
    bgChartLine.setOption(optionLine, true);
    //地图
    bgChartMap = ec.init(document.getElementById('mainMap'));
    bgChartMap.setOption(optionMap, true);
    yearSelector.onchange();//选择年
    var ecConfig = require('echarts/config');
    bgChartMap.on(ecConfig.EVENT.MAP_SELECTED, mapSelected);
  });

var totle = 0;
var firstTotle = 0;
//选择年
var yearSelector = document.getElementById('year');
yearSelector.onchange = function(e) {
  var curYear = yearSelector.selectedOptions[0].innerHTML;
  //折线图
  optionLine.title.text = '搜赛网数据统计 (' + curYear + '年)';
  //optionLine.series[0].data = dataPeople[curYear];//获得当年的数据
  bgChartLine.setOption(optionLine, true);

  //地图
  optionMap.title.text = '搜赛网地域统计 (' + curYear + '年)';
  bgChartMap.setOption(optionMap, true);
  //定义最大值
  var max = 1000;
  optionMap.dataRange.max = max;
  //计算总数
  var mapSeries = optionMap.series[0];
  for (var p = 0, len = mapSeries.data.length; p < len; p++) {
    var value = mapSeries.data[p].value;
    totle += value;
  }
  optionMap.legend.data[0] = "总共 " + totle;
  firstTotle = totle;
}

//选择地图
function mapSelected(param) {
  var selected = param.selected;
  var mapSeries = optionMap.series[0];
  var data = [];
  var legendData = [];
  var name;
  var value;
  var other = firstTotle;
  legendData.push("总共 " + firstTotle);
  for (var p = 0, len = mapSeries.data.length; p < len; p++) {
    name = mapSeries.data[p].name;
    value = mapSeries.data[p].value;
    mapSeries.data[p].selected = selected[name];
    if (selected[name]) {
      data.push({
        name: name + " " + value,
        value: value
      });
      legendData.push(name + " " + value);
      other -= value;
    }
  }
  legendData.push("其他 " + other);
  optionMap.legend.data = legendData;
  data.push({
        name: "其他 " + other,
        value: other
      });
  optionMap.series[1].data = data;
  bgChartMap.setOption(optionMap, true);
}
//配置区域大小发生改变时的自适应
var resizeTicket;
window.onload = function() {
  window.onresize = function() {
    clearTimeout(resizeTicket);
    resizeTicket = setTimeout(function() {
      bgChartLine.resize();
      bgChartMap.resize();
    }, 200);
  }
}