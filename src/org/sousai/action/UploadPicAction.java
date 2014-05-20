package org.sousai.action;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Hibernate;
import org.sousai.action.base.*;
import org.sousai.domain.*;
import org.sousai.tools.*;

import static org.sousai.service.UserManager.*;

import com.opensymphony.xwork2.*;

/**
 * Description:
 * <br/>this action will be executed when some user want to login
 * <br/>if the user logged in, the action will pass the infomation to JSP
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */
public class UploadPicAction extends UserBaseAction
{
	private static final long serialVersionUID = 4648603485473458818L;
	
	private CourtPic courtPic;
	private File image;
	
	//courtPic的Setter和Getter
	public void setCourtPic(CourtPic courtPic)
	{
		this.courtPic = courtPic;
	}
	public CourtPic getCourtPic()
	{
		return this.courtPic;
	}
	
	//image的setter和getter
	public void setImage(File image)
	{
		this.image = image;
	}
	public File getImage()
	{
		return this.image;
	}
	
	public String execute() throws Exception
	{
		System.out.println("upload now!");
		File resImage = getImage();
		String result;
		if(resImage != null)
		{
			FileInputStream fin = new FileInputStream(resImage);// File 转 InputStream
	        Blob blobPic = Hibernate.createBlob(fin);// InputStream 转 Blob
	        CourtPic tempPic = new CourtPic();
	        tempPic.setPic(blobPic);
	        umg.uploadPic(COURT_PIC, tempPic);
	        result = SUCCESS;
		}
		result = ERROR;
		JSONUtils.toJson(ServletActionContext.getResponse(), result);
		return null;
	}
}
