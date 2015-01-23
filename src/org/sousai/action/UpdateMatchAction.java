package org.sousai.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Match;
import org.sousai.domain.User;
import org.sousai.tools.JSONUtils;

public class UpdateMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -5680488596868566421L;

	private Match match;

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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		String value;
		try {
			cmg.updateMatch(match);
			value = Constant.SUCCESS;
		} catch (Exception e) {
			value = Constant.ERROR;
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
