package org.sousai.action;

import java.awt.Image;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Blob;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.tomcat.util.codec.binary.Base64;
import org.hibernate.Hibernate;
import org.sousai.action.base.*;
import org.sousai.domain.*;
import org.sousai.tools.*;

import static org.sousai.service.UserManager.*;

import com.opensymphony.xwork2.*;
import com.sun.jimi.core.Jimi;
import com.sun.jimi.core.JimiException;
import com.sun.jimi.core.JimiReader;

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


public class UploadCourtPicAction extends UserBaseAction
{
	private static final long serialVersionUID = -3936961159120492683L;
	private File[] images;
	private String[] imgNames;
	
	//File的setter和getter
	public void setImages(File[] images)
	{
		this.images = images;
	}
	public File[] getImages()
	{
		return this.images;
	}
	
	//imgNames的setter和getter
	public void setImgNames(String[] imgNames)
	{
		this.imgNames = imgNames;
	}
	public String[] getImgNames()
	{
		return this.imgNames;
	}
	
	public String execute() throws Exception
	{
		MyPrint.myPrint("in uploadCourtPicAction");
		ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
        String realpath = ServletActionContext.getServletContext().getRealPath("/files");
        MyPrint.myPrint(realpath);
        MyPrint.myPrint(getImages().toString());
        if (getImages() != null) {
        	MyPrint.myPrint("images not null!");
            File savedir=new File(realpath);
            if(!savedir.getParentFile().exists())
                savedir.getParentFile().mkdirs();
            for(int i=0;i<images.length;i++){
            	MyPrint.myPrint("i = " + i);
            	MyPrint.myPrint("imgNames.length = " + imgNames.length);
            	MyPrint.myPrint("imgNames["+i+"] = "+imgNames[i]);
                File savefile = new File(savedir, imgNames[i]);
                FileUtils.copyFile(images[i], savefile);
            }
            //JSONUtils.toJson(ServletActionContext.getResponse(), "SUCCESS");
        }
        return "success";
	}

}
