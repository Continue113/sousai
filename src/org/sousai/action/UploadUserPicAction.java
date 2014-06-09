package org.sousai.action;

import java.io.File;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.vo.UserBean;
import org.sousai.tools.*;

import com.googlecode.jsonplugin.JSONUtil;
import com.opensymphony.xwork2.ActionContext;

public class UploadUserPicAction extends UserBaseAction {
	private static final long serialVersionUID = -2676214813594444863L;
	
	//图片
	private File image;
	//图片类型
	private String imgType;
	
	//images的setter和getter
	public void setImage(File image)
	{
		this.image = image;
	}
	public File getImage()
	{
		return this.image;
	}
	
	//imgType的setter和getter
	public void setImgType(String imgType)
	{
		this.imgType = imgType;
	}
	public String getImgType()
	{
		return this.imgType;
	}
	
	public String execute() throws Exception
	{
		MyPrint.myPrint("in uploadUserPic");
		Long userId = ((UserBean)ActionContext.getContext().getSession().get("userBean")).getUserId();
		String result = umg.saveUserPic(getImage(), "head." + getImgType(), userId);
		result += "/head." + getImgType();
		MyPrint.myPrint(result);
		JSONUtils.toJson(ServletActionContext.getResponse(), result);
		return null;
	}
}
