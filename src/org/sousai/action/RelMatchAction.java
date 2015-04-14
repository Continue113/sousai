package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Court;
import org.sousai.domain.Match;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class RelMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -509217384709788196L;
	private static final String EXEED_COUNT = "exeed";
	private Match match;
	private Court court;
	private Boolean isCourt;
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
		String value;
		MyPrint.myPrint("in RelMatchAction");
		try {
			UserBean userBean = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");

			MyPrint.myPrint("match.getCourtId() = " + match.getCourtId());
			// 是否超过当日发布比赛上限
			Integer id = match.getCourtId();
			//非管理员且超过每天发布比赛上限
			if (userBean.getUserType() == '2'
					|| !umg.isExeed(userBean.getUserId(), MAX_MATCH_COUNT, 0)) {
				// 需要发布新场地
				if (isCourt && court != null) {
					id = umg.releaseCourt(court);
				}
				// 不用发布新场地，或者新场地发布成功，则设置比赛的courtid属性，并开始发布比赛
				if ((!isCourt || id != null) && match != null) {
					match.setCourtId(id);
					value = umg.relMatch(match).toString();
				} else {
					value = Constant.FAIL;
				}
				// if ((!isCourt || (court != null && (id
				// =umg.releaseCourt(court)) != null))
				// // && getMatch() != null && umg.relMatch(match) != 0) {
				// && getMatch() != null) {
				// System.out.println("courtId = "+id);
				// match.setCourtId(id);
				// value = umg.relMatch(match).toString();
				// // value = Constant.SUCCESS;
				// } else {
				// value = Constant.FAIL;
				// }
			} else {
				value = EXEED_COUNT;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
