package org.sousai.service;

import org.sousai.vo.*;
import org.sousai.domain.*;

import java.util.List;
public interface AdminManager {
	
	/**
	 * 获取所有评论
	 * @return
	 */
	public List<MessageBean> getAllMessage();
	/**
	 * 获取所有场地
	 * @return
	 */
	public List<CourtBean> getAllCourt();
	
	public List<Match> getAllMatch();
	public List<UserBean> getAllUser();
}
