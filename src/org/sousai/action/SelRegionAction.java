package org.sousai.action;

import java.util.List;

import org.sousai.action.base.*;
import org.sousai.domain.*;
import org.sousai.service.*;
import org.sousai.vo.*;

import static org.sousai.service.UserManager.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.*;

import org.apache.struts2.interceptor.*;

/**
 * Description:
 * <br/>this action will be executed when someone want to select a region
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */

public class SelRegionAction extends UserBaseAction
{
	private static final long serialVersionUID = 8955065723895264050L;
	private Region region;
	private List<Region> regions;
	
	private String PROV_SUCCESS = "prov_success";
	private String PROV_FAIL = "prov_fail";
	private String CITY_SUCCESS = "city_success";
	private String CITY_FAIL = "city_fail";
	private String ZONE_SUCCESS = "zone_success";
	private String ZONE_FAIL = "zone_fail";
	
	private String LEVEL_ERROR = "level_error";
	
	//region属性的setter和getter
	public void setRegion(Region region)
	{
		this.region = region;
	}
	public Region getRegion()
	{
		return this.region;
	}
	
	//regions属性的setter和getter
	public void setRegions(List<Region> regions)
	{
		this.regions = regions;
	}
	public List<Region> getRegions()
	{
		return this.regions;
	}
	
	public String execute() throws Exception
	{
		System.out.println("SelRegion now!!");
		ActionContext ctx = ActionContext.getContext();
		Region tempRegion = getRegion();
		int level = tempRegion.getLevel();
		
		//查询省级地区
		if(level == 0)
		{
			List<Region> provinces = umg.getProvince();
			if(provinces!=null && provinces.size()!=0)
			{
				setRegions(provinces);
				return PROV_SUCCESS;
			}
			return PROV_FAIL;
		}
		
		//查询市级地区
		else if(level == 1)
		{
			List<Region> cities = umg.getCity(tempRegion.getName(), tempRegion.getOrder());
			if(cities!=null && cities.size()!=0)
			{
				setRegions(cities);
				return CITY_SUCCESS;
			}
			return CITY_FAIL;
		}
		
		//查询区级地区
		else if(level == 2)
		{
			List<Region> zones = umg.getZone(tempRegion.getName(), tempRegion.getOrder());
			if(zones!=null && zones.size()!=0)
			{
				setRegions(zones);
				return ZONE_SUCCESS;
			}
			return ZONE_FAIL;
		}
		
		//level错误
		else
		{
			return LEVEL_ERROR;
		}
	}
}
