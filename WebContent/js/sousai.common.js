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

/** 添加本地收藏 **/
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

/** 三级省市区联动 P:province C:city C:country**/
//初始化省
function initProvince(){
$.post("selRegion?region.level=0",null,function(data){
  var selectProvince = $(".selectProvince");
  selectProvince.empty().append("<option value=0>请选择</option>");
  for ( var i = 0; i < data.length; i++) {
  selectProvince.append("<option data-order=\"" + data[i].order + "\" >"+ data[i].name + "</option>");
  }
});
}
//当选中一个省份后，查询对应的市区名称
$(".selectProvince").change(function selCity(){
 //tgPrt: targetparent 目标父元素
 var tgPrt = $(this).parent();
 if(tgPrt.find(".selectProvince option:selected").attr("value") != "0"){
  tgPrt.find(".selectCity").show();
  $.ajax({
  type: "POST",
  url: "selRegion",
  data: {"region.level": 1,"region.name": tgPrt.find(".selectProvince option:selected").text(),"region.order": tgPrt.find(".selectProvince option:selected").attr("data-order")},
  success: function(rspdata){
  var selectProvince = $(".selectProvince");
  selectProvince.empty().append("<option value=0>请选择</option>");
  for ( var i = 0; i < rspdata.length; i++) {
  selectProvince.append("<option data-order=\"" + rspdata[i].order + "\" >"+ rspdata[i].name + "</option>");
  },
  dataType: "json",
  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
  error: function(){alert("出错了。");},
});
 }else{
  //当用户没有选择省份的时候，就将市区下拉列表框中原有的“请选择”字样删除。
  tgPrt.find(".selectCity").hide().empty();
 }
 //当用户进行一次省市县的操作后，再次选择省份的时候，后面的县区里面如果有值就要清空
 tgPrt.find(".selectCountry").hide().empty();
});
//当选中市区名称后，查询对应的县区名称
$(".selectCity").change(function selCountry(){
 //tgPrt: targetparent 目标父元素
 var tgPrt = $(this).parent();
 if(tgPrt.find(".selectCity option:selected").attr("value") != "0"){
  tgPrt.find(".selectCountry").show(); 
  $.ajax({
  type: "POST",
  url: "selRegion",
  data: {"region.level": 2,"region.name": tgPrt.find(".selectCity option:selected").text(),"region.order": tgPrt.find(".selectCity option:selected").attr("data-order")},
  success: function(rspdata){
  var selectProvince = $(".selectProvince");
  selectProvince.empty().append("<option value=0>请选择</option>");
  for ( var i = 0; i < rspdata.length; i++) {
  selectProvince.append("<option data-order=\"" + rspdata[i].order + "\" >"+ rspdata[i].name + "</option>");
  },
  dataType: "json",
  contentType: "application/x-www-form-urlencoded; charset=UTF-8",
  error: function(){alert("出错了。");},
});
 }else{
  //当用户没有选择市区的时候，就将县区下拉列表框中原有的“请选择”字样删除。
  tgPrt.find(".selectCountry").hide().empty();
 }
});
//立即调用初始化省
initProvince();
/****/

/** 高级搜索框级联下拉菜单 **/
$(".selectMatchType").change(function(){
              var datafor = $(this).parent().find(".selectMatchType option:selected").data('for');
              $(this).parent().find("select.hide").find("option[value=0]").attr("selected","selected");//设置所有隐藏下拉菜单选择默认项
              $(this).parent().find("select.hide").hide();//隐藏所有子下拉菜单
              $(this).parent().find("."+datafor).show();//显示选择的子下拉菜单
            });
/** 管理员界面搜索框级联下拉菜单 **/
$(".selectFilter").change(function(){
              var dataforFilter = $(this).parent().find(".selectFilter option:selected").attr("data-forFilter");
              alert(dataforFilter);
              $(this).parent().find("input[type='text']").attr("data-path",dataforFilter);//设置输入框筛选路径
            });

})