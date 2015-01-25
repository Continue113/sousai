package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;

public class RelMatchesByAdminAction extends UserBaseAction {

	private static final long serialVersionUID = 9074485458356135216L;

	private String ids;

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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		String value = null;
		try {
			String[] arrayMatchIds = ids.split(",");
			Integer[] iMatchIds = new Integer[arrayMatchIds.length];
			for (int i = 0; i < arrayMatchIds.length; i++) {
				iMatchIds[i] = Integer.valueOf(arrayMatchIds[i]);
			}
			amg.relMatches(iMatchIds);
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
