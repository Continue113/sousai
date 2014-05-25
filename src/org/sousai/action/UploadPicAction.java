package org.sousai.action;

import java.awt.Image;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Blob;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

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
		String encodeString = null;
		if(resImage != null)
		{
			System.out.println("resImage != null");
			try {  
				FileInputStream fin = new FileInputStream(resImage);// File 转 InputStream
		        /*Blob blobPic = Hibernate.createBlob(fin);// InputStream 转 Blob
		        CourtPic tempPic = new CourtPic();
		        tempPic.setPic(blobPic);
		        umg.uploadPic(COURT_PIC, tempPic);
		        //umg.uploadCourtPic(tempPic);*/
		        byte[] photoBuffer = new byte[fin.available()];
		        fin.read(photoBuffer);
	//	        fin.reset();
		        //MyPrint.myPrint("fin = " + fin.toString());
		        CourtPic tempPic = new CourtPic();
		        tempPic.setPic(photoBuffer);
		        umg.uploadPic(COURT_PIC, tempPic);
		        /*fin.close();
				HttpServletResponse response = ServletActionContext.getResponse();        
			    response.setContentType("image/jpeg");
			    ServletOutputStream os = response.getOutputStream();
			    if(photoBuffer != null && photoBuffer.length != 0) {
			        for(int i = 0; i < photoBuffer.length; i++) {
			           os.write(photoBuffer[i]);
			        }
			    }
			    os.flush();*/
			    //MyPrint.myPrint("fin = " + fin.toString());
			    ByteArrayOutputStream output = new ByteArrayOutputStream();  
	        	MyPrint.myPrint("FLAG  1");
	            JimiReader reader = Jimi.createJimiReader(new FileInputStream(resImage));
	            fin.close();
	        	//JimiReader reader = Jimi.createJimiReader("G:\\Users\\myic\\workspace\\Git\\sousai\\WebContent\\img\\logo.png");
	            MyPrint.myPrint("FLAG  2");
	            Image image = reader.getImage();  
	            MyPrint.myPrint("FLAG  3");
	            Jimi.putImage("image/png", image, output);  
	            MyPrint.myPrint("FLAG  4");
	            output.flush();  
	            //MyPrint.myPrint("output = " + output.toString());
	            output.close();  
	            encodeString = Base64.encodeBase64String(output.toByteArray());  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        } catch (JimiException e) {  
	            e.printStackTrace();  
	        }
	        result = SUCCESS;
		}
		else
		{
			result = ERROR;
		}
        System.out.println(result);
        //String string = "{\"files\": [{\"name\": \"picture1.jpg\",\"size\": 146538,\"url\": \"http://192.168.137.1:8080/sousai/files/picture1.jpg\",\"thumbnailUrl\": \"http://192.168.137.1:8080/sousai/files/thumbnail/picture1.jpg\",\"deleteUrl\": \"http://192.168.137.1:8080/sousai/files/picture1.jpg\",\"deleteType\": \"DELETE\"},{\"name\": \"picture2.jpg\",\"size\": 19602,\"url\": \"http://192.168.137.1:8080/sousai/files/picture2.jpg\",\"thumbnailUrl\": \"http://192.168.137.1:8080/sousai/files/thumbnail/picture2.jpg\",\"deleteUrl\": \"http://192.168.137.1:8080/sousai/files/picture2.jpg\",\"deleteType\": \"DELETE\"}]}";
        String string = "{\"statusCode\":1; \"ImgUrl\":\"图片相对服务器路径img/picName.jpg\"}";
        MyPrint.myPrint(string);
        //System.out.println("encodeString= "+ encodeString);
		JSONUtils.toJson(ServletActionContext.getResponse(), string);
		return null;
	}
}
