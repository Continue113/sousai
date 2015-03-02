package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.*;
import org.sousai.vo.MessageBean;
import org.sousai.common.Constant;
import org.sousai.domain.*;

import java.util.List;

public class ShowMessagesAction extends UserBaseAction {

	private static final long serialVersionUID = -8289798960851998802L;

	// 所有评论
	private List<Message> messages;
	// 场地id
	private Integer courtId;
	private Integer rows;
	private Integer currentPage;

	// messages的setter和getter
	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}

	public List<Message> getMessages() {
		return this.messages;
	}

	// courtId的setter和getter
	public void setCourtId(Integer courtId) {
		this.courtId = courtId;
	}

	public Integer getCourtId() {
		return this.courtId;
	}

	/**
	 * @return the rows
	 */
	public Integer getRows() {
		return rows;
	}

	/**
	 * @param rows
	 *            the rows to set
	 */
	public void setRows(Integer rows) {
		this.rows = rows;
	}

	/**
	 * @return the currentPage
	 */
	public Integer getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param currentPage
	 *            the currentPage to set
	 */
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		try {
			if (currentPage == null) {
				currentPage = 1;
			}
			if (rows == null) {
				rows = Constant.DEFAULT_ROWS;
			}
			MyPrint.myPrint("in ShowMessageAction!");
			List<MessageBean> list = cmg
					.getMessages(courtId, currentPage, rows);
			int count = cmg.countMesgByCourtId(courtId);
			FrontMessage msg = new FrontMessage(list, count);
			JSONUtils.toJson(ServletActionContext.getResponse(), msg);
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
