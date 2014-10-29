package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.Match;
import org.sousai.tools.MyPrint;

public class RelMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -509217384709788196L;
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
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
		MyPrint.myPrint("in RelMatchAction");
		try {
			MyPrint.myPrint("t = ");
			if (getMatch() != null && umg.relMatch(match) != 0) {
				return SUCCESS;
			}
			return FAIL;
		} catch (Exception e) {
			e.printStackTrace();
			return FAIL;
		}
	}
}
