package org.sousai.search;

import java.io.File;
import java.io.IOException;
import java.util.LinkedList;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.IntField;
import org.apache.lucene.document.StringField;
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
	public IndexWriter getWriter() {
		// Analyzer analyzer=new StandardAnalyzer(Version.LUCENE_47);//设置标准分词器
		// ,默认是一元分词
		Analyzer analyzer = new IKAnalyzer(true); // true智能分词
		IndexWriterConfig iwc = new IndexWriterConfig(Version.LUCENE_47,
				analyzer);// 设置IndexWriterConfig
		// iwc.setRAMBufferSizeMB(3);//设置缓冲区大小
		IndexWriter iw = null;
		try {
			iw = new IndexWriter(directory, iwc);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return iw;
	}

	public Document creatTodayIndexDoc(MatchData matchData) {
		Document indexDoc = new Document();
		// NAME,TYPE,BEGINTIME,ENDTIME,RULE
		int id = 0;
		int courtId = 0;
		String name = null;
		String publishTime = null;
		String matchType = null;
		String matchStartTime = null;
		String matchDeadline = null;
		String matchIntroduction = null;

		id = matchData.getId();
		courtId = matchData.getCourtId();
		name = matchData.getName();
		publishTime = matchData.getPublishTime();
		matchType = matchData.getMatchType();
		matchStartTime = matchData.getMatchStartTime();
		matchDeadline = matchData.getMatchDeadline();
		matchIntroduction = matchData.getMatchIntroduction();

		indexDoc.add(new IntField("id", id, Store.YES));
		indexDoc.add(new IntField("courtId", courtId, Store.YES));
		indexDoc.add(new TextField("name", name, Store.YES));
		indexDoc.add(new StringField("publishTime", publishTime, Store.YES));
		indexDoc.add(new TextField("matchType", matchType, Store.YES));
		indexDoc.add(new TextField("matchStartTime", matchStartTime, Store.YES));
		indexDoc.add(new TextField("matchDeadline", matchDeadline, Store.YES));
		indexDoc.add(new TextField("matchIntroduction", matchIntroduction,
				Store.YES));
		return indexDoc;
	}

	public void saveIndex(String indexSavePath,MatchData matchData) {
		IndexWriter writer = null;

		try {
			directory = FSDirectory.open(new File(indexSavePath));// 打开存放索引的路径
			writer = getWriter();

			writer.addDocument(creatTodayIndexDoc(matchData));// 添加进写入流里

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

	public void createIndex() {
		LinkedList<MatchData> matchList = new Jdbc().selectToday();
		
		System.out.println(matchList.size());
		for (int i = 0; i < matchList.size(); i++) {
			saveIndex("/",matchList.get(i));
		}
		
		LinkedList<Court> courtList = new Jdbc().selectCourtToday() ;
		for (int i = 0; i < courtList.size(); i++) {
			saveCourtIndex("/",courtList.get(i));
		}
	}
	
	public void saveCourtIndex(String indexSavePath,Court court) {
		IndexWriter writer = null;

		try {
			directory = FSDirectory.open(new File(indexSavePath));// 打开存放索引的路径
			writer = getWriter();

			writer.addDocument(creatCourtTodayIndexDoc(court));// 添加进写入流里

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

	private Document creatCourtTodayIndexDoc(Court court) {
		Document indexDoc = new Document();
		// ID,NAME,MATCHTYPE,ADDR,TEL,INTRO
		int id = 0;
		String name = null;
		String matchType = null;
		String address = null;
		String tel = null;
		String intro = null;

		id = court.getId() ;
		name = court.getName() ;
		matchType = court.getMatchType() ;
		address = court.getAddress() ;
		tel = court.getTel() ;
		intro = court.getIntro() ;

		indexDoc.add(new IntField("id", id, Store.YES));   //不分词
		indexDoc.add(new TextField("name", name, Store.YES));
		indexDoc.add(new TextField("matchType", matchType, Store.YES));
		indexDoc.add(new TextField("address", address, Store.YES));
		indexDoc.add(new StringField("tel", tel, Store.YES));   //不分词
		indexDoc.add(new TextField("intro", intro, Store.YES));
		return indexDoc;
	}
	
}
