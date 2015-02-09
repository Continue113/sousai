package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.MatchClass;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;

public class MaintainMatchClass extends UserBaseAction {

	private static final long serialVersionUID = 1790848480890280293L;

	private String ids;
	private MatchClass mc;

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
	 * @return the mc
	 */
	public MatchClass getMc() {
		return mc;
	}

	/**
	 * @param mc
	 *            the mc to set
	 */
	public void setMc(MatchClass mc) {
		this.mc = mc;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String addMatchClass() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(mc)) {
				amg.addMatchClass(mc);
				value = Constant.SUCCESS;
			}
			else{
				value = Constant.ERROR;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

	public String deleteMatchClasses() throws Exception {
		String value = null;
		try {
			String[] arrayIds = ids.split(",");
			Integer[] iIds = new Integer[arrayIds.length];
			for (int i = 0; i < arrayIds.length; i++) {
				iIds[i] = Integer.valueOf(arrayIds[i]);
			}
			amg.deleteMatchClasses(iIds);
			value = Constant.SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.FAIL;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

	public String updateMatchClass() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(mc)) {
				amg.updateMatchClass(mc);
				value = Constant.SUCCESS;
			}
			else{
				value = Constant.ERROR;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
