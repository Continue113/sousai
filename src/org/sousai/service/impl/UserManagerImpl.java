package org.sousai.service.impl;

import java.io.InputStream;
import java.util.List;

import org.sousai.service.UserManager;
import org.sousai.dao.*;
import org.sousai.domain.*;
import org.sousai.vo.*;

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
	
	@Override
	public int validLogin(User user) {
		// TODO Auto-generated method stub
		System.out.println("validLogin Now!!!");
		if (userDao.findByNameAndPass(user).size() >= 1)
		{
			System.out.println("valid success");
			System.out.println("test set");
			user = userDao.findByName(user.getName());
			if(user == null)
			{
				System.out.println("newUser is null");
			}
			else if(user.getCourt() != null)
			{
				System.out.println("userid " + user.getId());
				System.out.println("court not null!");
				System.out.println(" " + user.getCourt().size());
			}
			return LOGIN_USER;
		}
		System.out.println("valid fail");
		return LOGIN_FAIL;
	}
	@Override
	public UserBean getByName(String name) {
		// TODO Auto-generated method stub
		System.out.println("getByName now turn to transform");
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
		System.out.println("transform now");
		//System.out.println(""+user.getName());
		return new UserBean(user.getId(), user.getName(), 
				user.getPwd(), user.getEmail(), user.getType(), user.getPicId(),
				user.getRegTime(), user.getLastLogTime());
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
		System.out.println("register now turn to userDao.save");
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
	public List<Region> getProvince() {
		// TODO Auto-generated method stub
		//0为数据库中中国的id
		return regionDao.getSon(1);
	}

	@Override
	public List<Region> getCity(String provinceCode, int order) {
		// TODO Auto-generated method stub
		return regionDao.getSonByCode(provinceCode, order);
	}

	@Override
	public List<Region> getZone(String cityCode, int order) {
		// TODO Auto-generated method stub
		return regionDao.getSonByCode(cityCode, order);
	}

	@Override
	public int upLoadPic(int pic, Object po) 
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
}
