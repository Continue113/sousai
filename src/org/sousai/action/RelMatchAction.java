package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Court;
import org.sousai.domain.Match;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class RelMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -509217384709788196L;
	private static final String EXEED_COUNT = "exeed";
	private Match match;
	private Court court;
	private Boolean isCourt;
	private static final int MAX_MATCH_COUNT = 1;

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

	/**
	 * @return the court
	 */
	public Court getCourt() {
		return court;
	}

	/**
	 * @param court
	 *            the court to set
	 */
	public void setCourt(Court court) {
		this.court = court;
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

	public String execute() throws Exception {
		MyPrint.myPrint("in RelMatchAction");
		try {
			UserBean userBean = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");

			isCourt=false;
			MyPrint.myPrint("match.getCourtId() = " + match.getCourtId());
			// 是否超过当日发布比赛上限
			if (!umg.isExeed(userBean.getUserId(), MAX_MATCH_COUNT, 0)) {
				if (!isCourt ||( court != null
						&& umg.releaseCourt(court) != 0)) {
					if (getMatch() != null && umg.relMatch(match) != 0) {
						return Constant.SUCCESS;
					}
				}
				return Constant.FAIL;
			}
			return EXEED_COUNT;
		} catch (Exception e) {
			e.printStackTrace();
			return Constant.FAIL;
		}
	}
}
