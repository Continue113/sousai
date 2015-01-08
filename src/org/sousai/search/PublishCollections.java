package org.sousai.search;

import java.util.LinkedList;

import org.apache.struts2.ServletActionContext;
import org.sousai.common.Constant;
import org.sousai.domain.User;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class PublishCollections {
	private String collectionId = null;

	public String getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(String collectionId) {
		this.collectionId = collectionId;
	}

	public String publishCollections() {
		String[] collectionIds = collectionId.split(",");
		LinkedList<MatchData> matchList = new Jdbc()
				.selectFromIds(collectionIds);
		Jdbc publishJdbc = new Jdbc();
		int userId = 0;
		try {
			User tempUser = new User((UserBean) ActionContext.getContext()
					.getSession().get("userBean"));
			userId = tempUser.getId();
		} catch (Exception e) {
			System.out.println(e);
		}
		for (int i = 0; i < matchList.size(); ++i) {
			publishJdbc.publish(matchList.get(i), userId);
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), Constant.SUCCESS);
		return null;
	}
}
