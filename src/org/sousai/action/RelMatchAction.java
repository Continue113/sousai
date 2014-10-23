package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.Match;

public class RelMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -509217384709788196L;

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
		if (getMatch() != null) {
			if (umg.relMatch(match) == 1) {
				return "success";
			} else {
				return "false";
			}
		}
		return "false";
	}

}
