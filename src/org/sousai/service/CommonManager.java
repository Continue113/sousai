package org.sousai.service;

import org.sousai.domain.*;
import org.sousai.vo.*;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.*;
import java.io.File;

public interface CommonManager 
{
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
	 * 通过id返回制定的CourtType
	 * @param id 标识属性
	 * @return 指定的CourtType
	 */
	public CourtType findCourtTypeById(Integer id);
	
	/**
	 * 获取除id以外的所有比赛类型
	 * @param id 筛选掉的比赛类型
	 * @return 获取除id以外的所有比赛类型
	 */
	public List<MatchType> findAllMatchTypeEpt(Integer id);
	/**
	 * 返回相关对应比赛类型的场地类型
	 * @param id 比赛类型id
	 * @return 与比赛类型id相关的场地类型
	 * @throws Exception 
	 */
	public List<CourtType> findCourtTypeByMatchTypeId(Integer id) throws Exception;
	
	/**
	 * 通过MatchClass id，查询MatchType
	 * @param mcId MatchClass的id
	 * @param id 不显式的比赛类型的id
	 * @return 对应MatchClass的所有MatchType
	 */
	public List<MatchType> findMatchTypeByMatchClassIdEpt(Integer mcId, Integer id);
	
	/**
	 * 查询所有的比赛大类
	 * @return 所有比赛大类
	 */
	public List<MatchClass> findAllMatchClass();
	
	/**
	 * 查询除给定id以外的所有比赛大类
	 * @param id不查询的比赛大类
	 * @return 除开id标明的数据外的其他比赛大类
	 * @throws Exception 
	 */
	public List<MatchClass> findAllMatchClassEpt(Integer id) throws Exception;
	/**
	 * 查询想要查找的比赛类型，如乒乓球
	 * @param typeName	球类名称
	 * @return
	 */
	public List<MatchBean> findMatchByMatchTypeName(String typeName,int currentPage, int rows);
	
	/**
	 * 分页查询所有场地，并排序
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 */
	public List<CourtBean> findPagedAllCourtOrderBy(Integer currentPage, Integer rows, String orderByCol, Boolean isAsc);
	
	/**
	 * 高级搜索场地
	 * 
	 * @param keyValue
	 * @param matchType
	 * @param courtTypeId
	 * @param region
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 * @throws Exception
	 */
	public List<CourtBean> findPagedByParams(String keyValue, String matchType, Integer courtTypeId, String region, int currentPage, int rows,String orderByCol, Boolean isAsc) throws Exception;
	
	/**
	 * 通过id获取场地信息
	 * @param id
	 * @return
	 */
	public CourtBean findCourtBeanById(Integer id);
	
	/**
	 * 通过id获取比赛信息
	 * @param id
	 * @return
	 */
	public MatchBean findMatchBeanById(Integer id);
}
