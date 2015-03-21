<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
      <div class="editMatch hide">
        <div class="btnbar row"> 
         <button type="button" class="btn passMatch ">发布比赛</button> 
         <button type="button" class="btn saveMatch ">保存修改</button>
         <button type="button" class="btn deleteMatch ">删除比赛</button>
         <button type="button" class="btn backList ">返回列表</button>
        </div>
        <div class="page-header row"> 
         <h4>比赛基本信息</h4>
        </div>
        <form id="editMatchForm" class="form-horizontal row"> 
         <fieldset> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchTitle">比赛名称：</label> 
           <div class="controls"> 
            <input class="span5" type="text" id="inputMatchTitle" name="matchName" placeholder="如：2012年XXXXXXX杯乒乓球季度赛" required="required" > 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchType">比赛类型：</label> 
           <div class="controls">
            <div class="input-append">
            <input class="span5" type="text" id="inputMatchType"  disabled>
            <button class="btn" type="button" id="editMatchType">修改</button>
            </div>
           </div>
           <div class="controls  form-inline hide" id="matchTypeControls">
            <select class="selectMatchType" name="mcId"><option value=0>请选择比赛类型</option></select>
            <select class="selectParticularMatchType" name="matchType"><option value=0>请先选择比赛大类</option></select>
            <label class="omthide hide" class="control-label" for="otherMatchType">请输入类型：<input class="omthide hide" id="otherMatchType" type="text" value="" placeholder="请填写比赛类型" name="otherMatchType" required="required" ></label>
            </div>
          </div>
          <div class="control-group"> 
           <label class="control-label" for="matchTime">比赛时间：</label> 
           <div class="controls form-inline"> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimefrom" name="matchBeginTime" placeholder="请选择开始日期" required="required" class="date"> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="点击输入框可以选择开始日期"><i class="icon-calendar"></i></span> 
            </div> 
            <label for="to">—</label> 
            <div class="input-append"> 
             <input type="text" id="inputMatchTimeto" name="matchEndTime" placeholder="请选择结束日期" required="required" class="date"> 
             <span class="add-on" data-toggle="tooltip" data-placement="top" title="" data-original-title="一天以内结束的比赛，日期为同一天"><i class="icon-calendar"></i></span> 
            </div> 
           </div> 
           <div class="controls controls-error"></div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="matchRegion">比赛地点：</label> 
           <div class="controls">
           <div class="input-append">
            <input class="span5" type="text" id="inputMatchCourt" name="crtCourtName" placeholder="此项不能自由输入，请先搜索已有场地，后点击已有场地添加到比赛地点" data-iscourt="false" required="required" disabled>
            <button class="btn" type="button" id="editMatchCourt">修改</button>
            </div>
            </div>
          </div>
           <div class="control-group hide matchAdressControls"> 
           <div class="controls form-inline">
            <s:include value="seg-selectPCC.jsp"/>
            <!-- /选择省市区三级下拉框 --> 
            <a href="javascript:void(0)" class="btn btn-success pull-right" id="searchExistedCourt">搜索现有球场</a>
            </div>
            </div>
          <div class="control-group existCourtsBox hide matchAdressControls"> 
           <table class="table table-striped table-hover"> 
            <thead> 
             <tr> 
              <th>球场名称</th> 
              <th>详细地址</th> 
              <th>类型</th> 
              <th>球台数</th> 
              <th>比赛次数</th> 
              <th>详细</th> 
             </tr> 
            </thead> 
            <tbody></tbody> 
           </table>
           <div class="panel-bottom text-center">
       		<div id="ajaxState"><span class="hide noresult">无结果</span><span class="hide load"><img src="img/loading.gif" height="20px" width="20px"></img>数据加载中...</span></div>
       		<div class="btn-toolbar"><div class="btn-group"></div></div>
      	   </div>
            <div class="text-center"> 
             <button class="btn btn-link" type="button" id="newCourtBtn">没有我要的场地，我要添加新场地</button> 
            </div>
          </div> 
          <div class="control-group hide matchAdressControls"> 
           <div class="releaseCourtBox"> 
            <label class="checkbox"><input type="checkbox" id="newCourtCheckbox" >添加新场地&nbsp;&nbsp;(<span id="newCourtRegion"><span class="newCourtProvince">请选择省</span>-<span class="newCourtCity">请选择市</span>-<span class="newCourtCountry">请选择区</span></span>)</label> 
           </div> 
          </div> 
          <div class="control-group"> 
           <label class="control-label" for="inputMatchRules">比赛规程：</label> 
          </div> 
          <textarea id="inputMatchRules" name="matchRule" required="required"></textarea>
          <div class="control-group hide">
           <div class="controls">
            <button type="button" class="btn btn-success pull-right" id="rlsMatch">确定发布</button>
            <button type="reset" class="btn pull-right" id="resetMatchForm">清空</button>
           </div> 
          </div>
          </fieldset> 
        </form>
      </div>
      
  <script id="existCourts-template" type="text/x-handlebars-template">
    {{#each this}}

		    <tr class="tritem"  data-info="{{data this}}" data-courtid="{{id}}">
				<td>{{name}}</td>
				<td>{{addr}}</td>
				<td>{{courtTypeId}}</td>
				<td>{{tableNum}}</td>
				<td>{{matchCount}}</td>
				<td><a target="_blank" href="courtSearchDetail.jsp?id={{id}}">详细</a></td>
			</tr>

    {{/each}}
  </script>