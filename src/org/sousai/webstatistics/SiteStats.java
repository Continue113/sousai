package org.sousai.webstatistics;

public class SiteStats {
	private int visits ;     //访问量
	private int registrantsNum ;  //注册用户
	private int sousaiMatchPublish ;   //比赛发布(搜赛网)
	private int naturalMatchPublish ;	//比赛发布(自然人)
	private int sousaiSitePublish ;    //场地发布
	private int naturalSitePublish ;	//场地发布
	private int comments ; 				//评论数
	
	public static class Builder{
		private int visits ;     //访问量
		private int registrantsNum ;  //注册用户
		private int sousaiMatchPublish ;   //比赛发布(搜赛网)
		private int naturalMatchPublish ;	//比赛发布(自然人)
		private int sousaiSitePublish ;    //场地发布
		private int naturalSitePublish ;	//场地发布
		private int comments ; 				//评论数
		
		public Builder visits(int visits){
			this.visits = visits ;
			return this ;
		}
		
		public Builder registrantsNum(int registrantsNum){
			this.registrantsNum = registrantsNum ;
			return this ;
		}
		
		public Builder sousaiMatchPublish(int sousaiMatchPublish){
			this.sousaiMatchPublish = sousaiMatchPublish ;
			return this ;
		}
		
		public Builder naturalMatchPublish(int naturalMatchPublish){
			this.naturalMatchPublish = naturalMatchPublish ;
			return this ;
		}
		
		public Builder sousaiSitePublish(int sousaiSitePublish){
			this.sousaiSitePublish = sousaiSitePublish ;
			return this ;
		}
		
		public Builder naturalSitePublish(int naturalSitePublish){
			this.naturalSitePublish = naturalSitePublish ;
			return this ;
		}
		
		public Builder comments(int comments){
			this.comments = comments ;
			return this ;
		}
		
		public SiteStats build(){
			return new SiteStats(this) ;
		}
	}
	
	public SiteStats(Builder builder){
		visits = builder.visits ;
		registrantsNum = builder.registrantsNum ;
		sousaiMatchPublish = builder.sousaiMatchPublish ;
		naturalMatchPublish = builder.naturalMatchPublish ;
		sousaiSitePublish = builder.sousaiSitePublish ;
		naturalSitePublish = builder.naturalSitePublish ;
		comments = builder.comments ;
	}

	public int getVisits() {
		return visits;
	}

	public void setVisits(int visits) {
		this.visits = visits;
	}

	public int getRegistrantsNum() {
		return registrantsNum;
	}

	public void setRegistrantsNum(int registrantsNum) {
		this.registrantsNum = registrantsNum;
	}

	public int getSousaiMatchPublish() {
		return sousaiMatchPublish;
	}

	public void setSousaiMatchPublish(int sousaiMatchPublish) {
		this.sousaiMatchPublish = sousaiMatchPublish;
	}

	public int getNaturalMatchPublish() {
		return naturalMatchPublish;
	}

	public void setNaturalMatchPublish(int naturalMatchPublish) {
		this.naturalMatchPublish = naturalMatchPublish;
	}

	public int getSousaiSitePublish() {
		return sousaiSitePublish;
	}

	public void setSousaiSitePublish(int sousaiSitePublish) {
		this.sousaiSitePublish = sousaiSitePublish;
	}

	public int getNaturalSitePublish() {
		return naturalSitePublish;
	}

	public void setNaturalSitePublish(int naturalSitePublish) {
		this.naturalSitePublish = naturalSitePublish;
	}

	public int getComments() {
		return comments;
	}

	public void setComments(int comments) {
		this.comments = comments;
	}
}
