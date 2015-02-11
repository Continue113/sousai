package org.sousai.domain;

import java.io.Serializable;

public class HotWord implements Serializable{

	private static final long serialVersionUID = -1963698201922707746L;

	private Integer id;
	private String word;
	private Integer hot;
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the word
	 */
	public String getWord() {
		return word;
	}
	/**
	 * @param word the word to set
	 */
	public void setWord(String word) {
		this.word = word;
	}
	/**
	 * @return the hot
	 */
	public Integer getHot() {
		return hot;
	}
	/**
	 * @param hot the hot to set
	 */
	public void setHot(Integer hot) {
		this.hot = hot;
	}
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public HotWord() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HotWord(Integer id, String word, Integer hot) {
		super();
		this.id = id;
		this.word = word;
		this.hot = hot;
	}
	
	
}
