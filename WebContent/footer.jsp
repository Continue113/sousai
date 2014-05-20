<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%/*
*footer.jsp
*describe:footer用于搜赛网页尾版权信息，友情链接等
*author:king
*date:2015-5-20
*/%>
  <div class="footer"> 
   <div class="container"> 
    <!-- 一行一排 --> 
    <p>KING</p> 
   </div> 
  </div><!-- /footer -->

  <!-- 搜赛提示对话框-->
  <div id="sousaiRemindDialog" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="sousaiRemindDialogAll" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h5 id="sousaiRemindDialogAll">搜赛网提醒：</h5>
  </div>
  <div class="modal-body">
    <div class="SRD-content">搜赛网小提示，可以点击在线联系向我们提意见哟~</div>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    <button class="btn btn-success">确定</button>
  </div>
  </div>