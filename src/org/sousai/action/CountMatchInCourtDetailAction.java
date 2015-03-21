package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;

public class CountMatchInCourtDetailAction extends UserBaseAction {

	private static final long serialVersionUID = 2060266321158603094L;

	private Integer courtId;

	/**
	 * @return the courtId
	 */
	public Integer getCourtId() {
		return courtId;
	}

	/**
	 * @param courtId
	 *            the courtId to set
	 */
	public void setCourtId(Integer courtId) {
		this.courtId = courtId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		try {
			JSONUtils.toJson(ServletActionContext.getResponse(),
					cmg.countMatchByCourtId(courtId));
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
