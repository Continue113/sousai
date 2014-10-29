package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;
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
	List<User> findAll();
	
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
	


}
