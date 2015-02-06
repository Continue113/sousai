package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;
import org.sousai.vo.CourtBean;
import org.sousai.vo.UserBean;

public interface UserDao {
	/**
	 * ��ݱ�ʶ����������Userʵ��
	 * @param id
	 * @return ָ����ʶ���Զ�Ӧ��Userʵ��
	 */
	User get(Integer id);
	
	/**
	 * �־û�ָ����Userʵ�� 
	 * @param user
	 * @return Userʵ��־û���ı�ʶ����ֵ
	 */
	Long save(User user);
	
	/**
	 * �޸�ָ����Userʵ��
	 * @param user ��Ҫ���޸ĵ�Userʵ��
	 * @throws Exception 
	 */
	void update(User user);
	
	/**
	 * ɾ��ָ����Userʵ��
	 * @param user ��Ҫ��ɾ���Userʵ��
	 */
	void delete(User user);
	
	/**
	 * ��ݱ�ʾ����ɾ��Userʵ��
	 * @param id ��Ҫ��ɾ���Userʵ��ı�ʶ����ֵ
	 */
	void delete(Integer id);
	
	/**
	 * ��ѯȫ����Userʵ��
	 * @return ��ݿ���ȫ����Userʵ��
	 */
	List<UserBean> findAll();
	
	List<UserBean> findPagedAll(int currentPage, int rows);
	/**
	 * ��ѯ�û��������ƥ���Userʵ��
	 * @param user
	 * @return �û�������붼ƥ���Userʵ��
	 */
	List<User> findByNameAndPass(User user);
	
	/**
	 * ����û�������û�
	 * @param name �û�������
	 * @return ���ֶ�Ӧ���û�
	 */
	User findByName(String name);
	
	int countAllUser(Integer selType);
	
	/**
	 * 
	 * @param columns
	 * @param keyValue
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @param selType
	 * @return
	 * @throws Exception
	 */
	List<UserBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;
	
	/**
	 * 批量删除用户（将type置为0）
	 * @param ids
	 */
	void deleteUsers(Integer[] ids);
}
