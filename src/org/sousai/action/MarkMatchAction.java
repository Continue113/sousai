package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.UserMark;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;


public class MarkMatchAction extends UserBaseAction{

	private static final long serialVersionUID = -7967521480169848130L;
	
	private UserMark userMark;

	/**
	 * @return the userMark
	 */
	public UserMark getUserMark() {
		return userMark;
	}

	/**
	 * @param userMark the userMark to set
	 */
	public void setUserMark(UserMark userMark) {
		this.userMark = userMark;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute() throws Exception {
		String value;
		MyPrint.myPrint(userMark.toString());
		if(umg.markMatch(userMark)!=null){
			value = Constant.SUCCESS;
		}
		else{
			value = Constant.FAIL;
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

}
