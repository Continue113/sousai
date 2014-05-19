//折线图（柱形图）配置选项
var optionLine = {
    title: {
        text: '搜赛网数据统计(2014年)',
        textStyle: {
            fontSize: 14,
        },
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data: ['访问量', '注册用户', '比赛发布（搜赛网）', '比赛发布（自然人）', '场地发布（搜赛网）', '场地发布（自然人）', '场地评论'],
        y: 50,
    },
    toolbox: {
        show: true,
        feature: {
            magicType: {
                show: true,
                type: ['line', 'bar']
            },
            restore: {
                show: true
            },
            saveAsImage: {
                show: true
            }
        }
    },
    dataZoom: {
        show: true,
    },
    grid: {
        y: 100,
    },
    xAxis: [{
        type: 'category',
        data: ['累计', '1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
    }],
    yAxis: [{
        type: 'value',
        splitArea: {
            show: true
        }
    }],
    series: [{
        name: '访问量',
        type: 'bar',
        data: [35, 49, 70, 23, 26, 77, 156, 122, 326, 20, 64, 33, 20]
    }, {
        name: '注册用户',
        type: 'bar',
        data: [35, 49, 70, 232, 256, 764, 136, 162, 376, 207, 64, 33, 20]
    }, {
        name: '比赛发布（搜赛网）',
        type: 'bar',
        data: [35, 49, 70, 232, 256, 77, 356, 162, 326, 27, 64, 33, 20]
    }, {
        name: '比赛发布（自然人）',
        type: 'bar',
        data: [35, 49, 70, 232, 25, 76, 156, 622, 326, 20, 64, 33, 20]
    }, {
        name: '场地发布（搜赛网）',
        type: 'bar',
        data: [35, 49, 70, 32, 26, 767, 136, 16, 326, 240, 64, 33, 20]
    }, {
        name: '场地发布（自然人）',
        type: 'bar',
        data: [35, 49, 70, 232, 256, 77, 1356, 1622, 326, 50, 64, 33, 20]
    }, {
        name: '场地评论',
        type: 'bar',
        data: [35, 59, 90, 26, 287, 707, 156, 182, 487, 188, 60, 23, 20]
    }]
}