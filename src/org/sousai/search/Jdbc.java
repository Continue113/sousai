package org.sousai.search;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

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
		String sql = "delete from student where id = ?";
		try {
			conn = JdbcMySqlUtil.getConnection();
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
	public void update(int id, String url, String name, String matchType,
			String matchAddress, String matchStartTime, String matchDeadline,
			String matchIntroduction) {
		/*
		 * "/home/lei/data"为存储文件的目录,可改为自己的 抓取下来的信息文件,内容分为
		 * 比赛信息源地址,比赛名称,比赛类型,比赛地点,比赛开始时间,截止日期,比赛简介
		 */
		String sql = "update matches set url=?,name=?,matchType=?,matchAddress=?,matchStartTime=?,matchDeadline=?,matchIntroduction=? where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, url);
			pstmt.setString(2, name);
			pstmt.setString(3, matchType);
			pstmt.setString(4, matchAddress);
			pstmt.setString(5, matchStartTime);
			pstmt.setString(6, matchDeadline);
			pstmt.setString(7, matchIntroduction);
			pstmt.setInt(8, id);
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

	// 4.查找信息
	public LinkedList<MatchData> select() {
		//StringBuilder jsonMatch = new StringBuilder();
		LinkedList<MatchData> matchList = new LinkedList<MatchData>();
		try {
			String sql = "select * from matches";
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();

			/*jsonMatch.append("{\"matches\":[");*/
			while (result.next()) {
				/*jsonMatch.append("{");
				jsonMatch.append("\"id\":\"" + result.getInt("id")
						+ "\",\"url\":\"" + result.getString("url")
						+ "\",\"name\":\"" + result.getString("name")
						+ "\",\"matchType\":\"" + result.getString("matchType")
						+ "\",\"matchAddress\":\""
						+ result.getString("matchAddress")
						+ "\",\"matchStartTime\":\""
						+ result.getString("matchStartTime")
						+ "\",\"matchDeadline\":\""
						+ result.getString("matchDeadline")
						+ "\",\"matchIntroduction\":\""
						+ result.getString("matchIntroduction"));

				jsonMatch.append("},");*/

				matchList.add(new MatchData.Builder(result.getString("url"),
						result.getString("name"))
						.id(result.getInt("id"))
						.matchType(result.getString("matchType"))
						.matchAddress(result.getString("matchAddress"))
						.matchStartTime(result.getString("matchStartTime"))
						.matchDeadline(result.getString("matchDeadline"))
						.matchIntroduction(
								result.getString("matchIntroduction")).build());
				/*result.getString("name");
				result.getString("matchType");
				result.getString("matchAddress");
				result.getString("matchStartTime");
				result.getString("matchDeadline");
				result.getString("matchIntroduction");*/
			}
			//jsonMatch.append("]}");
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
		// Connection conn =
		// DriverManager.getConnection("jdbc:mysql://localhost:3306/sousai?user=root&password=root");
		Connection conn = DriverManager
				.getConnection(
						"jdbc:mysql://localhost:3306/SOUSAI?useUnicode=true&characterEncoding=UTF-8",
						"root", "root");
		return conn;
	}

}