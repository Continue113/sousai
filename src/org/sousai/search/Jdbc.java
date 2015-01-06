package org.sousai.search;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;

import org.sousai.tools.CommonUtils;

public class Jdbc {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet result = null;

	public Jdbc() {
		try {
			conn = JdbcMySqlUtil.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 1.增加信息
	public void add(MatchData matchData) {
		String sql = "insert into matches(url,name,matchType,matchAddress,matchStartTime,matchDeadline,matchIntroduction) values(?,?,?,?,?,?,?)";
		try {

			pstmt = conn.prepareStatement(sql);
			/*
			 * "/home/lei/data"为存储文件的目录,可改为自己的 抓取下来的信息文件,内容分为
			 * 比赛信息源地址,比赛名称,比赛类型,比赛地点,比赛开始时间,截止日期,比赛简介
			 */

			pstmt.setString(1, matchData.getUrl());
			System.out.println(matchData.getUrl());
			pstmt.setString(2, matchData.getName());
			pstmt.setString(3, matchData.getMatchType());
			pstmt.setString(4, matchData.getMatchAddress());
			pstmt.setString(5, matchData.getMatchStartTime());
			pstmt.setString(6, matchData.getMatchDeadline());
			pstmt.setString(7, matchData.getMatchIntroduction());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 2.删除信息
	public void delete(int id) {
		String sql = "delete from matches where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 3.更新信息
	public void update(MatchData matchData) {
		/*
		 * "/home/lei/data"为存储文件的目录,可改为自己的 抓取下来的信息文件,内容分为
		 * 比赛信息源地址,比赛名称,比赛类型,比赛地点,比赛开始时间,截止日期,比赛简介
		 */
		String sql = "update matches set url=?,name=?,matchType=?,matchAddress=?,matchStartTime=?,matchDeadline=?,matchIntroduction=? where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, matchData.getUrl());
			pstmt.setString(2, matchData.getName());
			pstmt.setString(3, matchData.getMatchType());
			pstmt.setString(4, matchData.getMatchAddress());
			pstmt.setString(5, matchData.getMatchStartTime());
			pstmt.setString(6, matchData.getMatchDeadline());
			pstmt.setString(7, matchData.getMatchIntroduction());
			pstmt.setInt(8, matchData.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 4.查找所有信息
	public LinkedList<MatchData> select() {
		LinkedList<MatchData> matchList = new LinkedList<MatchData>();
		try {
			String sql = "select * from matches";
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();

			while (result.next()) {

				matchList.add(new MatchData.Builder(result.getString("url"),
						result.getString("name"))
						.id(result.getInt("id"))
						.matchType(result.getString("matchType"))
						.matchAddress(result.getString("matchAddress"))
						.matchStartTime(result.getString("matchStartTime"))
						.matchDeadline(result.getString("matchDeadline"))
						.matchIntroduction(
								result.getString("matchIntroduction")).build());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return matchList;
	}

	public LinkedList<MatchData> selectFromIds(String ids[]) {
		LinkedList<MatchData> matchList = new LinkedList<MatchData>();
		for (int i = 0; i < ids.length; ++i) {
			try {
				String sql = "select * from matches where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(ids[i]));
				result = pstmt.executeQuery();

				while (result.next()) {

					matchList.add(new MatchData.Builder(
							result.getString("url"), result.getString("name"))
							.matchType(result.getString("matchType"))
							.matchAddress(result.getString("matchAddress"))
							.matchStartTime(result.getString("matchStartTime"))
							.matchDeadline(result.getString("matchDeadline"))
							.matchIntroduction(
									result.getString("matchIntroduction"))
							.build());

				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return matchList;
	}

	public void publish(MatchData matchData, int userId) {
		String sql = "insert into MATCHES(USERID,NAME,TYPE,BEGINTIME,ENDTIME,RULE) values(?,?,?,?,?,?)";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Timestamp startTime = null;
		Timestamp deadline = null;
		try {
			startTime = CommonUtils.ToTimestamp(sdf.parse(matchData
					.getMatchStartTime()));
			deadline = CommonUtils.ToTimestamp(sdf.parse(matchData
					.getMatchDeadline()));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userId);
			pstmt.setString(2, matchData.getName());
			pstmt.setString(3, matchData.getMatchType());
			pstmt.setTimestamp(4, startTime);
			pstmt.setTimestamp(5, deadline);
			pstmt.setString(6, matchData.getMatchIntroduction());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public LinkedList<MatchData> selectToday() {
		LinkedList<MatchData> matchList = new LinkedList<MatchData>();
		try {
			String sql = "select * from MATCHES where date(RELTIME) = curdate()";
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();

			while (result.next()) {
				// NAME,TYPE,BEGINTIME,ENDTIME,RULE
				matchList.add(new MatchData.Builder(null, result
						.getString("NAME")).matchType(result.getString("TYPE"))
						.matchStartTime(result.getString("BEGINTIME"))
						.matchDeadline(result.getString("ENDTIME"))
						.matchIntroduction(result.getString("RULE")).build());
			}
		} catch (SQLException e) {
			System.out.println(e);
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
		return matchList;
	}
}

class JdbcMySqlUtil {
	/**
	 * @param args
	 */
	static {
		// 1.注册驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		// 2.得到连接
		Connection conn = DriverManager
				.getConnection(
						"jdbc:mysql://localhost:3306/SOUSAI?useUnicode=true&characterEncoding=UTF-8",
						"root", "root");
		return conn;
	}

}