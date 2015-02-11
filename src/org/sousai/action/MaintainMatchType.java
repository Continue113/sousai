package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.MatchType;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;

public class MaintainMatchType extends UserBaseAction{

	private static final long serialVersionUID = 7477401382913483310L;

	private String ids;
	private MatchType mt;

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
	 * @return the mt
	 */
	public MatchType getMt() {
		return mt;
	}

	/**
	 * @param mt
	 *            the mt to set
	 */
	public void setMt(MatchType mt) {
		this.mt = mt;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String addMatchType() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(mt)) {
				System.out.println(mt.toString());
				amg.addMatchType(mt);
				value = Constant.SUCCESS;
			}
			else{
				System.out.println("mt=null");
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

	public String deleteMatchTypes() throws Exception {
		String value = null;
		try {
			String[] arrayIds = ids.split(",");
			Integer[] iIds = new Integer[arrayIds.length];
			for (int i = 0; i < arrayIds.length; i++) {
				iIds[i] = Integer.valueOf(arrayIds[i]);
			}
			amg.deleteMatchTypes(iIds);
			value = Constant.SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.FAIL;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

	public String updateMatchType() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(mt)) {
				amg.updateMatchType(mt);
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
