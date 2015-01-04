package org.sousai.search;

public class MatchSearch{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6077212667259852987L;

	private String searchContent = null ;

	
	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void list(){
		System.out.println(this.searchContent);
		//return "success" ;
	}
	public String execute() throws Exception {
		return null;
	}
}