package org.sousai.action;

import java.util.List;

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
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(mc)) {
					amg.addMatchClass(mc);
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

	public String deleteMatchClasses() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				String[] arrayIds = ids.split(",");
				Integer[] iIds = new Integer[arrayIds.length];
				for (int i = 0; i < arrayIds.length; i++) {
					iIds[i] = Integer.valueOf(arrayIds[i]);
				}
				amg.deleteMatchClasses(iIds);
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

	public String updateMatchClass() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(mc)) {
					amg.updateMatchClass(mc);
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
	
	/**
	 * 获取所有比赛大类（包括'默认'）
	 * @return
	 * @throws Exception
	 */
	public String findAllMatchClasses() throws Exception{
		List<MatchClass> list = null;
		try {
			if (isAdmin()) {
				list = amg.findAllMatchClasses();
				JSONUtils.toJson(ServletActionContext.getResponse(), list);
			}
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
