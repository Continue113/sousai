$(function(){
/** 切换城市 **/
    $("#changeCityBtn").click(function(){
      $(this).parents("p").hide();
      $(this).parent().parent().find(".hdcity-hide").fadeIn();
    });

    $("#ensureCityBtn").click(function(){
      $(this).parent().hide();
      $(this).parent().parent().find("p").fadeIn();
    });

/** 工具提示 **/
     $( ".add-on" ).tooltip();

//通过调用新浪IP地址库接口查询用户当前所在国家、省份、城市、运营商信息
$.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js',function(){
//   $(".country").html(remote_ip_info.country);
//  $(".province").html(remote_ip_info.province);
   $("#city").html(remote_ip_info.city);
//   $(".isp").html(remote_ip_info.isp);
   });

/** 搜索栏选择分类 **/
    $(".add-selectType").click(function(){
      $('#myModal').modal({
        backdrop:false,
      });
    });
    $("#myModal a").click(function(){
      var val = $(this).text()
      $(".add-selectType span").text(val);
      $('#myModal').modal("hide");
    });

/** 添加收藏 **/
function AddFavorite(sURL, sTitle)
{
    try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
        catch (e)
        {
            //alert("由于浏览器限制，请使用Ctrl+D进行添加");
        }
    }
}
$("#collectLink").click(function(){
  var sURL = document.URL
  var sTitle = $("title").text()
  AddFavorite(sURL, sTitle)
  $("#sousaiRemind > .modal-body").text("由于浏览器限制，请使用Ctrl+D进行添加");//设置弹出框的内容
  $("#sousaiRemind > .modal-footer > button.btn-success").hide();//设置弹出框确定按钮
  $("#sousaiRemind").modal({
        backdrop:false,
      });
  return false;//设置a标签的href失效
});



/** 高级搜索框级联下拉菜单 **/
$(".selectMatchType").change(function(){
              var datafor = $(this).parent().find(".selectMatchType option:selected").data('for');
              $(this).parent().find("select.hide").find("option[value=0]").attr("selected","selected");//设置所有隐藏下拉菜单选择默认项
              $(this).parent().find("select.hide").hide();//隐藏所有子下拉菜单
              $(this).parent().find("."+datafor).show();//显示选择的子下拉菜单
            });



 })
 /** 三级省市区联动 P:province C:city C:country**/
//定义变量
  var selectProvince = $(".selectProvince");
  var selectCity = $(".selectCity");
  var selectCountry = $(".selectCountry");
 // var dataRL = "region.level";
function initPCC(){
	alert("XXX");
  $.post("selRegion",null,callbackProvince);
}
//省份
 function callbackProvince(data) {
  var data = eval("(" + data + ")");
  selectProvince.empty();
  selectProvince.append("<option value=0>请选择</option>");
  for ( var i = 0; i < data.length; i++) {
   selectProvince.append("<option value=" + data[i].cityId + ">"+ data[i].province + "</option>");
  }
 }
  //市区
 function callbackCity(data) {
  var data = eval("(" + data + ")");
  selectCity.empty();
  selectCity.append("<option value=0>请选择</option>");
  for ( var i = 0; i < data.length; i++) {
   selectCity.append("<option value=" + data[i].countryId + ">"+ data[i].city + "</option>");
  }
 }
  //县区
 function callbackCountry(data) {
  var data = eval("(" + data + ")");
  selectCountry.empty();
  selectCountry.append("<option value=0>请选择</option>");
  for ( var i = 0; i < data.length; i++) {
   selectCountry.append("<option value=" + data[i].countryId + ">"+ data[i].country + "</option>");
  }
 }
 //当选中一个省份后，查询对应的市区名称
 selectProvince.change(function selCity(){
  if(selectProvince.val() != "0"){
    selectCity.show();
   $.post("menuAction_init2.action?cityId="+selectProvince.val()+"",null,callbackCity);
  }else{
   //当用户没有选择省份的时候，就将市区下拉列表框中原有的“请选择”字样删除。
   $("#selectCity").empty();
  }
  //当用户进行一次省市县的操作后，再次选择省份的时候，后面的县区里面如果有值就要清空
  selectCountry.empty();
 });
 //当选中市区名称后，查询对应的县区名称
 selectCity.change(function selCountry(){
  if(selectCity.val() != "0"){
  selectCountry.show(); 
   $.post("menuAction_init3.action?countryId="+selectCity.val()+"",null,callbackCountry);
  }else{
   //当用户没有选择市区的时候，就将县区下拉列表框中原有的“请选择”字样删除。
   $("#selectCountry").empty();
  }
 });
/****/