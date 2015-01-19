package org.sousai.action;

import java.util.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.MyPrint;

public class RefreshIndexAction implements Job{

//	private static final long serialVersionUID = -3234740497307930811L;

	public RefreshIndexAction() {
		super();
	}
	public static int num;
	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {

		num++;
		MyPrint.myPrint("Num."+num + " job act"+new Date());
	}

}
