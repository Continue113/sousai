package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.*;
import org.sousai.tools.JSONUtils;

public class DeleteCourts extends UserBaseAction {

	private static final long serialVersionUID = -4757523051822498172L;

	// 要删除的场地id数组
	private String courtIds;

	/**
	 * @return the courtIds
	 */
	public String getCourtIds() {
		return courtIds;
	}

	/**
	 * @param courtIds
	 *            the courtIds to set
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
		String value = null;
		try {
			String[] arrayCourtIds = courtIds.split(",");
			Integer[] iCourtIds = new Integer[arrayCourtIds.length];
			for (int i = 0; i < arrayCourtIds.length; i++) {
				iCourtIds[i] = Integer.valueOf(arrayCourtIds[i]);
			}
			amg.deleteCourts(iCourtIds);
			value = Constant.SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.FAIL;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
