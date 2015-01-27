package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.MatchBean;

public class GetMatchById extends UserBaseAction {

	private static final long serialVersionUID = -9162366868907349819L;

	private Integer id;

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		MatchBean value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(id)) {
				value = cmg.findMatchBeanById(id);
				JSONUtils.toJson(ServletActionContext.getResponse(), value);
			} else {
				JSONUtils.toJson(ServletActionContext.getResponse(),
						Constant.ERROR);
			}
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}

}
