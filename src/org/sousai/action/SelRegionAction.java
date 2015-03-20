package org.sousai.action;

import java.util.List;

import org.sousai.action.base.*;
import org.sousai.common.Constant;
import org.sousai.domain.*;
import org.sousai.tools.*;
import org.sousai.vo.RegionBean;
import org.sousai.vo.UserBean;
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
	private boolean isNavBar; // 是否是导航条上的选择地区，如果是，需要存到Session
	private RegionBean regionBean;
	// private Integer level;

	private String PROV_SUCCESS = "prov_success";
	private String PROV_FAIL = "prov_fail";
	private String CITY_SUCCESS = "city_success";
	private String CITY_FAIL = "city_fail";
	private String ZONE_SUCCESS = "zone_success";
	private String ZONE_FAIL = "zone_fail";
	private int SUCCESS = 0;
	private int FAIL = 1;
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
	public boolean getIsNavBar() {
		return isNavBar;
	}

	/**
	 * @param isNavBar
	 *            the isNavBar to set
	 */
	public void setIsNavBar(boolean isNavBar) {
		this.isNavBar = isNavBar;
	}

	/**
	 * @return the regionBean
	 */
	public RegionBean getRegionBean() {
		return regionBean;
	}

	/**
	 * @param regionBean
	 *            the regionBean to set
	 */
	public void setRegionBean(RegionBean regionBean) {
		this.regionBean = regionBean;
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

			// if (isNavBar) { // 确定navBar不使用新浪的，而使用自己的接口之后，还需要设定pId
			// regionBean = new RegionBean();
			// regionBean.setpName(tempRegion.getName());
			// regionBean.setCode(tempRegion.getName());
			// }

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
			MyPrint.myPrint("in level=2,isNamVar = " + isNavBar);
			MyPrint.myPrint("regionBean = " + regionBean);
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
		// 导航栏的选择地区，点击确定时
		else if (isNavBar) {
			try {
				if (regionBean != null) {
					if (ActionContext.getContext().getSession()
							.get("regionBean") != null) {
						RegionBean tRegionBean = (RegionBean) ActionContext
								.getContext().getSession().get("regionBean");
						tRegionBean.setcId(regionBean.getcId());
						MyPrint.myPrint("regionBean.getcName() = "
								+ regionBean.getcName());
						tRegionBean.setcName(regionBean.getcName());
						tRegionBean.setCode(regionBean.getCode());
						tRegionBean.setpId(regionBean.getpId());
						tRegionBean.setrName(regionBean.getrName());
						tRegionBean.setrId(regionBean.getrId());
						MyPrint.myPrint("regionBean.getpName() = "
								+ regionBean.getpName());
						tRegionBean.setpName(regionBean.getpName());
						MyPrint.myPrint("session.get(\"regionBean\").getcName() = "
								+ ((RegionBean) ActionContext.getContext()
										.getSession().get("regionBean"))
										.getcName());
					}
					// 选省->选市，这种情况下需要将regionBean的pName，cName等设定好之后再一起放到session
					else {
						MyPrint.myPrint("regionBean.getpName() = "
								+ regionBean.getcName());
						MyPrint.myPrint("regionBean.getpName() = "
								+ regionBean.getpName());
						ActionContext.getContext().getSession()
								.put("regionBean", regionBean);
						MyPrint.myPrint("session.get(\"regionBean\").getcName() = "
								+ ((RegionBean) ActionContext.getContext()
										.getSession().get("regionBean"))
										.getcName());
					}
					JSONUtils.toJson(ServletActionContext.getResponse(),
							SUCCESS);
				} else
					JSONUtils.toJson(ServletActionContext.getResponse(), FAIL);
			} catch (Exception e) {
				e.printStackTrace();
				JSONUtils.toJson(ServletActionContext.getResponse(), FAIL);
			}
			UserBean userBean = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");
			if (userBean != null) {
				User user = new User(userBean);
				RegionBean regionBean = (RegionBean) ActionContext.getContext()
						.getSession().get("regionBean");
				//若CId为空，则用户只选择了省，则使用pId存入数据库
//				int rId = (regionBean.getcId()==null)?regionBean.getpId():regionBean.getcId();
				int rId = regionBean.getrId();
				user.setLastRegionId(rId);
				umg.updateUser(user);
			} else {
				MyPrint.myPrint("userBean = " + userBean);
			}
//			List<Region> zones = cmg.getZone(tempRegion.getCode(),
//					tempRegion.getOrder());
//			if (zones != null && zones.size() != 0) {
//				// setRegions(zones);
//				JSONUtils.toJson(ServletActionContext.getResponse(), zones);
//				System.out.println(ZONE_SUCCESS);
//			} else {
//				System.out.println(ZONE_FAIL);
//			}
		}
		//没有该操作
		else{
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}

}
