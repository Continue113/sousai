/** 切换城市 **/
    $("#changeCityBtn").click(function(){
      $(this).parents("p").hide();
      $(this).parent().parent().find(".m-hdcity-hide").fadeIn();
    });

    $("#ensureCityBtn").click(function(){
      $(this).parent().hide();
      $(this).parent().parent().find("p").fadeIn();
    });