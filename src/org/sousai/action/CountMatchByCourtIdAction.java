package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;

public class CountMatchByCourtIdAction extends UserBaseAction {

	private static final long serialVersionUID = 8841695404326327829L;

	private String courtIds;

	/**
	 * @return the courtIds
	 */
	public String getCourtIds() {
		return courtIds;
	}

	/**
	 * @param courtIds the courtIds to set
	 */
	public void setCourtIds(String courtIds) {
		this.courtIds = courtIds;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		try {
			MyPrint.myPrint("in CountMatchByCourtAction");
			String[] arrayCourtIds = courtIds.split(",");
			Integer[] iCourtIds = new Integer[arrayCourtIds.length];
			for (int i = 0; i < arrayCourtIds.length; i++) {
				iCourtIds[i] = Integer.valueOf(arrayCourtIds[i]);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(),
					amg.countMatchByCourtIds(iCourtIds));
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
