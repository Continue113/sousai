package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.sousai.tools.CommonUtils;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SqlHelper extends HibernateDaoSupport {

	public List<?> findModelList_HQL(String strHql) {
		List<?> list = null;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findPagedModelList_HQL(String strHql, int currentPage,
			int pageSize) {
		List<?> list = null;
		try {
			// Session session = new
			// Configuration().configure().buildSessionFactory()
			// .getCurrentSession();
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			q.setMaxResults(pageSize);
			q.setFirstResult((currentPage - 1) * pageSize);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findPagedModelList_HQL(Query q, int currentPage, int pageSize) {
		List<?> list = null;
		try {
			// Session session = new
			// Configuration().configure().buildSessionFactory()
			// .getCurrentSession();
			q.setMaxResults(pageSize);
			q.setFirstResult((currentPage - 1) * pageSize);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findPagedModelList_SQL(String strSql, int currentPage,
			int pageSize, Class<?> c) {
		List<?> list = null;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createSQLQuery(strSql).addEntity(c);
			q.setMaxResults(pageSize);
			q.setFirstResult((currentPage - 1) * pageSize);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findModelList_SQL(String strSql, Class<?> c) {
		List<?> list = null;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createSQLQuery(strSql).addEntity(c);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int count(String strHql) {
		int value = -1;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			value = ((Long) session.createQuery(strHql).uniqueResult())
					.intValue();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return value;
	}

	/**
	 * 组装含有like的语句
	 * 
	 * @param column
	 *            字段/属性名，不能为空
	 * @param arg
	 *            字段/属性值，不能为空
	 * @return
	 * @throws Exception
	 */
	private String AssembleLikeStatement(String column, String arg)
			throws Exception {
		try {
			return String.format(" %1$s like '%2$s'", column, arg);
		} catch (Exception e) {
			throw e;
		}
	}

	/**
	 * 组装between语句
	 * 
	 * @param isQuota
	 *            是否需要加单引号
	 * @param column
	 *            字段/属性名
	 * @param start
	 *            字段/属性开始值，不能为空
	 * @param end
	 *            字段/属性结束值，不能为空
	 * @return
	 * @throws Exception
	 */
	private String AssembleBetweenStatement(boolean isQuota, String column,
			String start, String end) throws Exception {
		String value = null;
		try {
			if (!isQuota)
				value = String.format(" %1$s between %2$s and %3$s", column,
						start, end);
			else
				value = String.format(" %1$s between '%2$s' and '%3$s'",
						column, start, end);
			return value;
		} catch (Exception e) {
			throw e;
		}
	}

/**
	 * 拼接字符串
	 * 
	 * @param strRes
	 *            源字符串，需要包含Where 如"select count(*) from class_name Where"
	 * @param types
	 *            确定字段赋值类型 0为加单引号的=，如 column='value'; 1为不加单引号的=，如 column=value;
	 *            2为like ，如 column like value，value中需有%; 3为between加单引号，如 column
	 *            between 'value[0]' and 'value[1]'; 4为between不加单引号，如 column
	 *            between value[0] and value[1]; 5为column<'value'; 6为column<value; 
	 *            7为column>'value';8为column>value; 9为column<>'value'; 10为column<>value;
	 *             11为其他sql语句，会自动用括号包括起来，如column1=a or column2>2 会变成(column1=a or column2>2)
	 * 
	 * @param columns
	 *            字段/属性名称数组 需要手动加'and'、'or'等，对()的处理未完成，若type为11，则column为sql语句
	 * @param args
	 *            字段/属性值数组
	 * @return
	 * @throws Exception
	 */
	public String Append_String(String strRes, int[] types, String[] columns,
			Object[] args) throws Exception {
		String value = null;
		try {
			if (types.length != columns.length || types.length != args.length) {
				// 假定抛出自定义异常
				String errorPalce = (new Throwable().getStackTrace()[0])
						.toString(); // 当前发生异常位置
				throw new Exception(errorPalce + "参数拼接中length不对应");
			}
			value = strRes;
			StringBuilder strBuilder = new StringBuilder();
			strBuilder.append(value + " 1=1 ");
			for (int i = 0; i < args.length; i++) {
				switch (types[i]) {
				case 0:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					String temp0 = (String) args[i];
					temp0 = temp0.trim();
					strBuilder.append(String.format(" %s='%s' ", columns[i],
							temp0));
					break;
				case 1:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					// String temp1 = (String) args[i];
					// temp1 = temp1.trim();
					strBuilder.append(String.format(" %s=%s ", columns[i],
							args[i]));
					break;
				case 2:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					String temp2 = (String) args[i];
					temp2 = temp2.trim();
					strBuilder.append(" "
							+ AssembleLikeStatement(columns[i], temp2));
					break;
				case 3:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					Object[] temp3 = (Object[]) args[i];
					if (temp3.length != 2) {
						String errorPalce = (new Throwable().getStackTrace()[0])
								.toString(); // 当前发生异常位置
						throw new Exception(errorPalce + "参数拼接中length不正确");
					}
					strBuilder.append(" "
							+ AssembleBetweenStatement(true, columns[i],
									temp3[0].toString(), temp3[1].toString()));
					break;
				case 4:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					Object[] temp4 = (Object[]) args[i];
					if (temp4.length != 2) {
						String errorPalce = (new Throwable().getStackTrace()[0])
								.toString(); // 当前发生异常位置
						throw new Exception(errorPalce + "参数拼接中length不正确");
					}
					strBuilder.append(" "
							+ AssembleBetweenStatement(false, columns[i],
									temp4[0].toString(), temp4[1].toString()));
					break;
				case 5:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<'%2$s' ",
							columns[i], args[i]));
					break;
				case 6:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<%2$s ", columns[i],
							args[i]));
					break;
				case 7:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s>'%2$s' ",
							columns[i], args[i]));
					break;
				case 8:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s>%2$s ", columns[i],
							args[i]));
					break;
				case 9:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<>'%2$s' ",
							columns[i], args[i]));
					break;
				case 10:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<>%2$s ", columns[i],
							args[i]));
					break;
				case 11:
					// 这里，columns[i]应为sql语句
					if (!CommonUtils.isNullOrEmpty(columns[i])) {
						strBuilder.append(" (" + columns[i] + ") ");
					}
					break;
				default:
					break;
				}
			}
			value = strBuilder.toString();
			System.out.println(value);
		} catch (Exception e) {
			e.printStackTrace();
			String errorPalce = (new Throwable().getStackTrace()[0]).toString(); // 当前发生异常位置
			throw new Exception(errorPalce + "参数拼接出错");
		}
		return value;
	}

	public String Append_StringWithout1(String strRes, int[] types,
			String[] columns, Object[] args) throws Exception {
		String value = null;
		try {
			if (types.length != columns.length || types.length != args.length) {
				// 假定抛出自定义异常
				String errorPalce = (new Throwable().getStackTrace()[0])
						.toString(); // 当前发生异常位置
				throw new Exception(errorPalce + "参数拼接中length不对应");
			}
			value = strRes;
			StringBuilder strBuilder = new StringBuilder();
			strBuilder.append(value + " ");
			for (int i = 0; i < args.length; i++) {
				switch (types[i]) {
				case 0:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					String temp0 = (String) args[i];
					temp0 = temp0.trim();
					strBuilder.append(String.format(" %s='%s' ", columns[i],
							temp0));
					break;
				case 1:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					// String temp1 = (String) args[i];
					// temp1 = temp1.trim();
					strBuilder.append(String.format(" %s=%s ", columns[i],
							args[i]));
					break;
				case 2:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					String temp2 = (String) args[i];
					temp2 = temp2.trim();
					strBuilder.append(" "
							+ AssembleLikeStatement(columns[i], temp2));
					break;
				case 3:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					Object[] temp3 = (Object[]) args[i];
					if (temp3.length != 2) {
						String errorPalce = (new Throwable().getStackTrace()[0])
								.toString(); // 当前发生异常位置
						throw new Exception(errorPalce + "参数拼接中length不正确");
					}
					strBuilder.append(" "
							+ AssembleBetweenStatement(true, columns[i],
									temp3[0].toString(), temp3[1].toString()));
					break;
				case 4:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					Object[] temp4 = (Object[]) args[i];
					if (temp4.length != 2) {
						String errorPalce = (new Throwable().getStackTrace()[0])
								.toString(); // 当前发生异常位置
						throw new Exception(errorPalce + "参数拼接中length不正确");
					}
					strBuilder.append(" "
							+ AssembleBetweenStatement(false, columns[i],
									temp4[0].toString(), temp4[1].toString()));
					break;
				case 5:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<'%2$s' ",
							columns[i], args[i]));
					break;
				case 6:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<%2$s ", columns[i],
							args[i]));
					break;
				case 7:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s>'%2$s' ",
							columns[i], args[i]));
					break;
				case 8:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s>%2$s ", columns[i],
							args[i]));
					break;
				case 9:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<>'%2$s' ",
							columns[i], args[i]));
					break;
				case 10:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					strBuilder.append(String.format(" %1$s<>%2$s ", columns[i],
							args[i]));
					break;
				case 11:
					// 这里，columns[i]应为sql语句
					if (!CommonUtils.isNullOrEmpty(columns[i])) {
						strBuilder.append(" (" + columns[i] + ") ");
					}
					break;
				default:
					break;
				}
			}
			value = strBuilder.toString();
			System.out.println(value);
		} catch (Exception e) {
			e.printStackTrace();
			String errorPalce = (new Throwable().getStackTrace()[0]).toString(); // 当前发生异常位置
			throw new Exception(errorPalce + "参数拼接出错");
		}
		return value;
	}

/**
	 * 拼接字符串
	 * 
	 * @param strRes
	 *            源字符串，需要包含Where 如"select count(*) from class_name Where"
	 * @param types
	 *            确定字段赋值类型 0为加单引号的=，如 column='value'; 1为不加单引号的=，如 column=value;
	 *            2为like ，如 column like value，value中需有%; 3为between加单引号，如 column
	 *            between 'value[0]' and 'value[1]'; 4为between不加单引号，如 column
	 *            between value[0] and value[1]; 5为column<'value'; 6为column<value; 
	 *            7为column>'value';8为column>value; 9为column<>'value'; 10为column<>value;
	 *             11为其他sql语句，会自动用括号包括起来，如column1=a or column2>2 会变成(column1=a or column2>2)
	 * 
	 * @param columns
	 *            字段/属性名称数组 需要手动加'and'、'or'等，对()的处理未完成，若type为11，则column为sql语句
	 * @param args
	 *            字段/属性值数组
	 * @param relations
	 * 			  关系，如0为空，1为and，2为or 
	 * @param flag 标记前边是否已有条件语句，这个关系到是否需要加and或者or
	 * @return
	 * @throws Exception
	 */
	public String Append_StringV2(String strRes, int[] types, String[] columns,
			Object[] args, int[] relations, boolean flag) throws Exception {
		String value = null;
		try {
			if (types.length != columns.length || types.length != args.length
					|| types.length != relations.length) {
				// 假定抛出自定义异常
				String errorPalce = (new Throwable().getStackTrace()[0])
						.toString(); // 当前发生异常位置
				throw new Exception(errorPalce + "参数拼接中length不对应");
			}
			value = strRes;
			StringBuilder strBuilder = new StringBuilder();
			strBuilder.append(value);
			for (int i = 0; i < args.length; i++) {
				if (flag) {
					switch (relations[i]) {
					case 0:
						break;
					case 1:
						strBuilder.append(" and ");
						break;
					case 2:
						strBuilder.append(" or ");
						break;
					default:
						break;
					}
				}
				switch (types[i]) {
				case 0:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					String temp0 = (String) args[i];
					temp0 = temp0.trim();
					strBuilder.append(String.format(" %s='%s' ", columns[i],
							temp0));
					break;
				case 1:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					// String temp1 = (String) args[i];
					// temp1 = temp1.trim();
					flag = true;
					strBuilder.append(String.format(" %s=%s ", columns[i],
							args[i]));
					break;
				case 2:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					String temp2 = (String) args[i];
					temp2 = temp2.trim();
					strBuilder.append(" "
							+ AssembleLikeStatement(columns[i], temp2));
					break;
				case 3:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					Object[] temp3 = (Object[]) args[i];
					if (temp3.length != 2) {
						String errorPalce = (new Throwable().getStackTrace()[0])
								.toString(); // 当前发生异常位置
						throw new Exception(errorPalce + "参数拼接中length不正确");
					}
					strBuilder.append(" "
							+ AssembleBetweenStatement(true, columns[i],
									temp3[0].toString(), temp3[1].toString()));
					break;
				case 4:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					Object[] temp4 = (Object[]) args[i];
					if (temp4.length != 2) {
						String errorPalce = (new Throwable().getStackTrace()[0])
								.toString(); // 当前发生异常位置
						throw new Exception(errorPalce + "参数拼接中length不正确");
					}
					strBuilder.append(" "
							+ AssembleBetweenStatement(false, columns[i],
									temp4[0].toString(), temp4[1].toString()));
					break;
				case 5:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					strBuilder.append(String.format(" %1$s<'%2$s' ",
							columns[i], args[i]));
					break;
				case 6:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					strBuilder.append(String.format(" %1$s<%2$s ", columns[i],
							args[i]));
					break;
				case 7:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					strBuilder.append(String.format(" %1$s>'%2$s' ",
							columns[i], args[i]));
					break;
				case 8:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					strBuilder.append(String.format(" %1$s>%2$s ", columns[i],
							args[i]));
					break;
				case 9:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					strBuilder.append(String.format(" %1$s<>'%2$s' ",
							columns[i], args[i]));
					break;
				case 10:
					if (CommonUtils.isNullOrEmpty(args[i])) {
						break;
					}
					flag = true;
					strBuilder.append(String.format(" %1$s<>%2$s ", columns[i],
							args[i]));
					break;
				case 11:
					// 这里，columns[i]应为sql语句
					if (!CommonUtils.isNullOrEmpty(columns[i])) {
						strBuilder.append(" (" + columns[i] + ") ");
					}
					flag = true;
					break;
				default:
					break;
				}
			}
			value = strBuilder.toString();
			System.out.println(value);
		} catch (Exception e) {
			e.printStackTrace();
			String errorPalce = (new Throwable().getStackTrace()[0]).toString(); // 当前发生异常位置
			throw new Exception(errorPalce + "参数拼接出错");
		}
		return value;
	}
}
