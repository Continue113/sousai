package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.tools.*;

import java.util.List;

public class ShowMatchClassAction extends UserBaseAction {

	private static final long serialVersionUID = 8719070132374266131L;
	private List<MatchClass> matchClasses;
	
	//不显示比赛类型中“默认”这一纪录，数据库中"默认"的id=1
	private final int DefaultId = 1;
	
	public void setMatchClasses(List<MatchClass> matchClasses)
	{
		this.matchClasses = matchClasses;
	}
	public List<MatchClass> getMatchClasses()
	{
		return this.matchClasses;
	}
	
	public String execute() throws Exception
	{
		MyPrint.myPrint("in ShowMatchClass action");
		setMatchClasses(cmg.findAllMatchClassEpt(DefaultId));
		if(matchClasses!=null)
		{
			JSONUtils.toJson(ServletActionContext.getResponse(), matchClasses);
			MyPrint.myPrint(SUCCESS);
		}
		else
		{
			MyPrint.myPrint(ERROR);
		}
		return null;
	}
}
