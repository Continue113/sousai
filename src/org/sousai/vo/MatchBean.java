package org.sousai.vo;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

public class MatchBean implements Serializable{

	private static final long serialVersionUID = 9148543628409192006L;

	private Integer id; // 数据库自添加，不用传递给后台
	private String name;
	private String type;
	private Date beginTime;
	private Date endTime;
	private Integer courtId; // 可传可不传
	private String rule; // 可传可不传
	private Timestamp relTime;
	private char verify;
	private String score; // 可传可不传
	private Integer userId; // 可传可不传
}
