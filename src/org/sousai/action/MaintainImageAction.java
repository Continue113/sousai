package org.sousai.action;

import java.io.File;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;

public class MaintainImageAction extends UserBaseAction {

	private static final long serialVersionUID = 5179585269147927732L;

	private String strImgPath;

	/**
	 * @return the strImgPath
	 */
	public String getStrImgPath() {
		return strImgPath;
	}

	/**
	 * @param strImgPath
	 *            the strImgPath to set
	 */
	public void setStrImgPath(String strImgPath) {
		this.strImgPath = strImgPath;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String delete() throws Exception {
		try {
			String[] imgPaths = strImgPath.split(",");
			for (String s : imgPaths) {
				File file = new File(s);
				if (file.exists()) {
					boolean d = file.delete();
				}
			}
			JSONUtils.toJson(ServletActionContext.getResponse(),
					Constant.SUCCESS);
		} catch (Exception e) {
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}

}
