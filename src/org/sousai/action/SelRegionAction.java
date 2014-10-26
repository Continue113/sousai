package org.sousai.action;

import java.util.List;

import org.sousai.action.base.*;
import org.sousai.domain.*;
import org.sousai.tools.*;
import org.sousai.vo.RegionBean;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

/**
 * Description: <br/>
 * this action will be executed when someone want to select a region
 * 
 * <br/>
 * Copyright (C), 2014-2024, Myic
 * 
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */

public class SelRegionAction extends UserBaseAction {
	private static final long serialVersionUID = 8955065723895264050L;
	private Region region;
	private List<Region> regions;
	private boolean isNavBar = false; // 是否是导航条上的选择地区，如果是，需要存到Session
	// private Integer level;

	private String PROV_SUCCESS = "prov_success";
	private String PROV_FAIL = "prov_fail";
	private String CITY_SUCCESS = "city_success";
	private String CITY_FAIL = "city_fail";
	private String ZONE_SUCCESS = "zone_success";
	private String ZONE_FAIL = "zone_fail";

	private String LEVEL_ERROR = "level_error";

	// region属性的setter和getter
	public void setRegion(Region region) {
		this.region = region;
	}

	public Region getRegion() {
		return this.region;
	}

	// regions属性的setter和getter
	public void setRegions(List<Region> regions) {
		this.regions = regions;
	}

	public List<Region> getRegions() {
		return this.regions;
	}

	/**
	 * @return the isNavBar
	 */
	public boolean isNavBar() {
		return isNavBar;
	}

	/**
	 * @param isNavBar
	 *            the isNavBar to set
	 */
	public void setNavBar(boolean isNavBar) {
		this.isNavBar = isNavBar;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		System.out.println("SelRegion now!!");
		// ActionContext ctx = ActionContext.getContext();
		Region tempRegion = getRegion();
		if (tempRegion != null) {
			MyPrint.myPrint("tempRegion.getName() = " + tempRegion.getName());
			MyPrint.myPrint("tempRegion.getCode() = " + tempRegion.getCode());
			MyPrint.myPrint("tempRegion.getLevel() = " + tempRegion.getLevel());
		} else {
			MyPrint.myPrint("tempRegion null");
		}
		// level = getLevel();
		int level = tempRegion.getLevel();
		// int level2 = tempRegion.getLevel();
		// 查询省级地区
		if (level == 0) {
			List<Region> provinces = cmg.getProvince();
			if (provinces != null && provinces.size() != 0) {
				// setRegions(provinces);
				JSONUtils.toJson(ServletActionContext.getResponse(), provinces);
				System.out.println(PROV_SUCCESS);
			} else {
				System.out.println(PROV_FAIL);
			}
		}
		// 查询市级地区
		else if (level == 1) {
			System.out.println(tempRegion.getName() + " "
					+ tempRegion.getOrder());
			if (isNavBar) {
				RegionBean regionBean = new RegionBean();
				
				//确定navBar不使用新浪的，而使用自己的接口之后，还需要设定pId
				regionBean.setpName(tempRegion.getName());
				regionBean.setCode(tempRegion.getName());
				ActionContext.getContext().put("regionBean", regionBean);
			}
			List<Region> cities = cmg.getCity(tempRegion.getCode(),
					tempRegion.getOrder());
			if (cities != null && cities.size() != 0) {
				// setRegions(cities);
				JSONUtils.toJson(ServletActionContext.getResponse(), cities);
				System.out.println(CITY_SUCCESS);
			} else {
				System.out.println(CITY_FAIL);
			}
		}
		// 查询区级地区
		else if (level == 2) {
			if (isNavBar) {
				try {
					RegionBean regionBean = (RegionBean) ActionContext
							.getContext().get("RegionBean");
					if (regionBean != null) {
						regionBean.setcName(tempRegion.getName());
						regionBean.setcId(tempRegion.getId());
						regionBean.setCode(tempRegion.getCode());
						return "SUCCESS";
					}
				} catch (Exception e) {
					e.printStackTrace();
					return "FAIL";
				}
			}
			List<Region> zones = cmg.getZone(tempRegion.getCode(),
					tempRegion.getOrder());
			if (zones != null && zones.size() != 0) {
				// setRegions(zones);
				JSONUtils.toJson(ServletActionContext.getResponse(), zones);
				System.out.println(ZONE_SUCCESS);
			} else {
				System.out.println(ZONE_FAIL);
			}

		}
		// level错误
		else {
			System.out.println(LEVEL_ERROR);
		}
		return null;
	}
}
