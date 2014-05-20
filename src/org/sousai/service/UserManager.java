package org.sousai.service;

import org.sousai.domain.*;
import org.sousai.vo.*;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.*;

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
	
	//用户头像
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
	 * 获取所有省份
	 * @return 所有省份
	 */
	public List<Region> getProvince();
	
	/**
	 * 获取对应省份下属市级地区
	 * @param province 省份
	 * @param order 顺序号，防重复省名，最小为0
	 * @return 对应市级地区
	 */
	public List<Region> getCity(String provinceCode, int order);
	
	/**
	 * 获取对应市级地区的下属区级地区
	 * @param city 市级地区
	 * @param order 顺序号，防重复市名，最小为0
	 * @return 对应区级地区
	 */
	public List<Region> getZone(String cityCode, int order);
	
	/**
	 * 存储图片
	 * @param pic 图片类型 1：用户头像  2：场地图片
	 * @param po UserPic实例或是CourtPic实例
	 * @return 图片类型 1：用户头像  2：场地图片 0：存储失败
	 */
	public int uploadPic(int pic, Object po);
	
	public InputStream getPic(Long courtId);
	
}
