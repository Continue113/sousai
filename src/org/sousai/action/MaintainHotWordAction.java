package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.HotWord;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;

public class MaintainHotWordAction extends UserBaseAction {

	private static final long serialVersionUID = -8338643341969269247L;

	private HotWord hotWord;

	/**
	 * @return the hotWord
	 */
	public HotWord getHotWord() {
		return hotWord;
	}

	/**
	 * @param hotWord
	 *            the hotWord to set
	 */
	public void setHotWord(HotWord hotWord) {
		this.hotWord = hotWord;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String addHotWord() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(hotWord)) {
					amg.addHotWord(hotWord);
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

	public String deleteHotWord() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(hotWord)) {
					amg.deleteHotWord(hotWord);
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

	public String updateHotWord() throws Exception {
		String value = null;
		try {
			if (isAdmin()) {
				if (!CommonUtils.isNullOrEmpty(hotWord)) {
					amg.updateHotWord(hotWord);
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

	public String findAllHotWords() throws Exception {
		List<HotWord> list = null;
		try {
			list = amg.findAllHotWords();
			JSONUtils.toJson(ServletActionContext.getResponse(), list);
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}

}
