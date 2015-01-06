package org.sousai.search;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

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
import org.wltea.analyzer.lucene.IKAnalyzer;

public class MatchSearch {
	private DirectoryReader ireader = null;
	private Directory directory = null;

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
			System.out.println(docNum);
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

				System.out.println(name);
				
				matchList.add(new MatchData.Builder(null, name).id(id)
						.courtId(courtId).publishTime(publishTime)
						.matchType(matchType).matchStartTime(matchStartTime)
						.matchDeadline(matchDeadline)
						.matchIntroduction(matchIntroduction).build());
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

	public LinkedList<MatchData> matchSearch(String searchContent,String indexPath){
		
		return indexSearch(new IKAnalyzer(true),new File(indexPath),searchContent) ;
	}
	
	/*public static void main(String[] args) {
		//new IndexCreate().createIndex();
		
		LinkedList<MatchData> matchList = matchSearch("北京工业大学","/home/lei/data") ;
		
		for(MatchData matchData:matchList){
			System.out.println(matchData);
		}
	}*/
}