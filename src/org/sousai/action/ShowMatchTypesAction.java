package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.tools.*;

public class ShowMatchTypesAction extends UserBaseAction {

	private static final long serialVersionUID = -1333849702909567869L;
	
	//接收到的比赛大类的id
	public int mcId;
	//不显示比赛类型中“默认”这一纪录，数据库中"默认"的id=1
	private final int DefaultId = 1;
	//private List<MatchType> matchTypes;
	
	//matchTypes的setter和getter
	/*public void setMatchTypes(List<MatchType> matchTypes)
	{
		this.matchTypes = matchTypes;
	}
	public List<MatchType> getMatchTypes()
	{
		return this.matchTypes;
	}*/
	public void setMcId(Integer mcId)
	{
		this.mcId = mcId;
	}
	public Integer getMcId()
	{
		return this.mcId;
	}
	
	public String execute() throws Exception
	{
		MyPrint.myPrint("in ShowMatchTypesAction!!!");
		List<MatchType> matchTypes = cmg.findMatchTypeByMatchClassIdEpt(mcId, DefaultId);
		if(matchTypes!=null)
		{
			JSONUtils.toJson(ServletActionContext.getResponse(), matchTypes);
			MyPrint.myPrint(SUCCESS);
		}
		else
		{
			MyPrint.myPrint(ERROR);
		}
		return null;
	}

}
