package com.baidu.ueditor;

import java.util.Map;

import org.sousai.service.*;
import org.sousai.service.impl.UserManagerImpl;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;

import javax.servlet.http.HttpServletRequest;

import com.baidu.ueditor.define.ActionMap;
import com.baidu.ueditor.define.AppInfo;
import com.baidu.ueditor.define.BaseState;
import com.baidu.ueditor.define.State;
import com.baidu.ueditor.hunter.FileManager;
import com.baidu.ueditor.hunter.ImageHunter;
import com.baidu.ueditor.upload.Uploader;

public class ActionEnter extends UserBaseAction{
	
	private static final long serialVersionUID = -4198638608981671272L;

	private HttpServletRequest request = null;
	
	private String rootPath = null;
	private String contextPath = null;
	
	private String actionType = null;
	
	private ConfigManager configManager = null;

	public ActionEnter ( HttpServletRequest request, String rootPath ) {
		System.out.println("Construct ActionEnter");
		this.request = request;
		this.rootPath = rootPath;
		this.actionType = request.getParameter( "action" );
		this.contextPath = request.getContextPath();
		this.configManager = ConfigManager.getInstance( this.rootPath, this.contextPath, request.getRequestURI() );
		
	}
	
	public String exec () {
		
		String callbackName = this.request.getParameter("callback");
		
		if ( callbackName != null ) {

			if ( !validCallbackName( callbackName ) ) {
				return new BaseState( false, AppInfo.ILLEGAL ).toJSONString();
			}
			
			return callbackName+"("+this.invoke()+");";
			
		} else {
			return this.invoke();
		}

	}
	
	public String invoke() {
		System.out.println("invoke ActionEnter");
		if ( actionType == null || !ActionMap.mapping.containsKey( actionType ) ) {
			return new BaseState( false, AppInfo.INVALID_ACTION ).toJSONString();
		}
		
		if ( this.configManager == null || !this.configManager.valid() ) {
			return new BaseState( false, AppInfo.CONFIG_ERROR ).toJSONString();
		}
		
		State state = null;
		
		int actionCode = ActionMap.getType( this.actionType );
		
		Map<String, Object> conf = null;
		
		switch ( actionCode ) {
		
			case ActionMap.CONFIG:
				return this.configManager.getAllConfig().toString();
				
			case ActionMap.UPLOAD_IMAGE:
			case ActionMap.UPLOAD_SCRAWL:
			case ActionMap.UPLOAD_VIDEO:
			case ActionMap.UPLOAD_FILE:
				conf = this.configManager.getConfig( actionCode );
				System.out.println("id="+request.getParameter("id"));
				conf.put("id", request.getParameter("id"));	//前端传过来的id，为courtImg/场地id，	或者userImg/用户id
				state = new Uploader( request, conf ).doExec();
				break;
				
			case ActionMap.CATCH_IMAGE:
				conf = configManager.getConfig( actionCode );
				String[] list = this.request.getParameterValues( (String)conf.get( "fieldName" ) );
				state = new ImageHunter( conf ).capture( list );
				break;
				
			case ActionMap.LIST_IMAGE:
			case ActionMap.LIST_FILE:
				conf = configManager.getConfig( actionCode );
				int start = this.getStartIndex();
				state = new FileManager( conf ).listFile( start );
				break;
			case ActionMap.DELETE_IMAGE:
				break;
				
		}
		
		return state.toJSONString();
		
	}
	
	public int getStartIndex () {
		
		String start = this.request.getParameter( "start" );
		
		try {
			return Integer.parseInt( start );
		} catch ( Exception e ) {
			return 0;
		}
		
	}
	
	/**
	 * callback参数验证
	 */
	public boolean validCallbackName ( String name ) {
		
		if ( name.matches( "^[a-zA-Z_]+[\\w0-9_]*$" ) ) {
			return true;
		}
		
		return false;
		
	}
	
}