//地图（饼图）配置选项
var optionMap = {
    title: {
        text: '搜赛网地域统计(2014年)',
        textStyle: {
            fontSize: 14,
        },
    },
  tooltip: {
    trigger: 'item'
  },
  legend: {
    x: 'left',
    y: 50,
    text:{color: 'auto'},
    data: []
  },
  dataRange: {
    orient: 'horizontal',
    min: 0,
    max: 0,
    text: ['高', '低'], // 文本，默认为数值文本
    calculable: true,
  },
  toolbox: {
    show: true,
    orient: 'horizontal',
    x: 'right',
    feature: {
      restore: {
                show: true
            },
            saveAsImage: {
                show: true
            }
    }
  },
  series: [{
    name: '2014年',
    type: 'map',
    mapType: 'china',
    mapLocation: {
      x: 'left',
      y: 70,
      width: 550
    },
    selectedMode: 'multiple',
    itemStyle: {
      normal: {
        label: {
          show: true
        }
      },
      emphasis: {
        label: {
          show: true
        }
      }
    },
    data: [{
      name: '北京',
      value: 580
    }, {
      name: '天津',
      value: 600
    }, {
      name: '上海',
      value: 200
    }, {
      name: '重庆',
      value: 960
    }, {
      name: '河北',
      value: 420
    }, {
      name: '河南',
      value: 100
    }, {
      name: '云南',
      value: 30
    }, {
      name: '辽宁',
      value: 70
    }, {
      name: '黑龙江',
      value: 55
    }, {
      name: '湖南',
      value: 80
    }, {
      name: '安徽',
      value: 99
    }, {
      name: '山东',
      value: 87
    }, {
      name: '新疆',
      value: 12
    }, {
      name: '江苏',
      value: 887
    }, {
      name: '浙江',
      value: 240
    }, {
      name: '江西',
      value: 560
    }, {
      name: '湖北',
      value: 470
    }, {
      name: '广西',
      value: 98
    }, {
      name: '甘肃',
      value: 45
    }, {
      name: '山西',
      value: 4
    }, {
      name: '内蒙古',
      value: 9
    }, {
      name: '陕西',
      value: 76
    }, {
      name: '吉林',
      value: 53
    }, {
      name: '福建',
      value: 99
    }, {
      name: '贵州',
      value: 530
    }, {
      name: '广东',
      value: 87
    }, {
      name: '青海',
      value: 86
    }, {
      name: '西藏',
      value: 75
    }, {
      name: '四川',
      value: 87
    }, {
      name: '宁夏',
      value: 35
    }, {
      name: '海南',
      value: 78
    }, {
      name: '台湾',
      value: 55
    }, {
      name: '香港',
      value: 3
    }, {
      name: '澳门',
      value: 12
    }]
  }, {
    //name: '2014年',
    type: 'pie',
    tooltip: {
      trigger: 'item',
      formatter: "{d}%<br/>{b}"
    },
    center: [document.getElementById('mainMap').offsetWidth - 200, 300],
    radius: [10, 70],
    roseType: 'radius',
    data: []
  }],
}