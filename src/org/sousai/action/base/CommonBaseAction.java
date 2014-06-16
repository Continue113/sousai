package org.sousai.action.base;

import org.sousai.service.CommonManager;

import com.opensymphony.xwork2.ActionSupport;

public class CommonBaseAction extends ActionSupport
{
	protected CommonManager cmg;
	
	public void setCommonManager(CommonManager cmg)
	{
		this.cmg = cmg;
	}
}
