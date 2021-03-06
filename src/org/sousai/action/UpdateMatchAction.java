package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Court;
import org.sousai.domain.Match;
import org.sousai.tools.JSONUtils;

public class UpdateMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -5680488596868566421L;

	private Boolean isCourt;
	private Match match;
	private Court court;

	/**
	 * @return the match
	 */
	public Match getMatch() {
		return match;
	}

	/**
	 * @param match
	 *            the match to set
	 */
	public void setMatch(Match match) {
		this.match = match;
	}

	/**
	 * @return the isCourt
	 */
	public Boolean getIsCourt() {
		return isCourt;
	}

	/**
	 * @param isCourt
	 *            the isCourt to set
	 */
	public void setIsCourt(Boolean isCourt) {
		this.isCourt = isCourt;
	}

	/**
	 * @return the court
	 */
	public Court getCourt() {
		return court;
	}

	/**
	 * @param court the court to set
	 */
	public void setCourt(Court court) {
		this.court = court;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		String value;
		try {
			if ((!isCourt || (court != null && umg.releaseCourt(court) != null))
					// && getMatch() != null && umg.relMatch(match) != 0) {
					&& getMatch() != null) {
				cmg.updateMatch(match);
				value = Constant.SUCCESS;
			}else{
				value = Constant.FAIL;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
