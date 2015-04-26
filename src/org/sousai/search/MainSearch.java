package org.sousai.search;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.apache.struts2.ServletActionContext;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;
import org.wltea.analyzer.lucene.IKAnalyzer;

public class MainSearch {
	private DirectoryReader ireader = null;
	private Directory directory = null;
	private String content = null ;
	private LinkedList<MatchData> matches = new LinkedList<MatchData>();
	private FrontMessage matchesJson = null ;
	private Integer currentPage;
	private Integer rows;
	
	public FrontMessage getMatchesJson() {
		return matchesJson;
	}

	public void setMatchesJson(FrontMessage matchesJson) {
		this.matchesJson = matchesJson;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public LinkedList<MatchData> indexSearch(Analyzer analyzer, File indexFile,
			String keyword) {
		LinkedList<MatchData> matchList = new LinkedList<MatchData>();
		// id,courtId,name,publishTime,matchType,matchStartTime,matchDeadline,matchIntroduction
		// ID,NAME,TYPE,BEGINTIME,ENDTIME,RULE,RELTIME,COURTID
		try {
			directory = FSDirectory.open(indexFile);

			int id = 0;
			int courtId = 0;
			String name = null;
			String publishTime = null;
			String matchType = null;
			String matchStartTime = null;
			String matchDeadline = null;
			String matchIntroduction = null;
			String courtName = null ;
			String state = null ;
			String beginWeek = null ;
			String endWeek = null ;

			// 设定搜索目录
			ireader = DirectoryReader.open(directory);
			IndexSearcher isearcher = new IndexSearcher(ireader);

			// 对多field进行搜索
			java.lang.reflect.Field[] fields = IndexItem.class
					.getDeclaredFields();
			int length = fields.length;

			String[] multiFields = new String[length];
			for (int i = 0; i < length; i++) {
				multiFields[i] = fields[i].getName();
			}
			MultiFieldQueryParser parser = new MultiFieldQueryParser(
					Version.LUCENE_47, multiFields, analyzer);

			// 设定具体的搜索词
			Query query = parser.parse(keyword); 
			ScoreDoc[] hits = isearcher.search(query, null, Integer.MAX_VALUE).scoreDocs; // hits即查到的文档数组
																							// Integer.MAX_VALUE表示查找query前无穷个
			// 得到高亮后的文本

			// 由于文章数过多的时候会下面的循环会耗费太多时间，而且搜索时，一般前几页才有用，所以这里只取前20页即200篇文章
			int docNum = hits.length;
			//System.out.println(docNum);
			if (docNum > 200)
				docNum = 198;
			Document hitDoc = null;
			for (int i = 0; i < docNum; ++i) {
				hitDoc = isearcher.doc(hits[i].doc); // hits[0]表示文档1的内容
														// hitDoc即文本内容
				// id,courtId,name,publishTime,matchType,matchStartTime,matchDeadline,matchIntroduction
				id = Integer.parseInt(hitDoc.get(multiFields[0]));
				courtId = Integer.parseInt(hitDoc.get(multiFields[1]));
				name = hitDoc.get(multiFields[2]);
				publishTime = hitDoc.get(multiFields[3]);
				matchType = hitDoc.get(multiFields[4]);
				matchStartTime = hitDoc.get(multiFields[5]);
				matchDeadline = hitDoc.get(multiFields[6]);
				matchIntroduction = hitDoc.get(multiFields[7]);
				courtName = new Jdbc().selectCourtNameById(courtId) ;
				state = getState(matchStartTime,matchDeadline) ;
				beginWeek = parseWeek(matchStartTime) ;
				endWeek = parseWeek(matchDeadline) ;
				System.out.println(beginWeek);
				matchList.add(new MatchData.Builder(null, name).id(id)
						.courtId(courtId)
						.publishTime(publishTime)
						.matchType(matchType).matchStartTime(matchStartTime)
						.matchDeadline(matchDeadline)
						.matchIntroduction(matchIntroduction)
						.courtName(courtName)
						.state(state)
						.beginWeek(beginWeek)
						.endWeek(endWeek).build());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ireader.close();
				directory.close();
			} catch (IOException e) {
			}
		}
		return matchList;
	}
	
	public String getState(String begin,String end) {
		String str = null ;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		try {
			Date currentDate = new Date() ;
			Date beginDate = sdf.parse(begin) ;
			Date endDate = sdf.parse(end) ;
			if(currentDate.before(beginDate))
				str = "报名中" ;
			else if(currentDate.after(endDate))
				str = "已结束" ;
			else
				str = "比赛中" ;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return str ;
	}

	public String parseWeek(String time){
		String week = null ;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Calendar cal=Calendar.getInstance();
		try {
			cal.setTime(sdf.parse(time));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int n = cal.get(Calendar.DAY_OF_WEEK); 
		
		if(n==1)
			week = "星期日" ;
		else if(n==2)
			week = "星期一" ;
		else if(n==3)
			week = "星期二" ;
		else if(n==4)
			week = "星期三" ;
		else if(n==5)
			week = "星期四" ;
		else if(n==6)
			week = "星期五" ;
		else if(n==7)
			week = "星期六" ;
		return week ;
	}
	public LinkedList<MatchData> matchSearch(String searchContent,String indexPath){
		
		return indexSearch(new IKAnalyzer(true),new File(indexPath),searchContent) ;
	}
	
	public String mainSearch(){
		if(currentPage==null)
			currentPage=1 ;
		if(rows==null)
			rows = 25 ;
		LinkedList<MatchData> listAll = matchSearch(content,"/") ;
		for(int i=(currentPage-1)*rows;i<((currentPage-1)*rows+25)&&i<listAll.size();i++){
			matches.add(listAll.get(i)) ;
		}
		matchesJson = new FrontMessage(matches,matches.size()) ;
		JSONUtils.toJson(ServletActionContext.getResponse(), matchesJson);
		return null ;
	}
	/*public static void main(String[] args) {
		//new IndexCreate().createIndex();
		
		LinkedList<MatchData> matchList = matchSearch("北京工业大学","/home/lei/data") ;
		
		for(MatchData matchData:matchList){
			System.out.println(matchData);
		}
	}*/
}