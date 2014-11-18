package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Match;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class RelMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -509217384709788196L;
	private static final String EXEED_COUNT = "exeed";
	private Match match;

	private static final int MAX_MATCH_COUNT = 5;

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
			UserBean userBean = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");

			// 是否超过当日发布比赛上限
			if (!umg.isExeed(userBean.getUserId(), MAX_MATCH_COUNT, 0)) {
				if (getMatch() != null && umg.relMatch(match) != 0) {
					return Constant.SUCCESS;
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
