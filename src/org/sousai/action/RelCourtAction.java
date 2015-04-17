package org.sousai.action;

import java.io.File;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.*;
import org.sousai.common.Constant;
import org.sousai.domain.*;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.*;

import static org.sousai.service.UserManager.*;

import com.opensymphony.xwork2.*;

/**
 * Description: <br/>
 * this action will be executed when some user want to release a court <br/>
 * 
 * <br/>
 * Copyright (C), 2014-2024, Myic
 * 
 * @author Myic myic211@gmail.com
 * @version 1.0
 * 
 */

public class RelCourtAction extends UserBaseAction {

	private static final long serialVersionUID = -4998633570436062940L;

	private Court court;
	// private Integer courtTypeId;
	private File[] images;
	private String[] imgNames;
	public final static int MAX_COURT_COUNT = 10;
	public final static String SUCCESS = "success";
	public final static String FAIL = "fail";
	private static final String EXEED_COUNT = "exeed";

	// court的setter和getter
	public void setCourt(Court court) {
		this.court = court;
	}

	public Court getCourt() {
		return this.court;
	}

	// images的setter和getter
	public void setImages(File[] images) {
		this.images = images;
	}

	public File[] getImages() {
		return this.images;
	}

	// imgNames的setter和getter
	public void setImgNames(String[] imgNames) {
		this.imgNames = imgNames;
	}

	public String[] getImgNames() {
		return this.imgNames;
	}

	public String execute() throws Exception {
		String result = Constant.FAIL;
		try {
			UserBean userBean = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");
			//非管理员且超过每天最大发布数
			if (userBean.getUserType() != '2'
					&& umg.isExeed(userBean.getUserId(), MAX_COURT_COUNT, 1)) {
				result = EXEED_COUNT;
			} else {
				MyPrint.myPrint(court.toString());
				MyPrint.myPrint("RelCourtAction now");
				Court tempCourt = getCourt();
				// tempCourt.setCourtTypeId(getCourtTypeId());
				tempCourt.setVerify('0');
				MyPrint.myPrint("regionId = " + tempCourt.getRegionId());
				tempCourt.setUserId(userBean.getUserId());
				result = umg.releaseCourt(tempCourt).toString();
			}
		} catch (Exception e) {
			e.printStackTrace();
			MyPrint.myPrint(result);
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), result);
		return null;
	}
}
