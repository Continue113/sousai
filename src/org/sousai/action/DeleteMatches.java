package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;

public class DeleteMatches extends UserBaseAction {

	private static final long serialVersionUID = 6677358282634278878L;
	private String matchIds;

	/**
	 * @return the matchIds
	 */
	public String getMatchIds() {
		// for(Integer i: matchIds)
		// System.out.println("i = "+i);
		return matchIds;
	}

	/**
	 * @param matchIds
	 *            the matchIds to set
	 */
	public void setMatchIds(String matchIds) {
		this.matchIds = matchIds;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				String[] arrayMatchIds = matchIds.split(",");
				Integer[] iMatchIds = new Integer[arrayMatchIds.length];
				for (int i = 0; i < arrayMatchIds.length; i++) {
					iMatchIds[i] = Integer.valueOf(arrayMatchIds[i]);
				}
				int i = amg.deleteMatches(iMatchIds);
				System.out.println("删除数据：" + i + " 条");
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
