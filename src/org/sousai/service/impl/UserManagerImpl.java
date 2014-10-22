package org.sousai.service.impl;

import java.awt.Image;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.tomcat.util.codec.binary.Base64;
import org.sousai.service.UserManager;
import org.sousai.tools.*;
import org.sousai.dao.*;
import org.sousai.domain.*;
import org.sousai.vo.*;

import com.opensymphony.xwork2.ActionContext;
import com.sun.jimi.core.Jimi;
import com.sun.jimi.core.JimiException;
import com.sun.jimi.core.JimiReader;

/**
 * Description:
 * <br/>implements the userManager interface
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */
public class UserManagerImpl implements UserManager
{
	private UserDao userDao;
	private CourtDao courtDao;
	private CourtPicDao courtPicDao;
	private MesgDao mesgDao;
	private RegionDao regionDao;
	private CourtTypeDao courtTypeDao;
	private MatchClassDao matchClassDao;
	private MatchTypeDao matchTypeDao;
	private MatchDao matchDao;
	
	public void setUserDao(UserDao userDao)
	{
		this.userDao = userDao;
	}
	
	public void setCourtDao(CourtDao courtDao)
	{
		this.courtDao = courtDao;
	}
	
	public void setCourtPicDao(CourtPicDao courtPicDao)
	{
		this.courtPicDao = courtPicDao;
	}
	
	public void setMesgDao(MesgDao mesgDao)
	{
		this.mesgDao = mesgDao;
	}
	
	public void setRegionDao(RegionDao regionDao)
	{
		this.regionDao = regionDao;
	}
	
	public void setCourtTypeDao(CourtTypeDao courtTypeDao)
	{
		this.courtTypeDao = courtTypeDao;
	}
	
	public void setMatchClassDao(MatchClassDao matchClassDao)
	{
		this.matchClassDao = matchClassDao;
	}
	public void setMatchTypeDao(MatchTypeDao matchTypeDao)
	{
		this.matchTypeDao = matchTypeDao;
	}
	
	public void setMatchDao(MatchDao matchDao)
	{
		this.matchDao = matchDao;
	}
	
	@Override
	public int validLogin(User user) {
		// TODO Auto-generated method stub
		System.out.println("validLogin Now!!!");
		if (userDao.findByNameAndPass(user).size() >= 1)
		{
			MyPrint.myPrint("valid success");
			MyPrint.myPrint("test set");
			user = userDao.findByName(user.getName());
			if(user == null)
			{
				System.out.println("newUser is null");
			}
			return LOGIN_USER;
		}
		MyPrint.myPrint("valid fail");
		return LOGIN_FAIL;
	}
	@Override
	public UserBean getByName(String name) {
		// TODO Auto-generated method stub
		MyPrint.myPrint("getByName now turn to transform");
		User user = userDao.findByName(name);
		if(user != null)
		{
			return transform(user);
		}
		else
		{
			return null;
		}
	}
	@Override
	public UserBean transform(User user) {
		// TODO Auto-generated method stub
		MyPrint.myPrint("transform now");
		//System.out.println(""+user.getName());
		/*return new UserBean(user.getId(), user.getName(), 
				user.getPwd(), user.getEmail(), user.getType(), user.getPicId(),
				user.getRegTime(), user.getLastLogTime());*/
		return new UserBean(user.getId(), user.getName(), 
				user.getPwd(), user.getEmail(), user.getType());
		/*UserBean userBean = new UserBean(user.getId(), user.getName(), 
				user.getPwd(), user.getEmail(), user.getType(), user.getPicId(),
				user.getRegTime(), user.getLastLogTime());
		System.out.println(""+userBean.getUserName());
		return userBean;*/
	}
	@Override
	public int register(User user)
	{
		// TODO Auto-generated method stub
		MyPrint.myPrint("register now turn to userDao.save");
		if(userDao.save(user) != null)
		{
			return REG_SUCCESS;
		}
		return REG_FAIL;
	}
	@Override
	public int validName(String name) 
	{
		// TODO Auto-generated method stub
		//System.out.println("validName now!");
		if(userDao.findByName(name) == null)
		{
			//System.out.println("validName unuse");
			return NAME_UNUSE;
		}
		//System.out.println("validName use");
		return NAME_USED;
	}

	

	@Override
	public int uploadPic(int pic, Object po) throws Exception
	{
		// TODO Auto-generated method stub
		if(pic == USER_PIC)
		{
			return pic;
		}
		else if(pic == COURT_PIC)
		{
			courtPicDao.save((CourtPic)po);
			return pic;
		}
		MyPrint.myPrint("FAIL");
		return PIC_FAIL;
	}

	@Override
	public InputStream getPic(Long courtId) 
	{
		// TODO Auto-generated method stub
		//courtDao.get(courtId).get
		return null;
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		try{
			userDao.update(user);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return 1;
	}

	@Override
	public String uploadPic(int flag, File[] images, String[] imgNames, Long UserId)
	{
		// TODO Auto-generated method stub
		MyPrint.myPrint("in uploadPicAction");
		if(images != null && imgNames != null)
		{
			MyPrint.myPrint("images not null!");
			try {
				ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return "fail";
			}
	        String realPath = ServletActionContext.getServletContext().getRealPath("/files");
	        realPath += "/" + UserId;
	        //判断是用户头像还是场地图片
	        if(flag == USER_PIC)
	        {
	        	//判断图片数量是否为1
	        	if(images.length>1 || imgNames.length>1)
	        	{
	        		return "TooManyUserPic";
	        	}
	        	realPath += "/UserHead";
	        	File savedir=new File(realPath);
	            if(!savedir.getParentFile().exists())
	            {
	                savedir.getParentFile().mkdirs();
	            }
	            File savefile = new File(savedir, imgNames[0]);
                try {
					FileUtils.copyFile(images[0], savefile);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "fail";
				}
	        }
	        else if(flag == COURT_PIC)
	        {

				if(images.length>3 || imgNames.length>3)
				{
					return "TooManyPicsOrNames";
				}
	        	realPath += "/CourtPic";
	        	File savedir=new File(realPath);
	            if(!savedir.getParentFile().exists())
	            {
	                savedir.getParentFile().mkdirs();
	            }
	            for(int i=0;i<images.length;i++){
	            	MyPrint.myPrint("i = " + i);
	            	MyPrint.myPrint("imgNames.length = " + imgNames.length);
	            	MyPrint.myPrint("imgNames["+i+"] = "+imgNames[i]);
	                File savefile = new File(savedir, imgNames[i]);
	                try {
						FileUtils.copyFile(images[i], savefile);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						return "fail";
					}
	            }
		        MyPrint.myPrint(realPath);
		        MyPrint.myPrint(images.toString());
	        }
	        return realPath;
		}
		else
		{
			return "ImageOrNamesNull";
		}
	}

	@Override
	public int updateInfo(String key, Long id) {
		// TODO Auto-generated method stub
		ActionContext ctx = ActionContext.getContext();
		//更新用户信息
		if(key == "userBean")
		{
			ctx.getSession().put(key, new UserBean(userDao.get(id)));
		}
		//更新场地信息
		else if(key == "courtBean")
		{
			ctx.getSession().put(key, null);
		}
		//更新比赛信息
		else if(key == "matchBean")
		{
		}
		return 1;
	}

	@Override
	public int releaseCourt(Court court) {
		// TODO Auto-generated method stub
		if(courtDao.save(court) != null)
		{	
			return 1;
		}
		return 0;
	}
	
	@Override
	public void pushPicBase64(File resImage)
	{
		try{
			ByteArrayOutputStream output = new ByteArrayOutputStream();  
	    	MyPrint.myPrint("FLAG  1");
	        JimiReader reader = Jimi.createJimiReader(new FileInputStream(resImage));
	    	//JimiReader reader = Jimi.createJimiReader("G:\\Users\\myic\\workspace\\Git\\sousai\\WebContent\\img\\logo.png");
	        MyPrint.myPrint("FLAG  2");
	        Image image = reader.getImage();  
	        MyPrint.myPrint("FLAG  3");
	        Jimi.putImage("image/png", image, output);  
	        MyPrint.myPrint("FLAG  4");
	        output.flush();  
	        //MyPrint.myPrint("output = " + output.toString());
	        output.close();  
	        String encodeString = Base64.encodeBase64String(output.toByteArray()); 
	        JSONUtils.toJson(ServletActionContext.getResponse(), encodeString);
	    } catch (IOException e) {  
	        e.printStackTrace();  
	    } catch (JimiException e) {  
	        e.printStackTrace();  
	    }
	}

	@Override
	public String saveUserPic(File images, String imgNames, Long userId) {
		// TODO Auto-generated method stub
		File tempImgs[] ={images};
		String tempImgNames[] = {imgNames};
		return uploadPic(USER_PIC, tempImgs, tempImgNames, userId);
		
	}

	@Override
	public String saveCourtPic(File[] images, String[] imgNames, Long userId) {
		// TODO Auto-generated method stub
		return uploadPic(COURT_PIC, images, imgNames, userId);
		
	}

	@Override
	public String uploadPicByStream(File resImage) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public String uploadUserPic(int flag, File[] images, String[] imgNames, Long UserId)
	{
		// TODO Auto-generated method stub
		MyPrint.myPrint("in uploadPicAction");
		if(images != null && imgNames != null)
		{
			MyPrint.myPrint("images not null!");
			try {
				ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				return "fail";
			}
	        String realPath = ServletActionContext.getServletContext().getRealPath("/files");
	        realPath += "/" + UserId;
	        //判断是用户头像还是场地图片
	        if(flag == USER_PIC)
	        {
	        	//判断图片数量是否为1
	        	if(images.length>1 || imgNames.length>1)
	        	{
	        		return "TooManyUserPic";
	        	}
	        	realPath += "/UserHead";
	        	File savedir=new File(realPath);
	            if(!savedir.getParentFile().exists())
	            {
	                savedir.getParentFile().mkdirs();
	            }
	            File savefile = new File(savedir, imgNames[0]);
                try {
					FileUtils.copyFile(images[0], savefile);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					return "fail";
				}
	        }
	        return realPath;
		}
		else
		{
			return "ImageOrNamesNull";
		}
	}

	

	@Override
	public List<Message> getMessages(Long courtId) {
		// TODO Auto-generated method stub
		return mesgDao.getByCourtId(courtId);
	}

	@Override
	public Long relMessage(Message message) {
		// TODO Auto-generated method stub
		try{
		MyPrint.myPrint(message.getUserName());
		return mesgDao.save(message);
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
