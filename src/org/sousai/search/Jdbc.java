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
		String sql = "insert into DATA_COLLECTION(url,name,matchType,matchAddress,matchStartTime,matchDeadline,matchIntroduction) values(?,?,?,?,?,?,?)";
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
		String sql = "update DATA_COLLECTION set state = 2 where id = ?";
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
	
	// 删除所有数据
	public void deleteAll(){
		String sql = "update DATA_COLLECTION set state = 2";
		try {
			pstmt = conn.prepareStatement(sql);
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
		String sql = "update DATA_COLLECTION set url=?,name=?,matchType=?,matchAddress=?,matchStartTime=?,matchDeadline=?,matchIntroduction=? where id = ?";
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
			String sql = "select * from DATA_COLLECTION where state = 1";
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
				String sql = "select * from DATA_COLLECTION where id = ?";
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

	public MatchData selectFromId(String id) {
		MatchData matchData = null;
		try {
			String sql = "select * from MATCHES where ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(id));
			result = pstmt.executeQuery();

			while (result.next()) {

				matchData = new MatchData.Builder(null,
						result.getString("NAME")).id(Integer.parseInt(id))
						.courtId(result.getInt("COURTID"))
						.publishTime(result.getString("RELTIME"))
						.matchType(result.getString("TYPE"))
						.matchStartTime(result.getString("BEGINTIME"))
						.matchDeadline(result.getString("ENDTIME"))
						.matchIntroduction(result.getString("RULE")).build();
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
		return matchData;
	}

	public void publish(MatchData matchData, int userId, int courtId) {
		String sql = "insert into MATCHES(USERID,NAME,TYPE,BEGINTIME,ENDTIME,RULE,COURTID) values(?,?,?,?,?,?,?)";
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
			pstmt.setInt(7, courtId);
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
				// ID,NAME,TYPE,BEGINTIME,ENDTIME,RULE,RELTIME,COURTID
				matchList.add(new MatchData.Builder(null, result
						.getString("NAME")).id(result.getInt("ID"))
						.courtId(result.getInt("COURTID"))
						.publishTime(result.getString("RELTIME"))
						.matchType(result.getString("TYPE"))
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

	public LinkedList<Court> selectCourtToday() {
		LinkedList<Court> courtList = new LinkedList<Court>();
		try {
			String sql = "select * from COURT where date(RELDATE) = curdate()";
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();

			while (result.next()) {
				// ID,NAME,COURTTYPEID,MATCHTYPE,REGIONID,ADDR,TABLENUM,TEL,MATCHCOUNT,PRICE,WORKTIME,INTRO,VERIFY,RELDATE,MODDATE,USERID
				courtList.add(new Court.Builder().id(result.getInt("ID"))
						.name(result.getString("NAME"))
						.courtTypeId(result.getInt("COURTTYPEID"))
						.matchType(result.getString("MATCHTYPE"))
						.address(result.getString("ADDR"))
						.tableNum(result.getInt("TABLENUM"))
						.tel(result.getString("TEL"))
						.matchCount(result.getInt("MATCHCOUNT"))
						.price(result.getString("PRICE"))
						.worktime(result.getString("WORKTIME"))
						.intro(result.getString("INTRO"))
						.verify(result.getString("VERIFY"))
						.relDate(result.getString("RELDATE"))
						.modDate(result.getString("MODDATE"))
						.userId(result.getInt("USERID")).build());
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
		return courtList;
	}

	// 统计某年某月的注册用户数量
	public int selectRegisterNum(int year, int month) {
		int registerNum = 0;
		String sql = "SELECT COUNT(REGTIME) FROM USER WHERE YEAR(REGTIME)="
				+ year + " AND MONTH(REGTIME)=" + month;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				registerNum = result.getInt(1);
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
		return registerNum;
	}

	// 统计某年某月的比赛发布(搜赛网)数量
	public int selectSousaiMatchPublish(int year, int month) {
		int registerNum = 0;
		String sql = "SELECT COUNT(RELTIME) FROM MATCHES WHERE YEAR(RELTIME)="
				+ year + " AND MONTH(RELTIME)=" + month
				+ " AND USERID in (select ID from USER where TYPE = '2')";
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				registerNum = result.getInt(1);
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
		return registerNum;
	}

	// 统计某年某月的比赛发布(自然人)数量
	public int selectNaturalMatchPublish(int year, int month) {
		int registerNum = 0;
		String sql = "SELECT COUNT(RELTIME) FROM MATCHES WHERE YEAR(RELTIME)="
				+ year + " AND MONTH(RELTIME)=" + month
				+ " AND USERID not in (select ID from USER where TYPE = '2')";
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				registerNum = result.getInt(1);
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
		return registerNum;
	}

	// 统计某年某月的场地发布(搜赛网)数量
	public int selectSousaiCourtPublish(int year, int month) {
		int registerNum = 0;
		String sql = "SELECT COUNT(RELDATE) FROM COURT WHERE YEAR(RELDATE)="
				+ year + " AND MONTH(RELDATE)=" + month
				+ " AND USERID in (select ID from USER where TYPE = '2')";
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				registerNum = result.getInt(1);
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
		return registerNum;
	}

	// 统计某年某月的场地发布(自然人)数量
	public int selectNaturalCourtPublish(int year, int month) {
		int registerNum = 0;
		String sql = "SELECT COUNT(RELDATE) FROM COURT WHERE YEAR(RELDATE)="
				+ year + " AND MONTH(RELDATE)=" + month
				+ " AND USERID NOT in (select ID from USER where TYPE = '2')";
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				registerNum = result.getInt(1);
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
		return registerNum;
	}

	// 统计评论数量 court_time
	public int selectCommentsNum(int year, int month) {
		int registerNum = 0;
		String sql = "SELECT COUNT(TIME) FROM MESSAGE WHERE YEAR(TIME)=" + year
				+ " AND MONTH(TIME)=" + month;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				registerNum = result.getInt(1);
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
		return registerNum;
	}

	// 统计各个地区的比赛数量
	public int selectCityCourt(String city, int dayNum, String matchType) {
		int courtNum = 0;
		String sql = "SELECT COUNT(COURTID) FROM MATCHES WHERE COURTID IN (SELECT ID FROM COURT WHERE REGION LIKE '%"
				+ city
				+ "%') AND RELTIME IN (select RELTIME from MATCHES where date_sub(curdate(), INTERVAL "
				+ dayNum
				+ " DAY) <= date(RELTIME)) AND TYPE = '"
				+ matchType
				+ "'";
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeQuery();
			while (result.next()) {
				courtNum = result.getInt(1);
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
		return courtNum;
	}

	// 通过id查看场地名称
	public String selectCourtNameById(int id) {
		String courtName = null;
		String sql = "SELECT NAME FROM COURT WHERE ID = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			result = pstmt.executeQuery();
			while (result.next()) {
				courtName = result.getString(1);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		return courtName;
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