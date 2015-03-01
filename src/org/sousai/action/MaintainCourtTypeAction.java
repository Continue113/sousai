package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.CourtType;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;

public class MaintainCourtTypeAction extends UserBaseAction {

	private static final long serialVersionUID = -8338643341969269247L;

	private CourtType courtType;

	/**
	 * @return the courtType
	 */
	public CourtType getCourtType() {
		return courtType;
	}

	/**
	 * @param courtType
	 *            the courtType to set
	 */
	public void setCourtType(CourtType courtType) {
		this.courtType = courtType;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String addCourtType() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(courtType)) {
					amg.addCourtType(courtType);
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

	public String deleteCourtType() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(courtType)) {
					amg.deleteCourtType(courtType);
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

	public String updateCourtType() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(courtType)) {
					amg.updateCourtType(courtType);
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

	public String findAllCourtTypes() throws Exception {
		List<CourtType> list = null;
		try {
			if (isAdmin()) {
				list = amg.findAllCourtTypes();
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
