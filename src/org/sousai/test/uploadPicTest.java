package org.sousai.test;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.sousai.action.GetMatchByParamsAction;
import org.sousai.dao.impl.SqlHelper;
public class uploadPicTest {

	public static void main(String argsp[]) {
		try {
			new GetMatchByParamsAction().execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// String strHql = " from Match where dayOfWeek(beginTime)=0";
		// Session session = new
		// Configuration().configure().buildSessionFactory()
		// .openSession();
		// Transaction t = session.beginTransaction();
		// Query q = session.createQuery(strHql);
		// System.out.println("size = " + q.list());
		// t.commit();
		// "select new org.sousai.vo.MatchBean(m.id,m.name,m.type,"
		// + "m.beginTime,m.endTime,m.courtId,c.name,m.rule,m.relTime,"
		// +
		// "m.verify,m.score,m.userId,u.name,c.region) from Match m, Court c, User u "
		// +
		// "where m.courtId=c.id and u.id=m.userId and (  (    m.name like '%足%')  or  (    m.type like '%足%')  or  (    c.region like '%足%')  or  (    m. addr  like '%足%') )  and  ( dayOfWeek( m.beginTime)<>1  and  dayOfWeek( m.beginTime)<>7 )  and   m.type='足球'  and    m.beginTime between '2014-12-01 00:00:00.0' and '2014-12-03 00:00:00.0' and    c.region like '%北京市-%' and(  m.beginTime<'2015-01-24' ) ";

	}
}
