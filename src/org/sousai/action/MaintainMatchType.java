package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.MatchType;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;

public class MaintainMatchType extends UserBaseAction {

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
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(mt)) {
					System.out.println(mt.toString());
					amg.addMatchType(mt);
					value = Constant.SUCCESS;
					JSONUtils.toJson(ServletActionContext.getResponse(), value);
				} else {
					System.out.println("mt=null");
					value = Constant.ERROR;
					JSONUtils.toJson(ServletActionContext.getResponse(), value);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
			JSONUtils.toJson(ServletActionContext.getResponse(), value);
		}
		return null;
	}

	public String deleteMatchTypes() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				String[] arrayIds = ids.split(",");
				Integer[] iIds = new Integer[arrayIds.length];
				for (int i = 0; i < arrayIds.length; i++) {
					iIds[i] = Integer.valueOf(arrayIds[i]);
				}
				amg.deleteMatchTypes(iIds);
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

	public String updateMatchType() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(mt)) {
					amg.updateMatchType(mt);
					value = Constant.SUCCESS;
					JSONUtils.toJson(ServletActionContext.getResponse(), value);
				} else {
					value = Constant.ERROR;
					JSONUtils.toJson(ServletActionContext.getResponse(), value);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
			JSONUtils.toJson(ServletActionContext.getResponse(), value);
		}
		return null;
	}

	public String getMatchTypeInMatches() throws Exception {
		List<String> list = null;
		try {
			if (isAdmin()) {
				list = amg.getAllMatchTypeInMatches();
				JSONUtils.toJson(ServletActionContext.getResponse(), list);
			}
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
