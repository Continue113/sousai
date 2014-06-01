<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
            <select class="selectMatchType"> 
            	<option value="0">请选择比赛类型</option> 
            	<option value="matchType-xql" data-for="matchType-xql">小球类</option> 
            	<option value="matchType-dql" data-for="matchType-dql">大球类</option> 
            	<option value="matchType-qpl" data-for="matchType-qpl">棋牌类</option> 
            	<option value="matchType-wyl" data-for="matchType-wyl">文艺类</option> 
            	<option id="matchType-qt">其他</option> 
            </select> 
            <select name="matchType-xql" class="matchType-xql hide"> 
            	<option value="0">请选择(小球类)</option> <option value="matchType_pingPong">乒乓球</option> 
            	<option value="matchType_pingPong">羽毛球</option> <option value="matchType_pingPong">网球</option> 
            	<option value="matchType_pingPong">台球</option> 
            </select> 
            <select name="matchType-dql" class="matchType-dql hide"> 
            	<option value="0">请选择(大球类)</option> 
            	<option value="matchType_pingPong">篮球</option> 
            	<option value="matchType_pingPong">足球</option> 
            	<option value="matchType_pingPong">排球</option> 
            </select> 
            <select name="matchType-qpl" class="matchType-qpl hide"> 
            	<option value="0">请选择(棋牌类)</option> 
            	<option value="matchType_pingPong">麻将</option> 
            	<option value="matchType_pingPong">围棋</option> 
            	<option value="matchType_pingPong">象棋</option> 
            	<option value="matchType_pingPong">扑克牌</option> 
            </select> 
            <select name="matchType-wyl" class="matchType-wyl hide"> 
            	<option value="0">请选择(文艺类)</option> 
            	<option value="matchType_pingPong">街舞</option> 
            </select> 