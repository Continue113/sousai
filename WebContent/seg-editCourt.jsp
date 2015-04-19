<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
      <div class="editCourt hide">
        <div class="btnbar row"> 
         <button type="button" class="btn passCourt ">发布场地</button> 
         <button type="button" class="btn saveCourt ">保存修改</button>
         <button type="button" class="btn deleteCourt ">删除场地</button>
         <button type="button" class="btn backList ">返回列表</button>
        </div>
        <div class="page-header row"> 
         <h4>场地基本信息</h4> 
        </div> 
        <form class="form-horizontal row" id="editCourtForm" name="editCourtForm"> 
        <fieldset> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">场地名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtName" name="court.name" placeholder="如：某某区\市\县XXXXXXX运动俱乐部/体育馆" required="required" > 
            </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectMatchType">比赛类型：</label> 
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputMatchType" disabled>
            <button class="btn" type="button" id="editMatchType">修改</button>
            </div>
            </div>
           <div class="controls hide matchTypeControls"> 
            <select class="selectMatchType" name="mcId"><option value=0>请选择比赛类型</option></select>
            <select class="selectParticularMatchType" name="court.matchType"><option value=0>请先选择比赛大类</option></select>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" name="otherMatchType" type="text" value="" placeholder="请填写比赛类型"></label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtType">场地类型：</label>
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputCrtCourtType" disabled>
            <button class="btn" type="button" id="editCourtType">修改</button>
            </div>
            </div>
           <div class="controls hide courtTypeControls"> 
            <!-- 选择场地类型 --> 
            <select class="selectCourtType" name="court.courtTypeId">
              <option value=0>请先选择比赛类型</option>
            </select> 
            <!-- /选择场地类型 --> 
            <input class="hide" id="inputCourtType" type="text" value="">
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label>
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputCourtRegion" disabled>
            <button class="btn" type="button" id="editCourtRegion">修改</button>
            </div>
            </div>
           <div class="controls form-inline hide courtRegionControls"> 
            <s:include value="seg-selectPCC.jsp"/>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtAddress" name="court.addr" placeholder="如：XXX街道/路XXX号（某某标志性建筑对面）" required="required" >
            </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTables" name="court.tableNum" placeholder="请填写可以同时进行比赛的场地数" >（选填）
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTel">联系电话：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTel" name="court.tel" placeholder="如：区号-固定电话/移动电话（010-75315471/13883475126)" >（选填）
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtPrice">价格：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtPrice" name="court.price" placeholder="如：场地使用收费情况（50元/小时 或 免费）" >（选填）
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtOpenTime">开放时间：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtOpenTime" name="court.workTime" placeholder="如：场地日常营业时间（星期一 至 星期五 9：00-22：00）" >（选填） 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="uploadCourtImgs">场地图片：</label> 
           <div class="controls">
            <div class="fileupload-buttonbar"> 
 			 <span id="filePicker" class="btn"><i class="icon-plus"></i>选择图片</span>
 			 <span id="startUpload" class="btn hide">开始上传</span>
             <span class="error">请上传小于 200KB 的 jpg、jpeg、png、gif 格式的图片。一个场地最多上传3张图片.</span>
            </div>
            <div id="uploader">
 			   <!--用来存放item-->
   			   	<ul id="fileList" class="files"></ul>
			</div>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtInfo">场地简介：</label> 
          <div class="controls"><span class="error">请填写场地基本情况，如场地新建时间、场地设施情况、场地优势等</span></div>
          </div> 
          <textarea id="inputCourtInfo" name="intro"></textarea>          
          <div class="control-group hide"> 
           <div class="controls">
            <button type="button" class="btn btn-success pull-right" id="rlsCourt">确定发布</button> 
            <button type="reset" class="btn pull-right" id="resetCourtForm">清空</button> 
           </div> 
          </div> 
          </fieldset>
        </form>
        </div>