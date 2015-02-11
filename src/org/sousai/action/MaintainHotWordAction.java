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

	public String addHotWord() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(hotWord)) {
				amg.addHotWord(hotWord);
				value = Constant.SUCCESS;
			} else {
				value = Constant.ERROR;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

	public String deleteHotWord() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(hotWord)) {
				amg.deleteHotWord(hotWord);
				value = Constant.SUCCESS;
			} else {
				value = Constant.ERROR;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

	public String updateHotWord() throws Exception {
		String value = null;
		try {
			if (!CommonUtils.isNullOrEmpty(hotWord)) {
				amg.updateHotWord(hotWord);
				value = Constant.SUCCESS;
			} else {
				value = Constant.ERROR;
			}
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
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
