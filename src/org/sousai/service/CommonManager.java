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
	 * @param id标识属性
	 * @return 指定的CourtType
	 */
	public CourtType findCourtTypeById(Integer id);
}
