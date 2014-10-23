package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.*;
import org.sousai.domain.Court;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;

public class GetCourtInMatchRelingAction extends UserBaseAction {

	private static final long serialVersionUID = -4391779686549825570L;

	private Integer regionId; // 用户在选择好地区之后，地区所对应的id，直接以regionId这个参数传递给我

	/**
	 * @return the regionId
	 */
	public Integer getRegionId() {
		return regionId;
	}

	/**
	 * @param regionId
	 *            the regionId to set
	 */
	public void setRegionId(Integer regionId) {
		this.regionId = regionId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		MyPrint.myPrint("in GetCourtInMatchReling");

		if (getRegionId() != null) {
			JSONUtils.toJson(ServletActionContext.getResponse(),
					umg.getCourtInMatchReling(regionId));
		}
		return null;
	}

}
