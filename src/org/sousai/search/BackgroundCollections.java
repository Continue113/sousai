package org.sousai.search;

import java.util.LinkedList;

import org.apache.struts2.ServletActionContext;
import org.sousai.tools.JSONUtils;


public class BackgroundCollections{
	 private static final long serialVersionUID = 1L;  
	    //private Map<String,Object> dataMap;  
	    private LinkedList<MatchData> matchesJson;  
	    public String loadJson(){  
	    	matchesJson = new Jdbc().select() ;
	    	JSONUtils.toJson(ServletActionContext.getResponse(), matchesJson);
	        return "success";  
	    }
		public LinkedList<MatchData> getMatchesJson() {
			return matchesJson;
		}
		public void setMatchesJson(LinkedList<MatchData> matchesJson) {
			this.matchesJson = matchesJson;
		}
	    
	    /*public String loadJsonFromMap(){  
	        //dataMap中的数据将会被Struts2转换成JSON字符串，所以这里要先清空其中的数据  
	        dataMap = new HashMap<String, Object>();  
	        dataMap.put("message", "mapJson");  
	        return SUCCESS;  
	    }  
	    public Map<String,Object> getDataMap() {  
	        return dataMap;  
	    }  
	    public void setDataMap(Map<String,Object> dataMap) {  
	        this.dataMap = dataMap;  
	    }  */
	    
	}  