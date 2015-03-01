package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;

public class RelMatchesByAdminAction extends UserBaseAction {

	private static final long serialVersionUID = 9074485458356135216L;

	private String ids;
	private Boolean isRel;

	/**
	 * @return the ids
	 */
	public String getIds() {
		return ids;
	}

	/**
	 * @param ids
	 *            the ids to set
	 */
	public void setIds(String ids) {
		this.ids = ids;
	}

	/**
	 * @return the isRel
	 */
	public Boolean getIsRel() {
		return isRel;
	}

	/**
	 * @param isRel
	 *            the isRel to set
	 */
	public void setIsRel(Boolean isRel) {
		this.isRel = isRel;
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
			if (isAdmin()) {
				String[] arrayMatchIds = ids.split(",");
				Integer[] iMatchIds = new Integer[arrayMatchIds.length];
				for (int i = 0; i < arrayMatchIds.length; i++) {
					iMatchIds[i] = Integer.valueOf(arrayMatchIds[i]);
				}
				if (CommonUtils.isNullOrEmpty(isRel)) {
					isRel = true;
				}
				amg.relMatches(iMatchIds, isRel);
				value = Constant.SUCCESS;
				JSONUtils.toJson(ServletActionContext.getResponse(), value);
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.FAIL;
			JSONUtils.toJson(ServletActionContext.getResponse(), value);
		}
		return null;
	}

}
