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
          <legend>场地基本信息</legend> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtName">场地名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtName" name="court.name" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" required="required" /> 
            <!-- <label class="hide error">请输入场地名称</label> -->
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectMatchType">比赛类型：</label> 
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputMatchType" disabled/>
            <button class="btn" type="button" id="editMatchType">修改</button>
            </div>
            </div>
           <div class="controls hide matchTypeControls"> 
            <select class="selectMatchType" name="mcId">
              <option value=0>请选择比赛类型</option>
            </select>
            <select class="selectParticularMatchType hide" name="court.matchType"></select>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" name="otherMatchType" type="text" value="" placeholder="请填写比赛类型"/></label>
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtType">场地类型：</label>
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputCrtCourtType" disabled/>
            <button class="btn" type="button" id="editCourtType">修改</button>
            </div>
            </div>
           <div class="controls hide courtTypeControls"> 
            <!-- 选择场地类型 --> 
            <select class="selectCourtType" name="court.courtTypeId">
              <option value=0>请先选择比赛类型</option>
            </select> 
            <!-- /选择场地类型 --> 
            <input class="hide" id="inputCourtType" type="text" value=""/>
            <!-- <label class="hide error">请选择场地类型</label> -->
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="selectCourtPlace">场地区域：</label>
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputCourtRegion" disabled/>
            <button class="btn" type="button" id="editCourtRegion">修改</button>
            </div>
            </div>
           <div class="controls form-inline hide courtRegionControls"> 
            <s:include value="selectPCC.jsp" />
            <!-- /选择省市区三级下拉框 --> 
            <!-- <input class="hide" id="inputRegionId" type="text" name="court.regionId" value=""/>
            <input class="hide" id="inputRegion" type="text" name="court.region" value=""/> -->
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtAddress">详细地址：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtAddress" name="court.addr" placeholder="如：某地某桥某号某号楼" required="required" />
            <!-- <label class="hide error">请输入场地地址</label> -->
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTables">赛场数：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTables" name="court.tableNum" placeholder="请填写整数，最小为1，如：12或 1" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtTel">联系电话：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtTel" name="court.tel" placeholder="固定电话或移动电话 或 无" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtPrice">价格：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtPrice" name="court.price" placeholder="如：50元/小时/场 或 免费" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtOpenTime">开放时间：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputCourtOpenTime" name="court.workTime" placeholder="如：每天9:00-18:00" /> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="uploadCourtImgs">场地图片：</label> 
           <div class="controls"> 
           <!-- OLD pic upload -->
            <div class="fileupload-buttonbar"> 
             <span class="btn plus"><i class="icon-plus"></i><span>添加图片栏</span></span> 
             <span class="btn allCancel"> <i class="icon-ban-circle"></i> <span>全部取消</span> </span> 
             <span class="error">请上传小于 200KB 的 jpg、jpeg、png、gif 格式的图片。</span>
             <table class="table table-striped">
              <tbody class="files">
              <tr id="tr1">
                <td>
                  <span class="btn fileinput-button" onclick="selectPic(1)"><i class="icon-plus"></i><span>选择图片</span></span>
                  <input class="hide fileImage" id="fileImage1" type="file" name="images" accept="image/png, image/gif, image/jpg, image/jpeg" onchange="imgValid(this,1)"/>
                  <input class="hide fileImageNames" type="text" name="imgNames" value=""/>
                </td>
                <td><span class="preview" id="preview1"></span></td>
                <td><span class="name"></span></td>
                <td><span class="size"></span></td>
                <td><span class="btn cancel" onclick="deleteTr(1)"><i class="icon-ban-circle"></i>取消</span></td>
              </tr>
              </tbody>
             </table> 
            </div>
            <!-- /OLD pic upload -->
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputCourtInfo">场地简介：</label> 
          </div> 
          <textarea id="inputCourtInfo" name="intro"></textarea>          
          <div class="control-group hide"> 
           <div class="controls"> 
            <button type="button" class="btn btn-success pull-right" id="rlsCourt">确定发布</button> 
            <button type="reset" class="btn pull-right" id="resetCourtForm">重置</button> 
            <button type="button" class="btn pull-right" onclick="courtPreview()">预览</button> 
           </div> 
          </div> 
          </fieldset>
        </form>
        </div>