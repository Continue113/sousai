package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.tools.*;

import java.util.List;
public class ShowCourtTypesAction extends UserBaseAction {

	private static final long serialVersionUID = -8395969419637939931L;
	
	private Integer matchId;
	
	//matchId的setter和getter
	public void setMatchId(Integer matchId)
	{
		this.matchId = matchId;
	}
	public Integer getMatchId()
	{
		return this.matchId;
	}
	
	public String execute() throws Exception
	{
		MyPrint.myPrint("in ShowCourtTypesAction");
		MyPrint.myPrint("matchId = "+getMatchId());
		List<CourtType> courtTypes = cmg.findCourtTypeByMatchTypeId(getMatchId());
		if(courtTypes!=null)
		{
			MyPrint.myPrint("courtTypes");
			JSONUtils.toJson(ServletActionContext.getResponse(), courtTypes);
			MyPrint.myPrint("yesyeseys");
		}
		else if(courtTypes == null)
		{
			MyPrint.myPrint("null");
		}
		else if(courtTypes.size()==0)
		{
			MyPrint.myPrint(""+0);
		}
		else
		{
			MyPrint.myPrint("Error!!");
		}
		return null;
	}

}
