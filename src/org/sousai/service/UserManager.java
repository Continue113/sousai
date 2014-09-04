package org.sousai.service;

import org.sousai.domain.*;
import org.sousai.vo.*;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.*;
import java.io.File;

/**
 * Description:
 * <br/>the component contain the function used by user object;
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */
public interface UserManager
{
	//��¼ʧ��
	public final static int LOGIN_FAIL = 0;
	//��¼ΪUser
	public final static int LOGIN_USER = 1;
	
	//ע��ɹ�
	public final static int REG_SUCCESS = 1;
	//ע��ʧ��
	public final static int REG_FAIL = 0;
	
	//用户名可用
	public final static int NAME_UNUSE = 1;
	//用户名不可用
	public final static int NAME_USED = 0;
	
	//图片
	public final static int USER_PIC = 1;
	public final static int COURT_PIC = 2;
	public final static int PIC_FAIL = 0;

	
	/**
	 * ��½
	 * @return 0Ϊ��¼ʧ�ܣ�1Ϊ��¼�ɹ�
	 */
	public int validLogin(User user);
	
	/**
	 * ���name��ȡ�û���Ϣ
	 * @param name �û���
	 * @return �û���Ϣ
	 */
	public UserBean getByName(String name);
	
	/**
	 * ��poת����vo
	 * @param user po��
	 * @return userBean vo��
	 */
	public UserBean transform(User user);
	
	/**
	 * ��ݷ�װ��user����ע��
	 * @param user
	 * @return 0�ɹ���1ʧ��
	 */
	public int register(User user);
	
	/**
	 * 更新用户信息
	 * @param user 更新后的user信息
	 * @return 0为失败，1为成功 
	 */
	public int updateUser(User user);
	
	/**
	 * 检测用户名是否存在
	 * @param name 用户输入的用户名
	 * @return 1用户名未被使用  0用户名已用
	 */
	public int validName(String name);
	
	/**
	 * 存储图片
	 * @param pic 图片类型 1：用户头像  2：场地图片
	 * @param po UserPic实例或是CourtPic实例
	 * @return 图片类型 1：用户头像  2：场地图片 0：存储失败
	 * @throws Exception 
	 */
	public int uploadPic(int pic, Object po) throws Exception;
	
	public String uploadPic(int flag, File[] images, String[] imgNames, Long userId);
	
	public InputStream getPic(Long courtId);
	
	/**
	 * 更新Session中用户，比赛，场地信息
	 * @param key "userBean"、"courtBean"、"matchBean"中德一个，表明需要更新的信息
	 * @param id 在数据库中德标识
	 * @return 1成功   0失败
	 */
	public int updateInfo(String key, Long id);
	
	/**
	 * 用户发布场地
	 * @param court 场地信息
	 * @return 1 成功   0失败
	 */
	public int releaseCourt(Court court);
	
	public String uploadPicByStream(File resImage);
	/**
	 * 将图片字节流转换成Base64格式，以JSON传输到浏览器
	 * @param image 图片文件
	 */
	public void pushPicBase64(File image);
	
	/**
	 * 将用户头像存入服务器中
	 * @param images 用户头像
	 * @param imgNames 文件名
	 * @param userId 用户标识名
	 * @return "fail"失败    若成功，则返回路径名
	 */
	public String saveUserPic(File images, String imgNames, Long userId);
	
	/**
	 * 将场地图片存入服务器中
	 * @param images 用户头像
	 * @param imgNames 文件名
	 * @param userId 用户表示名
	 * @return "fail"失败    若成功，则返回路径名
	 */
	public String saveCourtPic(File[] images, String[] imgNames, Long userId);

	String uploadUserPic(int flag, File[] images, String[] imgNames, Long UserId);
	
}
