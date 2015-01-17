package org.sousai.action;

import java.io.File;

import org.sousai.action.base.*;
import org.sousai.domain.*;
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
	public final static int MAX_COURT_COUNT = 5;
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
		UserBean userBean = (UserBean) ActionContext.getContext().getSession()
				.get("userBean");
		if (umg.isExeed(userBean.getUserId(), MAX_COURT_COUNT, 1)) {
			return EXEED_COUNT;
		}
		MyPrint.myPrint(court.toString());
		MyPrint.myPrint("RelCourtAction now");
		String result = FAIL;
		Court tempCourt = getCourt();
		// tempCourt.setCourtTypeId(getCourtTypeId());
		tempCourt.setVerify('0');
		MyPrint.myPrint("regionId = " + tempCourt.getRegionId());

		try {
			tempCourt.setUserId(userBean.getUserId());
			// tempCourt.setUser(new
			// User((UserBean)ActionContext.getContext().getSession().get("userBean")));
		} catch (Exception e) {
			e.printStackTrace();
			MyPrint.myPrint(result);
			return result;
		}

		// 上传图片，并将场地信息存入数据库
		if (umg.saveCourtPic(getImages(), getImgNames(), getCourt().getUserId()) != "fail"
		// && umg.releaseCourt(tempCourt)==1)
		) {
			result = umg.releaseCourt(tempCourt).toString();
		}
		return result;
	}
}
