package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.HotWordDao;
import org.sousai.domain.HotWord;

public class HotWordDaoHibernate extends SqlHelper implements HotWordDao {

	@Override
	public HotWord get(Integer id) {
		return getHibernateTemplate().get(HotWord.class, id);
	}

	@Override
	public Integer save(HotWord hotWord) throws Exception {
		return (Integer) getHibernateTemplate().save(hotWord);
	}

	@Override
	public void update(HotWord hotWord) throws Exception {
		getHibernateTemplate().update(hotWord);
	}

	@Override
	public void delete(HotWord hotWord) throws Exception {
		getHibernateTemplate().delete(hotWord);
	}

	@Override
	public void delete(Integer id) throws Exception {
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<HotWord> findAll() throws Exception{
		return (List<HotWord>)getHibernateTemplate().find("from HotWord order by hot");
	}

}
