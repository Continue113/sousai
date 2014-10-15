<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
  <div class="footer"> 
   <div class="container"> 
    <!-- 一行一排 -->
    <p>KING</p> 
    <span><a href="login.jsp">login.jsp </a><a href="register.jsp">register.jsp </a></span>
    <span><a href="courtSearch.jsp">courtSearch.jsp </a><a href="courtSearchDetail.jsp">courtSearchDetail.jsp </a><a href="previewCourtSearchDetail.jsp">previewCourtSearchDetail.jsp </a></span>
    <span><a href="matchSearch.jsp">matchSearch.jsp </a><a href="matchSearchDetail.jsp">matchSearchDetail.jsp </a></span>
    <span><a href="userCenter-editUser.jsp">userCenter-editUser.jsp </a><a href="background-collections.jsp">background-collections.jsp </a></span>
    </div> 
  </div><!-- /footer -->

  <!-- 搜赛提示对话框-->
  <div id="sousaiRemindDialog" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="sousaiRemindDialogAll" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h5 id="sousaiRemindDialogAll">搜赛网提醒：</h5>
  </div>
  <div class="modal-body">
  <div id="SRDcontent"></div>
    <div class="SRDadd">搜赛网小提示，可以点击在线联系向我们提意见哟~</div>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    <button class="btn btn-success">确定</button>
  </div>
  </div>
  <!-- HTML5 elements ,IE9模式, for IE6-8 --> 
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/IE9.js"></script>
  <![endif]--> 
  <script src="js/jquery-1.11.0.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/sousai.common.js"></script> 