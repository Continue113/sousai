package org.sousai.search;

import org.apache.struts2.ServletActionContext;
import org.sousai.tools.JSONUtils;

public class DeleteCollections {
	private String collectionId = null ;

	public String getCollectionId() {
		return collectionId;
	}

	public void setCollectionId(String collectionId) {
		this.collectionId = collectionId;
	}

	public String deleteCollections(){
		String[] collectionIds = collectionId.split(",") ;
		Jdbc delJdbc = new Jdbc() ;
		//int ids[] = new int[collectionIds.length] ;
		for(int i=0;i<collectionIds.length;++i){
			//ids[i] = Integer.parseInt(collectionIds[i]) ;
			try{
				delJdbc.delete(Integer.parseInt(collectionIds[i]));
				JSONUtils.toJson(ServletActionContext.getResponse(), "success");
			}catch(Exception e){
				JSONUtils.toJson(ServletActionContext.getResponse(), "error");
				System.out.println(e);
			}
		}
		return null ;
	}
	
	public String deleteCollectionsAll(){
		Jdbc delAllJdbc = new Jdbc();
		
		try{
			delAllJdbc.deleteAll();
			JSONUtils.toJson(ServletActionContext.getResponse(), "success");
		}catch(Exception e){
			JSONUtils.toJson(ServletActionContext.getResponse(), "error");
		}
		return null;
	}
}
