$(function() {
  /** 点击LOGO跳转至首页 **/
	$("img[src='img/logo.png']").click(function(){
		window.location.href="index.jsp";
		});

	  //若存在session中的已选城市，则使用此城市，否则使用新浪IP获得所在城市地点 
	  if( $(".sessionCity").length != 1 ){
	  //通过调用新浪IP地址库接口查询用户当前所在国家、省份、城市、运营商信息
	  $.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function() {
	    //   $(".country").html(remote_ip_info.country);
	    //  $(".province").html(remote_ip_info.province);
	    $("#city").html(remote_ip_info.city);
	    //   $(".isp").html(remote_ip_info.isp);
	  });
	  }

  /** 切换城市 **/
  $("#changeCityBtn").click(function() {
    $(this).parents("p").hide();
    $(this).parent().parent().find(".hdcity-hide").fadeIn();
  });
  
  //navbar中 专用的查询函数 当选中一个省份后，查询对应的市区名称
  $(".selectSessionProvince").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent(),
    pCode = tgPrt.find(".selectSessionProvince option:selected").attr("value"),
    pName = tgPrt.find(".selectSessionProvince option:selected").text(),
    order = tgPrt.find(".selectSessionProvince option:selected").attr("data-order");
    
    if (pCode != 0 && pCode != 810000 && pCode != 820000 ) {
      $.ajax({
        type: "POST",
        url: "selRegion",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "region.level": 1,
          "region.name": pName,
          "region.code": pCode,
          "region.order": order
        },
        dataType: "json",
        success: function(rspdata) {
          var selectCity = tgPrt.find(".selectSessionCity");
          selectCity.empty().append("<option value=0 data-regionid=0>请选择市</option>");
          for (var i = 0; i < rspdata.length; i++) {
            selectCity.append("<option value=" + rspdata[i].code + " data-order=\"" + rspdata[i].order + "\" data-regionid=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
          }
        },
        error: function() {
          alert("抱歉，获取市区出错了。ajax错误。");
        },
      }); //ajax 已得到城市
      tgPrt.find(".selectSessionCity").show();
    } else {
      //当用户没有选择省份的时候，就将市区下拉列表框中原有的“请选择”字样删除。
      tgPrt.find(".selectSessionCity").hide().empty().append("<option value=0 data-regionid=0>请选择市</option>");
    }
  });

  $("#ensureCityBtn").click(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent(),
    pName = tgPrt.find(".selectSessionProvince option:selected").text(),
    pId = tgPrt.find(".selectSessionProvince option:selected").attr("data-regionid"),
    cName = tgPrt.find(".selectSessionCity option:selected").text(),
    cId = tgPrt.find(".selectSessionCity option:selected").attr("data-regionid"),
    cCode = tgPrt.find(".selectSessionCity option:selected").attr("value"),
    order = tgPrt.find(".selectSessionCity option:selected").attr("data-order");
    if (cCode != 0) {
      //将选择的城市发送到服务器端
      $.ajax({
          type: "POST",
          url: "selRegion",
          contentType: "application/x-www-form-urlencoded; charset=UTF-8",
          data: {
            "region.level": 2,
            "region.name": cName,
            "region.code": cCode,
            "region.order": order,
            "regionBean.pName": pName,
            "regionBean.pId": pId,
            "regionBean.cName": cName,
            "regionBean.cId": cId,
            "regionBean.code": cCode,
            "isNavBar": true
          },
          dataType: "json",
          success: function(rspdata) {
        	  if(rspdata == 0){
                  alert("接受的数据为："+rspdata);console.log(rspdata);
        	      $("#city").text(cName).attr("data-sessionregion","{'pName':'"+pName+"','pId':'"+pId+"','cName':'"+cName+"','cId':'"+cId+"','code':'"+cCode+"'}");
        	  }else{
                  alert("抱歉，获取市区出错了。代码不为0。"+rspdata);console.log(rspdata);
        	  }
          },
          error: function() {
            alert("抱歉，获取市区出错了。ajax错误。");
          },
        }); //ajax 已发送
    }
    tgPrt.hide();
    tgPrt.parent().find("p").fadeIn();
  });
  	
  /** 工具提示 **/
  $(".add-on").tooltip();
  /** 搜索栏选择分类 **/
  $(".add-selectType").click(function() {
    $('#myModal').modal({
      backdrop: false,
    });
  });
  $("#myModal a").click(function() {
    var val = $(this).text();
    $(".add-selectType span").text(val);
    $('#myModal').modal("hide");
  });

  /** 添加本地收藏 **/
  function AddFavorite(sURL, sTitle) {
    try {
      window.external.addFavorite(sURL, sTitle);
    } catch (e) {
      try {
        window.sidebar.addPanel(sTitle, sURL, "");
      } catch (e) {
        //alert("由于浏览器限制，请使用Ctrl+D进行添加");
      }
    }
  }
  $("#collectLink").click(function() {
    var sURL = document.URL;
    var sTitle = $("title").text();
    AddFavorite(sURL, sTitle);
    $("#sousaiRemindDialog > .modal-body > .SRD-content").text("由于浏览器限制，请使用Ctrl+D进行添加"); //设置弹出框的内容
    $("#sousaiRemindDialog > .modal-footer > button.btn-success").hide(); //设置弹出框确定按钮
    $("#sousaiRemindDialog").modal({
      backdrop: false,
    });
    return false; //设置a标签的href失效
  });

  /** 三级省市区联动 P:province C:city C:country**/
  /*初始化省*
  function initProvince() {
    $.post("selRegion?region.level=0", null, function(data) {
      var selectProvince = $(".selectProvince");
      selectProvince.empty().append("<option value=0>请选择省</option>");
      for (var i = 0; i < data.length; i++) {
        selectProvince.append("<option value=" + data[i].code + " data-order=\"" + data[i].order + "\" data-regionid=\"" + data[i].id + "\" >" + data[i].name + "</option>");
      }
    });
  }
  initProvince();*/
  //当选中一个省份后，查询对应的市区名称
  $(".selectProvince").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent(),
    tgPrtVal = tgPrt.find(".selectProvince option:selected").attr("value");
    if (tgPrtVal != 0 && tgPrtVal != 810000 && tgPrtVal != 820000 ) {
      $.ajax({
        type: "POST",
        url: "selRegion",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "region.level": 1,
          "region.code": tgPrt.find(".selectProvince option:selected").attr("value"),
          "region.order": tgPrt.find(".selectProvince option:selected").attr("data-order")
        },
        dataType: "json",
        success: function(rspdata) {
          var selectCity = tgPrt.find(".selectCity");
          selectCity.empty().append("<option value=0 data-regionid=0>请选择市</option>");
          for (var i = 0; i < rspdata.length; i++) {
            selectCity.append("<option value=" + rspdata[i].code + " data-order=\"" + rspdata[i].order + "\" data-regionid=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
          }
        },
        error: function() {
          alert("抱歉，获取市区出错了。");
        },
      }); //ajax 已得到城市
      tgPrt.find(".selectCity").show();
    } else {
      //当用户没有选择省份的时候，就将市区下拉列表框中原有的“请选择”字样删除。
      tgPrt.find(".selectCity").hide().empty().append("<option value=0 data-regionid=0>请选择市</option>");
    }
    //当用户进行一次省市县的操作后，再次选择省份的时候，后面的县区里面如果有值就要清空
    tgPrt.find(".selectCountry").hide().empty().append("<option value=0 data-regionid=0>请选择区</option>");
  });

  //当选中市区名称后，查询对应的县区名称
  $(".selectCity").change(function() {
    //tgPrt: targetparent 目标父元素
    var tgPrt = $(this).parent();
    if (tgPrt.find(".selectCity option:selected").attr("value") != 0) {
      $.ajax({
        type: "POST",
        url: "selRegion",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        data: {
          "region.level": 2,
          "region.code": tgPrt.find(".selectCity option:selected").attr("value"),
          "region.order": tgPrt.find(".selectCity option:selected").attr("data-order")
        },
        dataType: "json",
        success: function(rspdata) {
          var selectCountry = tgPrt.find(".selectCountry");
          selectCountry.empty().append("<option value=0 data-regionid=0>请选择区</option>");
          for (var i = 0; i < rspdata.length; i++) {
            selectCountry.append("<option value=" + rspdata[i].code + " data-order=\"" + rspdata[i].order + "\" data-regionid=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
          }
        },
        error: function() {
          alert("抱歉，获取区县出错了。");
        },
      }); //ajax 已得到区县
      tgPrt.find(".selectCountry").show();
    } else {
      //当用户没有选择市区的时候，就将县区下拉列表框中原有的“请选择”字样删除。
      tgPrt.find(".selectCountry").hide().empty().append("<option value=0 data-regionid=0>请选择区</option>");
    }
  });
  //立即调用初始化省 已经使用硬编码的方式替代初始化省
  //initProvince();

  /** 高级搜索框级联下拉菜单 
  $(".selectMatchType").change(function() {
    var datafor = $(this).parent().find(".selectMatchType option:selected").data('for');
    $(this).parent().find("select.hide").find("option[value=0]").attr("selected", "selected"); //设置所有隐藏下拉菜单选择默认项
    $(this).parent().find("select.hide").hide(); //隐藏所有子下拉菜单
    $(this).parent().find("." + datafor).show(); //显示选择的子下拉菜单
  });**/
  /** 管理员界面搜索框级联下拉菜单 **/
  $(".selectFilter").change(function() {
    var dataforFilter = $(this).parent().find(".selectFilter option:selected").attr("data-forFilter");
    console.log(dataforFilter);
    $(this).parent().find("input[type='text']").attr("data-path", dataforFilter); //设置输入框筛选路径
  });

  //jplist-panel 中选择省市区自动输入搜索框
  $(".jplist-panel > select.span2").change(function () {
    var dataforFilter = $(this).parent().find(".selectProvince option:selected");
    var inputFilter = $(this).parent().find(".text-filter-box > input:text");
    if(dataforFilter.attr("value") != 0){
      alert("!==0");
      inputFilter.get(0).value = dataforFilter.text();
      inputFilter.keyup();
    }else{
      inputFilter.get(0).value = "";
      inputFilter.keyup();
    }
  });
  

});

function createCode(inputValidateId) { //创建验证码，inputValidateId为验证码标签 ID
    var code = "";
    var codeLength = 4; //验证码的长度
    var checkCode = document.getElementById(inputValidateId);
    var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
    'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
    for (var i = 0; i < codeLength; i++) 
    {
        var charNum = Math.floor(Math.random() * 52);
        code += codeChars[charNum];
    }
    if (checkCode) 
    {
        checkCode.className = "code";
        checkCode.innerHTML = code;
    }
}

function userCenterRemind(){
	var targetBreadcrumb = $(".userCenter-remind > .breadcrumb");
	$.ajax({
        type: "POST",
        url: "cntEachMatch",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        /*data: {
          "region.level": 2,
          "region.code": tgPrt.find(".selectCity option:selected").attr("value"),
          "region.order": tgPrt.find(".selectCity option:selected").attr("data-order")
        },*/
        dataType: "json",
        success: function(rspdata) {
            alert(rspdata);
            console.log(rspdata);
            targetBreadcrumb.empty().append("<li>比赛信息:</li>");
        	$.each( rspdata, function( key, value ) {
        		  console.log( key + ": " + value );
        		  targetBreadcrumb.append('<li><a href="#">'+key+'<span>('+value+')</span></a></li>');
        		  });
        },
        error: function() {
          alert("抱歉，获取比赛信息出错了。");
          console.log("抱歉，获取比赛信息出错了。");
        },
      }); //ajax 已得到发布的比赛信息
}