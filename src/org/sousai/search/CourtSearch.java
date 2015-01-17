package org.sousai.search;

import java.io.File;
import java.io.IOException;
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

public class CourtSearch {
	private DirectoryReader ireader = null;
	private Directory directory = null;
	private String content = null;
	private LinkedList<Court> courtList = new LinkedList<Court>();
	private FrontMessage courtsJson = null;
	private Integer currentPage;
	private Integer rows;

	public FrontMessage getCourtsJson() {
		return courtsJson;
	}

	public void setCourtsJson(FrontMessage courtsJson) {
		this.courtsJson = courtsJson;
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

	public LinkedList<Court> indexSearch(Analyzer analyzer, File indexFile,
			String keyword) {
		LinkedList<Court> courtList = new LinkedList<Court>();
		try {
			directory = FSDirectory.open(indexFile);

			// ID,NAME,MATCHTYPE,ADDR,TEL,INTRO
			int id = 0;
			String name = null;
			String matchType = null;
			String address = null;
			String tel = null;
			String intro = null;

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
			// System.out.println(docNum);
			if (docNum > 200)
				docNum = 198;
			Document hitDoc = null;
			for (int i = 0; i < docNum; ++i) {
				hitDoc = isearcher.doc(hits[i].doc); // hits[0]表示文档1的内容
														// hitDoc即文本内容
				// id,courtId,name,publishTime,matchType,matchStartTime,matchDeadline,matchIntroduction
				id = Integer.parseInt(hitDoc.get(multiFields[0]));
				name = hitDoc.get(multiFields[1]);
				matchType = hitDoc.get(multiFields[2]);
				address = hitDoc.get(multiFields[3]);
				tel = hitDoc.get(multiFields[4]);
				intro = hitDoc.get(multiFields[5]);

				// System.out.println(name);

				courtList.add(new Court.Builder().id(id).name(name)
						.matchType(matchType).address(address).tel(tel)
						.intro(intro).build());
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
		return courtList;
	}

	public LinkedList<Court> courtSearch(String searchContent,
			String indexPath) {

		return indexSearch(new IKAnalyzer(true), new File(indexPath),
				searchContent);
	}

	public String courtSearch() {
		if (currentPage == null)
			currentPage = 1;
		if (rows == null)
			rows = 25;
		LinkedList<Court> listAll = courtSearch(content, "/home/lei/data");
		for (int i = (currentPage - 1) * rows; i < ((currentPage - 1) * rows + 25)
				&& i < listAll.size(); i++) {
			courtList.add(listAll.get(i));
		}
		courtsJson = new FrontMessage(courtList, courtList.size());
		JSONUtils.toJson(ServletActionContext.getResponse(), courtsJson);
		return null;
	}
}
