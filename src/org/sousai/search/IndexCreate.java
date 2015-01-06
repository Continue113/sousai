package org.sousai.search;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.wltea.analyzer.lucene.IKAnalyzer;
public class IndexCreate {
	private Directory directory;

	/**
	 * 返回IndexWriter
	 * */
	public IndexWriter getWriter(){
		// Analyzer analyzer=new StandardAnalyzer(Version.LUCENE_47);//设置标准分词器
		// ,默认是一元分词
		Analyzer analyzer = new IKAnalyzer(true); // true智能分词
		IndexWriterConfig iwc = new IndexWriterConfig(Version.LUCENE_47,
				analyzer);// 设置IndexWriterConfig
		// iwc.setRAMBufferSizeMB(3);//设置缓冲区大小
		IndexWriter iw = null ;
		try {
			iw = new IndexWriter(directory, iwc) ;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return iw;
	}

	public Document creatTodayIndexDoc(){
		Document indexDoc = new Document();
		// NAME,TYPE,BEGINTIME,ENDTIME,RULE
		LinkedList<MatchData> matchList = new Jdbc().selectToday() ;
		
		String name = null ;
		String matchType = null ;
		String matchStartTime = null ;
		String matchDeadline = null ;
		String matchIntroduction = null ;
		MatchData matchData = null ;
		
		for(int i=0;i<matchList.size();i++){
			matchData = matchList.get(i) ;
			name = matchData.getName() ;
			matchType = matchData.getMatchType() ;
			matchStartTime = matchData.getMatchStartTime() ;
			matchDeadline = matchData.getMatchDeadline() ;
			matchIntroduction = matchData.getMatchIntroduction() ;
			
			indexDoc.add(new TextField("name",name,Store.YES));
			indexDoc.add(new TextField("matchType",matchType,Store.YES));
			indexDoc.add(new TextField("matchStartTime",matchStartTime,Store.YES));
			indexDoc.add(new TextField("matchDeadline",matchDeadline,Store.YES));
			indexDoc.add(new TextField("matchIntroduction",matchIntroduction,Store.YES));
		}
		
		return indexDoc ;
	}
	
	public void saveIndex(String indexSavePath){
		IndexWriter writer = null;
		try {
			directory = FSDirectory.open(new File(indexSavePath));// 打开存放索引的路径
			writer = getWriter();

			writer.addDocument(creatTodayIndexDoc());// 添加进写入流里

			// writer.forceMerge(1);// 优化压缩段,大规模添加数据的时候建议，少使用本方法，会影响性能
			writer.commit();// 提交数据
			System.out.println("添加成功");
		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			if (writer != null) {
				try {
					writer.close();// 关闭流
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public void createIndex(){
		saveIndex("/home/lei/data") ;
	}
}
