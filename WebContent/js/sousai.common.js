$(function() {

  //若存在session中的已选城市，则使用此城市，否则使用新浪IP获得所在城市地点 
  /*if( $(".sessionCity").length != 1 ){
	  //通过调用新浪IP地址库接口查询用户当前所在国家、省份、城市、运营商信息
	  $.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function() {
	    //   $(".country").html(remote_ip_info.country);
	    //  $(".province").html(remote_ip_info.province);
	    $("#city").html(remote_ip_info.city);
	    //   $(".isp").html(remote_ip_info.isp);
	  });
   }*/
	
 //搜索栏模糊搜索
	$("#searchbox-match button").click(function() {
		
		  var kv = "";
		  /*kv += $("#city").text();
		  if( $("#searchbox-match span.add-selectType span").text() != "所有分类"){
			  kv += $("#searchbox-match span.add-selectType span").text();
		  }*/
		  kv += $("#searchbox-match input[type='text']").val();
		  //alert(kv); 传到模糊搜索的页面，
    	  window.location.href = "matchSearch.jsp?content="+kv;
    });
	$("#searchbox-court button").click(function() {
		  var kv = $("#searchbox-court input[type='text']").val();
		  //alert(kv); 传到模糊搜索的页面
  	  window.location.href = "courtSearch.jsp?content="+kv;
	});
  //切换城市
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
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          alert("抱歉，获取市区出错了。ajax错误。");
        },
      }); //ajax 已得到城市
      //tgPrt.find(".selectSessionCity").show();
    } else {
      //当用户没有选择省份的时候，就将市区下拉列表框中原有的“请选择”字样删除。
      tgPrt.find(".selectSessionCity").empty().append("<option value=0 data-regionid=0>请先选择省</option>");
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
        		  console.log(rspdata);
        	      $("#city").text(cName).attr("data-sessionregion","{'pName':'"+pName+"','pId':'"+pId+"','cName':'"+cName+"','cId':'"+cId+"','code':'"+cCode+"'}");
        	  }else{
                  alert("抱歉，获取市区出错了。代码不为0。"+rspdata);console.log(rspdata);
        	  }
          },
          error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
            alert("抱歉，获取市区出错了。ajax错误。");
          },
        }); //ajax 已发送
    }
    tgPrt.hide();
    tgPrt.parent().find("p").fadeIn();
  });
  	
  //工具提示
  $(".add-on").tooltip();
  
  //搜索栏选择分类
  $(".add-selectType").click(function() {
	  //获取所有比赛类型
	  $.post("showMC", null, function(data) {
		    //alert("回调内容为:"+data);//id name 
		    var target = $("#allMatchType > .modal-body > .breadcrumb-fff");
		    target.empty();
		    $.each(data,function(index,item){
		      target.append('<span class="breadcrumb-title">'+item.name+'类:</span><ul class="breadcrumb typeid'+item.name+'"></ul><hr/>');
		      $.post("showMT",{"mcId":item.id},function(rspdata){
		    	  $.each(rspdata,function(index1,item1){
		    		  target.find(".typeid"+item.name).append('<li><a href="#" data-id="'+item1.id+'">'+item1.name+'</a>&nbsp;&nbsp;</li>');
		    	  });
		      });
		    });
		  });
	  
    $('#allMatchType').modal({
      backdrop: false,
    });
  });
  $("#allMatchType a").click(function() {
    var val = $(this).text();
    $(".add-selectType span").text(val);
    $('#allMatchType').modal("hide");
  });
  
  $("#collectLink").click(function() {
    var sURL = document.URL;
    var sTitle = $("title").text();
    AddFavorite(sURL, sTitle);
    $("#sousaiRemindDialog > .modal-body > #SRDcontent").text("由于浏览器限制，请使用Ctrl+D进行添加"); //设置弹出框的内容
    $("#sousaiRemindDialog > .modal-footer > button.btn-success").hide(); //设置弹出框确定按钮
    $("#sousaiRemindDialog").modal({
      backdrop: false,
    });
    return false; //设置a标签的href失效
  });

  //三级省市区联动 P:province C:city C:country
  //初始化省
  /*function initProvince() {
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
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          alert("抱歉，获取市区出错了。");
        },
      }); //ajax 已得到城市
      //tgPrt.find(".selectCity").show();
    } else {
      //当用户没有选择省份的时候，就将市区下拉列表框中原有的“请选择”字样删除。
      tgPrt.find(".selectCity").empty().append("<option value=0 data-regionid=0>请先选择省</option>");
    }
    //当用户进行一次省市县的操作后，再次选择省份的时候，后面的县区里面如果有值就要清空
    tgPrt.find(".selectCountry").empty().append("<option value=0 data-regionid=0>请先选择市</option>");
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
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          alert("抱歉，获取区县出错了。");
        },
      }); //ajax 已得到区县
      //tgPrt.find(".selectCountry").show();
    } else {
      //当用户没有选择市区的时候，就将县区下拉列表框中原有的“请选择”字样删除。
      tgPrt.find(".selectCountry").empty().append("<option value=0 data-regionid=0>请先选择市</option>");
    }
  });
  //立即调用初始化省 已经使用硬编码的方式替代初始化省
  //initProvince();

  //管理员界面搜索框级联下拉菜单
  $(".selectFilter").change(function() {
    var dataforFilter = $(this).parent().find(".selectFilter option:selected").attr("data-forFilter");
    console.log(dataforFilter);
    $(this).parent().find("input[type='text']").attr("data-path", dataforFilter); //设置输入框筛选路径
  });

  //重复点击下拉列表改变排序
  var sortflag=1;
  $(".sort li").click(function(){
  	var tempthis = $(this),
	orderbycol = tempthis.find("a").attr("data-orderbycol"), 
	isasc = tempthis.find("a").attr("data-isasc"),
	rs = $("select.selectRows option:selected").val(),
	crtPage = $("ul.pagination > li.active a").text(),
	sc = $(".text-filter-box button .current").attr("data-strcolumns"),
	kv = $(".text-filter-box input").val();
  	
	tempthis.parent().parent().find(".current").html(tempthis.find("a").html()).attr("data-orderbycol",orderbycol).attr("data-isasc",isasc);
  	
    if(sortflag==1){
          tempthis.find("i").removeClass("icon-arrow-up").addClass("icon-arrow-down");
          tempthis.find("a").attr("data-isasc",false);
          sortflag=0;
      }else{
          tempthis.find("i").removeClass("icon-arrow-down").addClass("icon-arrow-up").attr("data-isasc",true);
          tempthis.find("a").attr("data-isasc",true);
          sortflag=1;
      }
	alert(crtPage+" "+rs+" "+orderbycol+" "+isasc+" "+sc+" "+kv);
    e(crtPage,rs,orderbycol,isasc,sc,kv);
  });
  //点击搜索类别
  $(".text-filter-box li").click(function(){
  	var thisa = $(this).find("a"),thisahtml = thisa.html(), sc = thisa.attr("data-strcolumns");
	$(".text-filter-box .current").html(thisahtml).attr("data-strcolumns",sc);
  });
  //点击text-filter-box下的搜索按钮
  $("#textFilterBoxSearchButton").click(function(){
  	var orderbycol = $(".sort button .current").attr("data-orderbycol"), 
	isasc = $(".sort button .current").attr("data-isasc"),
	rs = $("select.selectRows option:selected").val(),
	crtPage = $("ul.pagination > li.active a").text(),
	sc = $(".text-filter-box button .current").attr("data-strcolumns"),
	kv = $(".text-filter-box input").val();
  	alert(crtPage+" "+rs+" "+orderbycol+" "+isasc+" "+sc+" "+kv);
  	e(crtPage,rs,orderbycol,isasc,sc,kv);
  });
  
  //点击切换当前页数显式的条数
	$("select.selectRows").change(function(){
		var rs = $("select.selectRows option:selected").val(),
		crtPage = 1, //每次点击改变条数都从第一页开始；parseInt($("ul.pagination > li.active").text()) || 1; //若当前页数为空则默认为第一页
	  	orderbycol = $(".sort button .current").attr("data-orderbycol"), 
		isasc = $(".sort button .current").attr("data-isasc"),
		sc = $(".text-filter-box button .current").attr("data-strcolumns"),
		kv = $(".text-filter-box input").val();
	  	alert(crtPage+" "+rs+" "+orderbycol+" "+isasc+" "+sc+" "+kv);
	  	e(crtPage,rs,orderbycol,isasc,sc,kv);
	});
  
});

/////////////////////////////////////////////////////////////
////////////////////////   FUNCTION   ///////////////////////
/////////////////////////////////////////////////////////////

//全局弹出对话框提示操作
function sousaiRemindDialog(text,time,successishide){
    function hide(){
    	$("#sousaiRemindDialog").modal("hide");
    }
    
    $("#sousaiRemindDialog > .modal-body > #SRDcontent").html(text); //设置弹出框的内容
    if(!successishide){
        $("#sousaiRemindDialog > .modal-footer > button.btn-success").hide(); //设置弹出框确定按钮
    }
    $("#sousaiRemindDialog").modal({
      backdrop: false,
    });
	if(!time){
		time = 3000; //若时间不存在则设置为3s后自动关闭
	}
	if( time == -1){ //若时间设置为-1则表示自动关闭对话框
		return;
	}else{
	    window.setTimeout(hide,time);
	}
}

//创建验证码，inputValidateId为验证码标签 ID
function createCode(inputValidateId) {
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

//userCenter页面顶端的统计比赛信息
function userCenterRemind(){
	var targetBreadcrumb = $(".userCenter-remind > .breadcrumb");
	$.ajax({
        type: "POST",
        url: "cntEachMatch",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        dataType: "json",
        success: function(rspdata) {
            console.log("已有比赛信息："+rspdata);
            targetBreadcrumb.empty().append("<li>比赛信息:</li>");
        	$.each( rspdata, function( key, value ) {
      		  console.log( key + ": " + value );
      		  targetBreadcrumb.append('<li><a href="userCenter-myMatch.jsp" title="去查看比赛">'+key+'<span>('+value+')</span></a></li>');
      		  });
        	//若没有比赛信息则提示 没有比赛信息 即，没有span
        	if( targetBreadcrumb.find("span").length == 0 ){
        		targetBreadcrumb.append('<li><a href="userCenter-releaseMatch.jsp" title="去发布比赛"> 无比赛信息，请发布比赛</a></li>');
        	}
        },
        error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
          sousaiRemindDialog("抱歉，获取比赛信息出错了。");
          console.log("userCenterRemind 抱歉，获取比赛信息出错了。");
        },
      }); //ajax 已得到发布的比赛信息
}

//添加本地收藏
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

//初始化比赛类型
function initMatchType(){
  //console.log("调用初始化比赛类型");
  $.post("showMC", null, function(data) {
    //alert("回调内容为:"+data);//id name 
    var type = $(".selectMatchType");
    for (var i = 0; i < data.length; i++) {
      type.append("<option value=\"" + data[i].id + "\">" + data[i].name + "</option>");
    }
  });
}
//初始化具体的比赛类型
function initParticularMatchType(matchTypeId){
	  $.ajax({
	    type: "POST",
	    url: "showMT",
	    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	    data: {
	      "mcId": matchTypeId,
	    },
	    dataType: "json",
	    success: function(rspdata) {
	      var sctParMatchType = $(".selectParticularMatchType");
	      sctParMatchType.empty().append("<option value=0>请选择比赛类型</option>");
	      for (var i = 0; i < rspdata.length; i++) {
	        sctParMatchType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</  option>");
	      }
	      sctParMatchType.append("<option value=1>其他</option>"); //每一个大类比赛类型的“其他”选项
	    },
	    error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	      sousaiRemindDialog("抱歉，获取比赛类型出错了。");
	    },
	  });
}
//根据具体比赛类型 获得场地类型 只有默认类型
function initCourtType(particularMatchTypeId){
    $.ajax({
      type: "POST",
      url: "showCT",
      contentType: "application/x-www-form-urlencoded; charset=UTF-8",
      data: {
        "matchId": particularMatchTypeId,
      },
      dataType: "json",
      success: function(rspdata) {
        var sctCourtType = $(".selectCourtType");
        sctCourtType.empty().append("<option value=0>请选择场地类型</option>");
        for (var i = 0; i < rspdata.length; i++) {
          sctCourtType.append("<option value=\"" + rspdata[i].id + "\" >" + rspdata[i].name + "</option>");
        }
      },
      error: function(jqXHR,textStatus,errorThrown){console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
        sousaiRemindDialog("抱歉，获取场地类型出错了。");
      },
    }); //ajax 已得到场地类型
}

//根据当前的没页的条数和总的条数计算总页数
function pages(count,crtPage,rs){
	  var pages = Math.ceil(count/rs) || 1, target=$("ul.pagination");
	  target.empty().show();
	  if(pages == 1){
		  target.append('<li class="active"><a href="javascript:void(0)">1</a></li>').hide();
		  return false;
	  }
	  target.append('<li class="prior"><a href="javascript:prior()"><span aria-hidden="true">«</span><span class="sr-only"></span></a></li><li class="active"><a href="javascript:void(0)">'+crtPage+'</a></li>');
	  if((pages > 1)&&(crtPage < pages)&&(crtPage+1 != pages)) {
	  	target.append('<li><a href="javascript:void(0)">...</a></li><li><a href="javascript:e('+pages+','+rs+')">'+pages+'</a></li>');
	  }else if(crtPage+1 == pages){
		target.append('<li><a href="javascript:e('+pages+','+rs+')">'+pages+'</a></li>');
	  }
	  if(crtPage != pages){
	  target.append('<li class="next"><a href="javascript:next()"><span aria-hidden="true">»</span><span class="sr-only"></span></a></li>');
	  }
}
	//点击页码
	//$("ul.pagination > li.prior").click(
	function prior(){
		var tgrget = $("ul.pagination"),
		rs = $("select.selectRows option:selected").val(),
		crtPage = tgrget.find("li.active a").text();
		//alert(rs +'  '+ crtPage);
		if(crtPage==1){
			alert('已经到最顶了');
			return false;
		}else if(crtPage==2){
			e(crtPage - 1,rs);
			tgrget.find("li.active a").text(crtPage - 1);
			tgrget.find("li.prior").addClass("disabled");
		}else{
			e(crtPage - 1,rs);
			tgrget.find("li.active a ").text(crtPage - 1);
			tgrget.find("li.prior").removeClass("disabled");
		}
	}
	//$("ul.pagination > li.next").click(
	function next(){
		var tgrget = $("ul.pagination").parent(),
		rs = $("select.selectRows option:selected").val(),
		crtPage = parseInt(tgrget.find("li.active a").text());
		//alert(rs +'  '+ crtPage);
		e(crtPage + 1,rs);
		tgrget.find("li.active a ").text(crtPage+1);
		tgrget.find("li.prior").removeClass("disabled");
	}
	
	//用户添加收藏比赛
	function markMatch(matchid){
		var userid = $("#userId").attr("data-userid")||-1;//设置userid是否存在，若不存在则设置为-1
		matchid = matchid || -1;//测试设置为16
			if(userid === -1){
				sousaiRemindDialog("收藏失败，请先登录！");
				return false;
			}else if(matchid == -1){
				alert("matchid为-1");
				return false;
			}else{
		$.ajax({
	        type: "POST",
	        url: "markMatch",
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        dataType: "json",
	        data:{"userMark.userId":userid,"userMark.matchId":matchid},
	        success: function(rspdata) {
	            console.log("收藏比赛成功："+rspdata);
	            if(rspdata=="success"){
	            	sousaiRemindDialog("收藏比赛成功");
	            }else{
	            	sousaiRemindDialog("收藏比赛失败，错误类型为："+rspdata+".请重试");
	            }
	        },
	        error: function(jqXHR,textStatus,errorThrown){
	          console.log(jqXHR+" /"+textStatus+" /"+errorThrown);
	          sousaiRemindDialog("抱歉，发送信息到服务器出错了。");
	        },
	      });
			}
	}
	

	function selectMatchType(tempthis){
		//tgPrt: targetparent 目标父元素
		var tgPrt = tempthis.parent(),
		thisvalue = tgPrt.find(".selectMatchType option:selected").attr("value");
		if (thisvalue == 0) {
			  //当点击默认选项时将具体比赛类型隐藏并设为默认状态 同时 将场地类型设置为默认状态
			  tgPrt.find(".selectParticularMatchType").empty().append("<option value=0>请选择比赛类型</option>");
	      //若存在场地类型 则将场地类型设置为默认状态 
	      if ($(".selectCourtType").length != 0) {
	      $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
	      }
			  //若已选择“其他”则改为默认选项
		    if( omtf == 1){
		      tgPrt.find(".omthide").slideUp();
		      omtf = 0;
		    }
	      //将otherMatchType中填入已选的具体类型设置为空 val为空，同时value为空
	      $("#otherMatchType").val("");
		}else {
	        //将otherMatchType中填入已选的具体类型设置为空 val为空，同时value为空
	        $("#otherMatchType").val("");
			initParticularMatchType(thisvalue);
		  //出现具体比赛类型下拉列表并且不再隐藏
		  //tgPrt.find(".selectParticularMatchType").show();
		}
	}

	//点击比赛类型 选择其他出现输入框 或者 当场地类型存在时获取相应场地类型
	var omtf = 0;//other match type flag ；0表示默认，1表示已经选过“其他”选项
	function selectParticularMatchType(tempthis){
	  //tgPrt: targetparent 目标父元素
	  var tgPrt = tempthis.parent(),
	  thisval = tgPrt.find(".selectParticularMatchType option:selected").text(),
	  thisvalue = tgPrt.find(".selectParticularMatchType option:selected").attr("value");
	  
	  if (thisvalue == 1 && omtf == 0){
	        //将otherMatchType中填入已选的具体类型设置为空
	        $("#otherMatchType").val("");
	    //当用户选择其他的时候，弹出隐藏的label和input
	    tgPrt.find(".omthide").slideDown();
	    omtf = 1;
	      //存在场地类型的下拉列表时 当用户选择具体比赛类型时，同时获取相应场地类型
	      if ($(".selectCourtType").length != 0) {
	        console.log("获得场地类型");
	        initCourtType(thisvalue);
	      }
	  }else if (thisvalue == 0) {
	      //存在场地类型的下拉列表时 当用户选择具体比赛类型为默认选项时的时候，就将场地类型下拉列表框中原有的“请选择”字样删除。
	      if ($(".selectCourtType").length != 0) {
	        $(".selectCourtType").empty().append("<option value=0>请先选择比赛类型</option>");
	      };
	    //清除inputMatchType的值
	    $("#inputMatchType").val("").attr("data-matchtypeid","");
	    //若已选择“其他”则改为默认选项
	    if( omtf == 1){
	      tgPrt.find(".omthide").slideUp();
	      omtf = 0;
	    }
	  }else {
	    //若已选择“其他”则改为默认选项
	    if( omtf == 1){
	      tgPrt.find(".omthide").slideUp();
	      omtf = 0;
	    }
	      //存在场地类型的下拉列表时 当用户选择具体比赛类型时，同时获取相应场地类型
	      if ($(".selectCourtType").length != 0) {
	        console.log("获得场地类型");
	        initCourtType(thisvalue);
	      }
	      //将otherMatchType中填入已选的具体类型
	      $("#otherMatchType").val(thisval);
	      //修改的新类型
		  $("#inputMatchType").val(thisval).attr("data-matchtypeid",thisvalue);
	  }
	}

	//设置场地类型
	function selectCourtType(tempthis){
		//tgPrt: targetparent 目标父元素
		var tgPrt = tempthis.parent();
		if (tgPrt.find(".selectCourtType option:selected").attr("value") != 0){
			$("#inputCrtCourtType").val(tgPrt.find(".selectCourtType option:selected").text()).attr("data-courttypeid",tgPrt.find(".selectCourtType option:selected").attr("value"));
		}else{
			$("#inputCrtCourtType").val("").attr("data-courttypeid","");
		}
	}

	//获得场地的省市区信息  
	function getRegion(){
		  //设置region的值，若只有省级 则 如 北京市-  若有市级 则 北京市-北京市- 若有区级则为 北京市-北京市-东城区 否则传""
		    var data={};
		    if( $(".form-inline > .selectCountry option:selected").attr("value") !=0 ){
		    	data.regionId = $(".form-inline > .selectCountry option:selected").attr("data-regionid");
		      	data.region = $(".form-inline > .selectProvince option:selected").text() + "-" + $(".form-inline > .selectCity option:selected").text() + "-" + $(".form-inline > .selectCountry option:selected").text();
		    }else if( $(".form-inline > .selectCity option:selected").attr("value") !=0 ){
		    	data.regionId = $(".form-inline > .selectCity option:selected").attr("data-regionid");
		      	data.region = $(".form-inline > .selectProvince option:selected").text() + "-" + $(".form-inline > .selectCity option:selected").text() + "-";
		    }else if( $(".form-inline > .selectProvince option:selected").attr("value") !=0 ){
		    	data.regionId = $(".form-inline > .selectProvince option:selected").attr("data-regionid");
		      	data.region = $(".form-inline > .selectProvince option:selected").text() + "-";
		    }else{
		    	data.regionId = null;
		  	  	data.region = null;
		    }
		    return data;
	}