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
		try {
			LinkedList<MatchData> matchList = new Jdbc().selectFromIds(collectionIds);
			Jdbc publishJdbc = new Jdbc() ;
			User tempUser = new User((UserBean) ActionContext.getContext()
					.getSession().get("userBean"));
			int userId = tempUser.getId() ;
			for(int i=0;i<matchList.size();++i){
				publishJdbc.publish(matchList.get(i),userId);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.SUCCESS);
		} catch (Exception e) {
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.ERROR);
			System.out.println(e);
		}
		return null;
	}
}