package org.sousai.service.impl;

import java.awt.Image;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
 * Description: <br/>
 * implements the userManager interface
 * 
 * <br/>
 * Copyright (C), 2014-2024, Myic
 * 
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */

public class UserManagerImpl implements UserManager {
	private UserDao userDao;
	private CourtDao courtDao;
	private CourtPicDao courtPicDao;
	private MesgDao mesgDao;
	private RegionDao regionDao;
	private CourtTypeDao courtTypeDao;
	private MatchClassDao matchClassDao;
	private MatchTypeDao matchTypeDao;
	private MatchDao matchDao;
	private UserMarkDao userMarkDao;
	private HotWordDao hotWordDao;

	/**
	 * @return the userDao
	 */
	public UserDao getUserDao() {
		return userDao;
	}

	/**
	 * @param userDao the userDao to set
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * @return the courtDao
	 */
	public CourtDao getCourtDao() {
		return courtDao;
	}

	/**
	 * @param courtDao the courtDao to set
	 */
	public void setCourtDao(CourtDao courtDao) {
		this.courtDao = courtDao;
	}

	/**
	 * @return the courtPicDao
	 */
	public CourtPicDao getCourtPicDao() {
		return courtPicDao;
	}

	/**
	 * @param courtPicDao the courtPicDao to set
	 */
	public void setCourtPicDao(CourtPicDao courtPicDao) {
		this.courtPicDao = courtPicDao;
	}

	/**
	 * @return the mesgDao
	 */
	public MesgDao getMesgDao() {
		return mesgDao;
	}

	/**
	 * @param mesgDao the mesgDao to set
	 */
	public void setMesgDao(MesgDao mesgDao) {
		this.mesgDao = mesgDao;
	}

	/**
	 * @return the regionDao
	 */
	public RegionDao getRegionDao() {
		return regionDao;
	}

	/**
	 * @param regionDao the regionDao to set
	 */
	public void setRegionDao(RegionDao regionDao) {
		this.regionDao = regionDao;
	}

	/**
	 * @return the courtTypeDao
	 */
	public CourtTypeDao getCourtTypeDao() {
		return courtTypeDao;
	}

	/**
	 * @param courtTypeDao the courtTypeDao to set
	 */
	public void setCourtTypeDao(CourtTypeDao courtTypeDao) {
		this.courtTypeDao = courtTypeDao;
	}

	/**
	 * @return the matchClassDao
	 */
	public MatchClassDao getMatchClassDao() {
		return matchClassDao;
	}

	/**
	 * @param matchClassDao the matchClassDao to set
	 */
	public void setMatchClassDao(MatchClassDao matchClassDao) {
		this.matchClassDao = matchClassDao;
	}

	/**
	 * @return the matchTypeDao
	 */
	public MatchTypeDao getMatchTypeDao() {
		return matchTypeDao;
	}

	/**
	 * @param matchTypeDao the matchTypeDao to set
	 */
	public void setMatchTypeDao(MatchTypeDao matchTypeDao) {
		this.matchTypeDao = matchTypeDao;
	}

	/**
	 * @return the matchDao
	 */
	public MatchDao getMatchDao() {
		return matchDao;
	}

	/**
	 * @param matchDao the matchDao to set
	 */
	public void setMatchDao(MatchDao matchDao) {
		this.matchDao = matchDao;
	}

	/**
	 * @return the userMarkDao
	 */
	public UserMarkDao getUserMarkDao() {
		return userMarkDao;
	}

	/**
	 * @param userMarkDao the userMarkDao to set
	 */
	public void setUserMarkDao(UserMarkDao userMarkDao) {
		this.userMarkDao = userMarkDao;
	}

	/**
	 * @return the hotWordDao
	 */
	public HotWordDao getHotWordDao() {
		return hotWordDao;
	}

	/**
	 * @param hotWordDao the hotWordDao to set
	 */
	public void setHotWordDao(HotWordDao hotWordDao) {
		this.hotWordDao = hotWordDao;
	}

	@Override
	public int validLogin(User user) {
		if (userDao.findByNameAndPass(user).size() >= 1) {
			MyPrint.myPrint("valid success");
			MyPrint.myPrint("test set");
			user = userDao.findByName(user.getName());
			if (user == null) {
				System.out.println("newUser is null");
			}
			return LOGIN_USER;
		}
		MyPrint.myPrint("valid fail");
		return LOGIN_FAIL;
	}

	@Override
	public UserBean getByName(String name) throws Exception {
		MyPrint.myPrint("getByName now turn to transform");
		User user = userDao.findByName(name);
		if (user != null) {
			return transform(user);
		} else {
			return null;
		}
	}

	@Override
	public UserBean transform(User user) throws Exception {
		MyPrint.myPrint("transform now");
		// System.out.println(""+user.getName());
		/*
		 * return new UserBean(user.getId(), user.getName(), user.getPwd(),
		 * user.getEmail(), user.getType(), user.getPicId(), user.getRegTime(),
		 * user.getLastLogTime());
		 */
		// return new UserBean(user.getId(), user.getName(), user.getPwd(),
		// user.getEmail(), user.getType());
		return new UserBean(user);
		/*
		 * UserBean userBean = new UserBean(user.getId(), user.getName(),
		 * user.getPwd(), user.getEmail(), user.getType(), user.getPicId(),
		 * user.getRegTime(), user.getLastLogTime());
		 * System.out.println(""+userBean.getUserName()); return userBean;
		 */
	}

	@Override
	public int register(User user) {
		MyPrint.myPrint("register now turn to userDao.save");
		if (userDao.save(user) != null) {
			return REG_SUCCESS;
		}
		return REG_FAIL;
	}

	@Override
	public int validName(String name) {
		// System.out.println("validName now!");
		if (userDao.findByName(name) == null) {
			// System.out.println("validName unuse");
			return NAME_UNUSE;
		}
		// System.out.println("validName use");
		return NAME_USED;
	}

	@Override
	public int uploadPic(int pic, Object po) throws Exception {
		if (pic == USER_PIC) {
			return pic;
		} else if (pic == COURT_PIC) {
			courtPicDao.save((CourtPic) po);
			return pic;
		}
		MyPrint.myPrint("FAIL");
		return PIC_FAIL;
	}

	@Override
	public InputStream getPic(Integer courtId) {
		// courtDao.get(courtId).get
		return null;
	}

	@Override
	public int updateUser(User user) {
		try {
			userDao.update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}

	@Override
	public String uploadPic(int flag, File[] images, String[] imgNames,
			Integer UserId) {
		MyPrint.myPrint("in uploadPicAction");
		if (images != null && imgNames != null) {
			MyPrint.myPrint("images not null!");
			try {
				ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
				return "fail";
			}
			String realPath = ServletActionContext.getServletContext()
					.getRealPath("/files");
			realPath += "/" + UserId;
			// 判断是用户头像还是场地图片
			if (flag == USER_PIC) {
				// 判断图片数量是否为1
				if (images.length > 1 || imgNames.length > 1) {
					return "TooManyUserPic";
				}
				realPath += "/UserHead";
				File savedir = new File(realPath);
				if (!savedir.getParentFile().exists()) {
					savedir.getParentFile().mkdirs();
				}
				File savefile = new File(savedir, imgNames[0]);
				try {
					FileUtils.copyFile(images[0], savefile);
				} catch (IOException e) {
					e.printStackTrace();
					return "fail";
				}
			} else if (flag == COURT_PIC) {

				if (images.length > 3 || imgNames.length > 3) {
					return "TooManyPicsOrNames";
				}
				realPath += "/CourtPic";
				File savedir = new File(realPath);
				if (!savedir.getParentFile().exists()) {
					savedir.getParentFile().mkdirs();
				}
				for (int i = 0; i < images.length; i++) {
					MyPrint.myPrint("i = " + i);
					MyPrint.myPrint("imgNames.length = " + imgNames.length);
					MyPrint.myPrint("imgNames[" + i + "] = " + imgNames[i]);
					File savefile = new File(savedir, imgNames[i]);
					try {
						FileUtils.copyFile(images[i], savefile);
					} catch (IOException e) {
						e.printStackTrace();
						return "fail";
					}
				}
				MyPrint.myPrint(realPath);
				MyPrint.myPrint(images.toString());
			}
			return realPath;
		} else {
			return "ImageOrNamesNull";
		}
	}

	@Override
	public int updateInfo(String key, Integer id) throws Exception {
		ActionContext ctx = ActionContext.getContext();
		// 更新用户信息
		if (key == "userBean") {
			ctx.getSession().put(key, new UserBean(userDao.get(id)));
		}
		// 更新场地信息
		else if (key == "courtBean") {
			ctx.getSession().put(key, null);
		}
		// 更新比赛信息
		else if (key == "matchBean") {
		}
		return 1;
	}

	@Override
	public Integer releaseCourt(Court court) throws Exception {
		return courtDao.save(court);
	}

	@Override
	public void pushPicBase64(File resImage) {
		try {
			ByteArrayOutputStream output = new ByteArrayOutputStream();
			MyPrint.myPrint("FLAG  1");
			JimiReader reader = Jimi.createJimiReader(new FileInputStream(
					resImage));
			// JimiReader reader =
			// Jimi.createJimiReader("G:\\Users\\myic\\workspace\\Git\\sousai\\WebContent\\img\\logo.png");
			MyPrint.myPrint("FLAG  2");
			Image image = reader.getImage();
			MyPrint.myPrint("FLAG  3");
			Jimi.putImage("image/png", image, output);
			MyPrint.myPrint("FLAG  4");
			output.flush();
			// MyPrint.myPrint("output = " + output.toString());
			output.close();
			String encodeString = Base64.encodeBase64String(output
					.toByteArray());
			JSONUtils.toJson(ServletActionContext.getResponse(), encodeString);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JimiException e) {
			e.printStackTrace();
		}
	}

	@Override
	public String saveUserPic(File images, String imgNames, Integer userId) {
		File tempImgs[] = { images };
		String tempImgNames[] = { imgNames };
		return uploadPic(USER_PIC, tempImgs, tempImgNames, userId);

	}

	@Override
	public String saveCourtPic(File[] images, String[] imgNames, Integer userId) {
		return uploadPic(COURT_PIC, images, imgNames, userId);

	}

	@Override
	public String uploadPicByStream(File resImage) {
		return null;
	}

	@Override
	public String uploadUserPic(int flag, File[] images, String[] imgNames,
			Integer UserId) {
		MyPrint.myPrint("in uploadPicAction");
		if (images != null && imgNames != null) {
			MyPrint.myPrint("images not null!");
			try {
				ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
				return "fail";
			}
			String realPath = ServletActionContext.getServletContext()
					.getRealPath("/files");
			realPath += "/" + UserId;
			// 判断是用户头像还是场地图片
			if (flag == USER_PIC) {
				// 判断图片数量是否为1
				if (images.length > 1 || imgNames.length > 1) {
					return "TooManyUserPic";
				}
				realPath += "/UserHead";
				File savedir = new File(realPath);
				if (!savedir.getParentFile().exists()) {
					savedir.getParentFile().mkdirs();
				}
				File savefile = new File(savedir, imgNames[0]);
				try {
					FileUtils.copyFile(images[0], savefile);
				} catch (IOException e) {
					e.printStackTrace();
					return "fail";
				}
			}
			return realPath;
		} else {
			return "ImageOrNamesNull";
		}
	}

	@Override
	public List<Message> getMessages(Integer courtId) {
		return mesgDao.getByCourtId(courtId);
	}

	@Override
	public Long relMessage(Message message) {
		try {
			MyPrint.myPrint(message.getUserName());
			return mesgDao.save(message);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Integer relMatch(Match match) {
		try {
			return matchDao.save(match);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<CourtBean> getCourtInMatchReling(Integer regionId, Integer currentPage, Integer rows) {
		return courtDao.findPagedByRegionId(regionId, currentPage, rows);
	}

	@Override
	public List<CourtBean> getCourtByRegion(String region, int currentPage, int rows) throws Exception{
		return courtDao.findPagedByRegion(region, currentPage, rows);
	}

	@Override
	public List<CourtBean> getCourtByUserId(Integer userId, Integer currentPage, Integer rows) {
		return (List<CourtBean>) courtDao.findPagedByUserId(userId, currentPage, rows);
	}

	@Override
	public CourtBean getByCourtId(Integer id) {
		return courtDao.get(id);
	}

	@Override
	public Map<String, Integer> countEachMatchByUserId(Integer userId) {
		return matchDao.getEachMatchCount(userId);
	}

	@Override
	public List<MatchBean> getUsersFavorMatch(Integer userId, int currentPage,
			int rows) {
		return (List<MatchBean>) userMarkDao.findByMarkingUserId(userId,
				currentPage, rows);
	}

	@Override
	public boolean isExeed(Integer userId, int maxCount, int type) {
		boolean value = true;
		switch (type) {
		case 0:
			value = matchDao.countRelMatchPerDay(userId) > maxCount;
			break;
		case 1:
			value = courtDao.countRelMatchPerDay(userId) > maxCount;
			break;
		default:
			break;
		}
		return value;
	}

	@Override
	public List<MatchBean> getByKeyValue(String keyValue, int currentPage,
			int pageSize) {
		return matchDao.findPagedByKeyValue(keyValue, currentPage, pageSize);
	}

	@Override
	public Long markMatch(UserMark userMark) throws Exception {
		return userMarkDao.save(userMark);
	}

	@Override
	public Integer countByRegion(String region) throws Exception {
		return courtDao.countByRegion(region);
	}

	@Override
	public List<MatchBean> getMatchByUserId(Integer userId, Integer currentPage, Integer rows) {
		return matchDao.findByUserId(userId, currentPage, rows);
	}

	@Override
	public int countCourtByUserId(Integer userId) throws Exception {
		return courtDao.countByUserId(userId);
	}

	@Override
	public int countMatchByUserId(Integer userId) throws Exception {
		return matchDao.countByUserId(userId);
	}

	@Override
	public int countUsersFavorMatch(Integer userId) throws Exception {
		return userMarkDao.countByMarkingUserId(userId);
	}
}
