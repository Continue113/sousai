package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;

public class RelCourtsByAdminAction extends UserBaseAction
{

	private static final long serialVersionUID = -569315712904600957L;
	
	private String ids;
	
	/**
	 * @return the ids
	 */
	public String getIds() {
		return ids;
	}

	/**
	 * @param ids the ids to set
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

	public String execute() throws Exception{
		String value = null;
		try {
			String[] arrayCourtIds = ids.split(",");
			Integer[] iCourtIds = new Integer[arrayCourtIds.length];
			for (int i = 0; i < arrayCourtIds.length; i++) {
				iCourtIds[i] = Integer.valueOf(arrayCourtIds[i]);
			}
			amg.relCourts(iCourtIds);
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